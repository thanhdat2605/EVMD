using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraBars;
using DevExpress.XtraEditors;
using DevExpress;
using System.Speech;
using System.Speech.Synthesis;

namespace Phan_mem_Tu_dien_ho_tro_mon_Toan_Tieng_Anh_THPT___EVMD
{
    public partial class frmMain : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public frmMain()
        {
            InitializeComponent();
            this.AutoSize = true;
            this.MaximizeBox = false;
        }
        public string word;
        void LoadTuVung2Lsv(List<Data> ldt)
        {
            //using (dbmlDataDataContext db = new dbmlDataDataContext())
            //{
            //    var dsSearch = db.Datas.ToList();
            //}

            lstSearch.Items.Clear();

            foreach (Data dt in ldt)
            {
                lstSearch.Items.Add(dt.Word);
            }
        }

        private void btnExit_ItemClick(object sender, ItemClickEventArgs e)
        {
            DialogResult yes = XtraMessageBox.Show("Bạn có muốn thoát phần mềm???", "Thông báo"
              , MessageBoxButtons.YesNoCancel, MessageBoxIcon.Exclamation);

            if (yes == DialogResult.Yes)
            {
                this.Close();
            }
        }

        private void btnAdmin_ItemClick(object sender, ItemClickEventArgs e)
        {
            this.Visible = false;
            frmLogin frmLog = new frmLogin();
            frmLog.ShowDialog();
            Login lg = new Login();
            Login kt = null;
            kt = lg.checkTrue();
            if (kt != null)
                if (kt.Username != "user")
                {
                    kt.Username = "user";
                    frmQuanLiCSDL frmAdmin = new frmQuanLiCSDL();
                    frmAdmin.ShowDialog();
                }
            //Load lai data sau khi dong form Admin
            using (dbmlDataDataContext db = new dbmlDataDataContext())
            {
                var dsTuVung = db.Datas.ToList();
                LoadTuVung2Lsv(dsTuVung);
            }
            this.Visible = true;
        }

        private void btnVietAnh_ItemClick(object sender, ItemClickEventArgs e)
        {
            this.Visible = false;
            frmMainV_E frmMainV_E = new frmMainV_E();
            frmMainV_E.ShowDialog();
            this.Visible = true;
        }

        private void btnInfo_ItemClick(object sender, ItemClickEventArgs e)
        {
            frmInfo frmInfo = new frmInfo();
            frmInfo.Show();
        }

        private void txtSearch_EditValueChanged(object sender, EventArgs e)
        {
            //using (dbmlDataDataContext db = new dbmlDataDataContext())
            //{
            //    List<Data> wordSearch = new List<Data>();
            //    wordSearch =
            //        db.Datas.Where(D => D.Word.Contains(txtSearch.Text)).ToList();
            //    LoadTuVung2Lsv(wordSearch);
            //}


            ////lstSearch.SelectedIndex = -1;
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            using (dbmlDataDataContext db = new dbmlDataDataContext())
            {
                var dsWord = db.Datas.Where(D => D.Word != null).ToList();
                LoadTuVung2Lsv(dsWord);
            }
            lstSearch.SelectedIndex = -1;
            txtSearch.Focus();
        }
        private void txtSearch_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                //Code tim cac tu lien quan (ke ca sai chinh ta)
                lstSearch.Items.Clear();
                using (dbmlDataDataContext db = new dbmlDataDataContext())
                {
                    List<Data> wordSearch = new List<Data>();
                    //wordSearch =
                    //    db.Datas.Where(D => D.Word.Contains(txtSearch.Text)).ToList();
                    string xauBanDau = txtSearch.Text;
                    char[] mangKiTuTimKiem = new char[256];
                    int length = txtSearch.Text.Length;
                    bool kt = true; //kiem tra so tu de chon TOP trong wordSearch
                    int soLanChay = 0;
                    for (int dem = length; dem >= length / 2 + 1; --dem)
                    {
                        //soLanChay += length - dem + 1;
                        //if (soLanChay > 15) break; //Gioi han so chuoi duoc tao ra tu txtSearch.Text de xet
                        //Tang toc do liet ke de xuat khi nhan Enter
                        //int viTriMax = length - dem;
                        for (int i = 0; i <= length - dem; ++i)
                        {
                            xauBanDau.CopyTo(i, mangKiTuTimKiem, 0, dem);

                            //string xauTimKiem = new string(mangKiTuTimKiem, 0, mangKiTuTimKiem.Count());
                            //code sai

                            string xauTimKiem = new string(mangKiTuTimKiem, 0, dem);

                            List<Data> v = db.Datas.Where(D => D.Word.Contains(xauTimKiem)).ToList();

                            foreach (Data ldt in v)
                            {
                                if (wordSearch.IndexOf(ldt) == -1) //Khong xuat hien 1 tu 2 lan trong list LON NHAT

                                    wordSearch.Add(ldt);
                                //if (wordSearch.Count() > 100) //Chon top 10 tu
                                //    kt = false;
                                //if (kt == false) break; //Kiem tra
                            }
                            //if (kt == false) break;
                        }
                        //if (kt == false) break;
                    }
                    LoadTuVung2Lsv(wordSearch);
                }

                using (dbmlDataDataContext db = new dbmlDataDataContext())
                {
                    var wordTimKiem = db.Datas.Where(D => D.Word == txtSearch.Text).FirstOrDefault();
                    if (wordTimKiem != null)
                    {
                        lblWord.Visible = true;
                        lblMeaning.Visible = true;
                        lblUsage.Visible = true;
                        lblGrade.Visible = true;
                        btnSpeaker.Visible = true;
                        lblWord.Text = wordTimKiem.Word;
                        lblMeaning.Text = wordTimKiem.Meaning;
                        lblUsage.Text = wordTimKiem.Usage;

                        lblWord.Text = wordTimKiem.Word;
                        lblMeaning.Text = "Nghĩa của từ: " + wordTimKiem.Meaning;
                        if (wordTimKiem.Usage != "")
                            lblUsage.Text = "Từ loại: ";
                        lblUsage.Text += wordTimKiem.Usage;
                        if (wordTimKiem.Example != "")
                        {
                            txtExample.Text = "Ví dụ minh họa: ";
                            txtExample.Text += wordTimKiem.Example;
                        }
                        else txtExample.Text = "";
                        lblGrade.Text = "Lớp";
                        if (wordTimKiem.Lop10 == true)
                            lblGrade.Text = lblGrade.Text + " 10 ";
                        if (wordTimKiem.Lop11 == true)
                            lblGrade.Text = lblGrade.Text + " 11 ";
                        if (wordTimKiem.Lop12 == true)
                            lblGrade.Text = lblGrade.Text + " 12 ";

                        word = wordTimKiem.Word;
                    }
                    else
                    {
                        if (lstSearch.SelectedItems.Count > 0)
                        {
                            string lookupWord = lstSearch.SelectedItem.ToString();

                            lblWord.Visible = true;
                            lblMeaning.Visible = true;
                            lblUsage.Visible = true;
                            lblGrade.Visible = true;
                            btnSpeaker.Visible = true;

                            wordTimKiem = db.Datas.Where(D => D.Word == lookupWord).FirstOrDefault();
                            lblWord.Text = wordTimKiem.Word;
                            lblMeaning.Text = "Nghĩa của từ: " + wordTimKiem.Meaning;
                            if (wordTimKiem.Usage != "")
                                lblUsage.Text = "Từ loại: ";
                            lblUsage.Text += wordTimKiem.Usage;
                            if (wordTimKiem.Example != "")
                            {
                                txtExample.Text = "Ví dụ minh họa: ";
                                txtExample.Text += wordTimKiem.Example;
                            }
                            else txtExample.Text = "";
                            lblGrade.Text = "Lớp";
                            if (wordTimKiem.Lop10 == true)
                                lblGrade.Text = lblGrade.Text + " 10 ";
                            if (wordTimKiem.Lop11 == true)
                                lblGrade.Text = lblGrade.Text + " 11 ";
                            if (wordTimKiem.Lop12 == true)
                                lblGrade.Text = lblGrade.Text + " 12 ";

                            word = wordTimKiem.Word;

                        }
                        else XtraMessageBox.Show("Không thể tra từ vựng này!", "Thông báo"
                            , MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
            }
        }

        private void btnLop10_Click(object sender, EventArgs e)
        {
            lblWord.Text = "";
            lblMeaning.Text = "";
            lblUsage.Text = "";
            txtExample.Text = "";
            lblGrade.Text = "Lớp 10";
            btnSpeaker.Visible = false;
            using (dbmlDataDataContext db = new dbmlDataDataContext())
            {
                //var wordLop = db.Datas.Where(D => D.MaGrade.Equals(10)).ToList();
                var wordLop = db.Datas.Where(D => D.Lop10 == true).ToList();
                LoadTuVung2Lsv(wordLop);
            }
            lstSearch.SelectedIndex = -1;
        }
        private void btnLop11_Click(object sender, EventArgs e)
        {
            lblWord.Text = "";
            lblMeaning.Text = "";
            lblUsage.Text = "";
            txtExample.Text = "";
            lblGrade.Text = "Lớp 11";
            btnSpeaker.Visible = false;
            using (dbmlDataDataContext db = new dbmlDataDataContext())
            {
                var wordLop = db.Datas.Where(D => D.Lop11 == true).ToList();
                LoadTuVung2Lsv(wordLop);
            }
            lstSearch.SelectedIndex = -1;
        }
        private void btnLop12_Click(object sender, EventArgs e)
        {
            lblWord.Text = "";
            lblMeaning.Text = "";
            lblUsage.Text = "";
            txtExample.Text = "";
            lblGrade.Text = "Lớp 12";
            btnSpeaker.Visible = false;
            using (dbmlDataDataContext db = new dbmlDataDataContext())
            {
                var wordLop = db.Datas.Where(D => D.Lop12 == true).ToList();
                LoadTuVung2Lsv(wordLop);
            }
            lstSearch.SelectedIndex = -1;
        }
        private void btnHome_Click(object sender, EventArgs e)
        {
            lblWord.Text = "";
            lblMeaning.Text = "";
            lblUsage.Text = "";
            txtExample.Text = "";
            lblGrade.Text = "Dành cho THPT";
            using (dbmlDataDataContext db = new dbmlDataDataContext())
            {
                var dsWord = db.Datas.Where(D => D.Word != null).ToList();
                LoadTuVung2Lsv(dsWord);
            }
        }

        private void lstSearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListBox lst = sender as ListBox;
            if (lstSearch.SelectedItems.Count > 0)
            //if (lstSearch.SelectedItem != null)
            {
                string lookupWord = lstSearch.SelectedItem.ToString();

                using (dbmlDataDataContext db = new dbmlDataDataContext())
                {
                    lblWord.Visible = true;
                    lblMeaning.Visible = true;
                    lblUsage.Visible = true;
                    lblGrade.Visible = true;

                    Data wordTimKiem = db.Datas.Where(D => D.Word == lookupWord).FirstOrDefault();
                    lblWord.Text = wordTimKiem.Word;
                    lblMeaning.Text = wordTimKiem.Meaning;
                    lblUsage.Text = wordTimKiem.Usage;
                    txtExample.Text = wordTimKiem.Example;
                    lblGrade.Text = "Lớp";
                    if (wordTimKiem.Lop10 == true)
                        lblGrade.Text = lblGrade.Text + " 10 ";
                    if (wordTimKiem.Lop11 == true)
                        lblGrade.Text = lblGrade.Text + " 11 ";
                    if (wordTimKiem.Lop12 == true)
                        lblGrade.Text = lblGrade.Text + " 12 ";

                    //string lop = Convert.ToString(wordTimKiem.MaGrade);
                    //lblGrade.Text = "Lớp " + lop;

                    //string str = wordTimKiem.Meaning + '\n' + '\n'
                    //    + wordTimKiem.Usage + '\n' + wordTimKiem.Example;
                }
            }
        }

        private void lstSearch_Click(object sender, EventArgs e)
        {
            ListBox lst = sender as ListBox;
            if (lstSearch.SelectedItems.Count > 0)
            //if (lstSearch.SelectedItem != null)
            {
                string lookupWord = lstSearch.SelectedItem.ToString();
                using (dbmlDataDataContext db = new dbmlDataDataContext())
                {
                    lblWord.Visible = true;
                    lblMeaning.Visible = true;
                    lblUsage.Visible = true;
                    lblGrade.Visible = true;
                    btnSpeaker.Visible = true;

                    Data wordTimKiem = db.Datas.Where(D => D.Word == lookupWord).FirstOrDefault();
                    lblWord.Text = wordTimKiem.Word;
                    lblMeaning.Text = "Nghĩa của từ: " + wordTimKiem.Meaning;
                    if (wordTimKiem.Usage != "")
                        lblUsage.Text = "Từ loại: ";
                    lblUsage.Text += wordTimKiem.Usage;
                    if (wordTimKiem.Example != "")
                    {
                        txtExample.Text = "Ví dụ minh họa: ";
                        txtExample.Text += wordTimKiem.Example;
                    }
                    else txtExample.Text = "";
                    lblGrade.Text = "Lớp";
                    if (wordTimKiem.Lop10 == true)
                        lblGrade.Text = lblGrade.Text + " 10 ";
                    if (wordTimKiem.Lop11 == true)
                        lblGrade.Text = lblGrade.Text + " 11 ";
                    if (wordTimKiem.Lop12 == true)
                        lblGrade.Text = lblGrade.Text + " 12 ";

                    word = wordTimKiem.Word;
                    //string lop = Convert.ToString(wordTimKiem.MaGrade);
                    //lblGrade.Text = "Lớp " + lop;

                    //string str = wordTimKiem.Meaning + '\n' + '\n'
                    //    + wordTimKiem.Usage + '\n' + wordTimKiem.Example;
                }
            }
        }

        private void lstSearch_KeyDown(object sender, KeyEventArgs e)
        {

        }

        SpeechSynthesizer reader = new SpeechSynthesizer();
        private void btnSpeaker_Click(object sender, EventArgs e)
        {
            reader.Dispose();
            reader = new SpeechSynthesizer();
            reader.SpeakAsync(word);
        }


        private void btnCopy_ItemClick(object sender, ItemClickEventArgs e)
        {
            try
            {
                if (lblWord.Text != null)
                {
                    Clipboard.SetText(lblWord.Text);
                }
                else if (txtSearch.Text != null)
                {
                    Clipboard.SetText(txtSearch.Text);
                }
            }
            catch (Exception)
            {
                Clipboard.Clear();
                //throw;
            }
        }

        private void btnPaste_ItemClick(object sender, ItemClickEventArgs e)
        {
            txtSearch.Text = Clipboard.GetText();
        }

        private void btnClear_ItemClick(object sender, ItemClickEventArgs e)
        {
            lblWord.Text = "";
            lblMeaning.Text = "";
            lblUsage.Text = "";
            txtExample.Text = "";
            txtSearch.Text = "";
            lblGrade.Text = "";
            btnSpeaker.Visible = false;
        }

        private void ribbonControl1_Click(object sender, EventArgs e)
        {

        }
    }
}