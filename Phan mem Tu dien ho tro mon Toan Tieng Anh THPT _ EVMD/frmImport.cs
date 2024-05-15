using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.IO;
using ExcelDataReader;
using Z.Dapper.Plus;
using System.Data.SqlClient;

namespace Phan_mem_Tu_dien_ho_tro_mon_Toan_Tieng_Anh_THPT___EVMD
{
    public partial class frmImport : DevExpress.XtraEditors.XtraForm
    {
        public frmImport()
        {
            InitializeComponent();
        }

        DataTableCollection tableCollection;
        OpenFileDialog ope = new OpenFileDialog();
        public string fileName;
        private void btnBrowse_Click(object sender, EventArgs e)
        {
            try
            {
                using (OpenFileDialog openFileDialog = new OpenFileDialog()
                { Filter = "Excel Workbook|*.xlsx|Excel 97 - 2003 Workbook|*.xls" })
                {
                    if (openFileDialog.ShowDialog() == DialogResult.OK)
                    {
                        txtFilename.Text = openFileDialog.FileName;
                        fileName = txtFilename.Text;
                        using (var stream = File.Open(openFileDialog.FileName, 
                            FileMode.Open, FileAccess.Read)) //Bat loi dang mo file
                        {
                            using (IExcelDataReader reader = ExcelReaderFactory.CreateReader(stream))
                            {
                                DataSet result = reader.AsDataSet(new ExcelDataSetConfiguration()
                                {
                                    ConfigureDataTable = (_) => new ExcelDataTableConfiguration()
                                    { UseHeaderRow = true }
                                });
                                tableCollection = result.Tables;
                            };
                        }
                    }
                    DataTable dt = tableCollection[0];
                    dgvVocab.DataSource = dt;
                }
            }
            catch (Exception)
            {
                try
                {
                    using (var stream = File.Open(fileName, FileMode.Open, FileAccess.Read))
                    {

                    }
                }
                catch (Exception)
                {
                    XtraMessageBox.Show("File đang được mở. Xin vui lòng đóng để tiếp tục!!!"
                        , "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                XtraMessageBox.Show("Lỗi nhận file!!!"
                        , "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnImport_Click(object sender, EventArgs e)
        {
            try
            {
                FileStream stream = new FileStream(fileName, FileMode.Open, FileAccess.Read); //Bat loi duong dan rong
                IExcelDataReader excelReader = ExcelReaderFactory.CreateOpenXmlReader(stream);
                DataSet result = excelReader.AsDataSet();

                using (dbmlDataDataContext conn = new dbmlDataDataContext())
                {
                    foreach (DataTable table in result.Tables)
                    {
                        foreach (DataRow dr in table.Rows)
                        {
                            Data dt = new Data();
                            dt.Word = dr[0].ToString().Trim();
                            dt.Meaning = dr[1].ToString().Trim();
                            dt.Usage = dr[2].ToString().Trim();
                            dt.Example = dr[3].ToString().Trim();

                            string str = dr[4].ToString();
                            str = str.Trim(); str = str.ToUpper();
                            if (str == "TRUE") dt.Lop10 = true;
                            else dt.Lop10 = false;

                            str = dr[5].ToString();
                            str = str.Trim(); str = str.ToUpper();
                            if (str == "TRUE") dt.Lop11 = true;
                            else dt.Lop11 = false;

                            str = dr[6].ToString();
                            str = str.Trim(); str = str.ToUpper();
                            if (str == "TRUE") dt.Lop12 = true;
                            else dt.Lop12 = false;

                            var kt = conn.Datas.Where(D => D.Word == dt.Word).FirstOrDefault();
                            if ((dt.Word != "")
                                && ((dt.Lop10 == true) ||
                                    (dt.Lop11 == true) ||
                                    (dt.Lop12 == true))
                                && (dt.Meaning != ""))
                            {
                                if (kt == null)
                                {
                                    conn.Datas.InsertOnSubmit(dt);
                                    conn.SubmitChanges();
                                }
                                else
                                {
                                    DialogResult k =
                                        XtraMessageBox.Show("Phát hiện đã có từ " + dt.Word + " trong từ điển." +
                                        "Bạn có muốn thay đổi dữ liệu của từ " + dt.Word + " không?",
                                        "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                                    if (k == DialogResult.Yes)
                                        conn.SubmitChanges();
                                }
                            }

                        }
                    }
                    conn.SubmitChanges();
                    excelReader.Close();
                    stream.Close();
                    XtraMessageBox.Show("Nhập file thành công!!!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception)
            {
                try
                {
                    FileStream stream = new FileStream(fileName, FileMode.Open, FileAccess.Read);
                    //Bat loi duong dan rong

                }
                catch (Exception)
                {
                    XtraMessageBox.Show("Chưa chọn đường dẫn file excel cần nhập!!!"
                        , "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                XtraMessageBox.Show("Nhập file không thành công!!!"
                        , "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }



            //try
            //{

            //}
            //catch (Exception)
            //{
            //    XtraMessageBox.Show("Nhập file không thành công!!!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //}

            //DapperPlusManager.Entity<Data>().Table("Data");
            //List<Data> data = dataBindingSource.DataSource as List<Data>;
            //if (data != null)
            //{
            //    string connectionString;
            //    using (IDbConnection de = )
            //    {
            //        de.BulkInsert(data);
            //    }
            //    using (dbmlDataDataContext db = new dbmlDataDataContext())
            //    {
            //        db.BulkInsert(data);
            //    }
            //}

        }

        private void frmImport_Load(object sender, EventArgs e)
        {

        }
    }
}
