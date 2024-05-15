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
using System.Speech;
using System.Speech.Synthesis;
using System.Threading;

namespace Phan_mem_Tu_dien_ho_tro_mon_Toan_Tieng_Anh_THPT___EVMD
{
    public partial class frmMainV_E : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public frmMainV_E()
        {
            InitializeComponent();
        }

        void LoadTuVung2Lsv(List<Data> ldt)
        {
            //using (dbmlDataDataContext db = new dbmlDataDataContext())
            //{
            //    var dsSearch = db.Datas.ToList();
            //}

            lstSearch.Items.Clear();

            foreach (Data dt in ldt)
            {
                lstSearch.Items.Add(dt.Meaning);
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
                    //kt.Username = "user";
                    frmQuanLiCSDL frmAdmin = new frmQuanLiCSDL();
                    frmAdmin.ShowDialog();
                }
            //Load lai data sau khi dong form Admin
            //using (dbmlDataDataContext db = new dbmlDataDataContext())
            //{
            //    var dsTuVung = db.Datas.ToList();
            //    LoadTuVung2Lsv(dsTuVung);
            //}
            this.Visible = true;
        }

        private void btnAnhViet_ItemClick(object sender, ItemClickEventArgs e)
        {
            this.Close();
        }

        private void btnInfo_ItemClick(object sender, ItemClickEventArgs e)
        {
            frmInfo frmInfo = new frmInfo();
            frmInfo.Show();
        }
        private void txtSearch_EditValueChanged(object sender, EventArgs e)
        {
            // = "Trạng thái: Đang chạy";
            using (dbmlDataDataContext db = new dbmlDataDataContext())
            {
                var wordSearch =
                    db.Datas.Where(D => D.Meaning.Contains(txtSearch.Text)).ToList();
                LoadTuVung2Lsv(wordSearch);
            }
            //lstSearch.SelectedIndex = -1;


        }

        private void txtSearch_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                using (dbmlDataDataContext db = new dbmlDataDataContext())
                {
                    Data wordTimKiem = db.Datas.Where(D => D.Meaning == txtSearch.Text).FirstOrDefault();
                    if (wordTimKiem != null)
                    {
                        lblWord.Visible = true;
                        lblMeaning.Visible = true;
                        lblUsage.Visible = true;
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
                        var wordSearch =
                            db.Datas.Where(D => D.Meaning.Contains(txtSearch.Text)).ToList();
                        LoadTuVung2Lsv(wordSearch);

                    }
                    else btnSearch_Click(sender, e);
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

        private void lstSearch_Click(object sender, EventArgs e)
        {
            ListBox lst = sender as ListBox;
            if (lstSearch.SelectedItems.Count > 0)
            //if (lstSearch.SelectedItem != null)
            {
                string lookupMeaning = lstSearch.SelectedItem.ToString();
                using (dbmlDataDataContext db = new dbmlDataDataContext())
                {
                    lblWord.Visible = true;
                    lblMeaning.Visible = true;
                    lblUsage.Visible = true;
                    lblGrade.Visible = true;
                    btnSpeaker.Visible = true;

                    Data meaningTimKiem = db.Datas.Where(D => D.Meaning == lookupMeaning).FirstOrDefault();
                    lblWord.Text = meaningTimKiem.Word;
                    lblMeaning.Text = "Nghĩa của từ: " + meaningTimKiem.Meaning;
                    if (meaningTimKiem.Usage != "")
                        lblUsage.Text = "Từ loại: ";
                    lblUsage.Text += meaningTimKiem.Usage;
                    if (meaningTimKiem.Example != "")
                    {
                        txtExample.Text = "Ví dụ minh họa: ";
                        txtExample.Text += meaningTimKiem.Example;
                    }
                    else txtExample.Text = "";
                    lblGrade.Text = "Lớp";
                    if (meaningTimKiem.Lop10 == true)
                        lblGrade.Text = lblGrade.Text + " 10 ";
                    if (meaningTimKiem.Lop11 == true)
                        lblGrade.Text = lblGrade.Text + " 11 ";
                    if (meaningTimKiem.Lop12 == true)
                        lblGrade.Text = lblGrade.Text + " 12 ";

                    word = meaningTimKiem.Word;
                    //string lop = Convert.ToString(wordTimKiem.MaGrade);
                    //lblGrade.Text = "Lớp " + lop;

                    //string str = wordTimKiem.Meaning + '\n' + '\n'
                    //    + wordTimKiem.Usage + '\n' + wordTimKiem.Example;
                }
            }
        }

        private void frmMainV_E_Load(object sender, EventArgs e)
        {
            //using (dbmlDataDataContext db = new dbmlDataDataContext())
            //{
            //    var dsWord = db.Datas.Where(D => D.Word != null).ToList();
            //    LoadTuVung2Lsv(dsWord);
            //}
            txtSearch.Focus();
            //lstSearch.SelectedIndex = 0;
        }

        private void lstSearch_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                if (lstSearch.SelectedItems.Count > 0)
                {
                    string lookupWord = lstSearch.SelectedItem.ToString();
                    using (dbmlDataDataContext db = new dbmlDataDataContext())
                    {
                        lblWord.Visible = true;
                        lblMeaning.Visible = true;
                        lblUsage.Visible = true;
                        lblGrade.Visible = true;
                        btnSpeaker.Visible = true;

                        Data meaningTimKiem = db.Datas.Where(D => D.Meaning == lookupWord).FirstOrDefault();
                        lblWord.Text = meaningTimKiem.Word;
                        lblMeaning.Text = "Nghĩa của từ: " + meaningTimKiem.Meaning;
                        if (meaningTimKiem.Usage != "")
                            lblUsage.Text = "Từ loại: ";
                        lblUsage.Text += meaningTimKiem.Usage;
                        if (meaningTimKiem.Example != "")
                        {
                            txtExample.Text = "Ví dụ minh họa: ";
                            txtExample.Text += meaningTimKiem.Example;
                        }
                        else txtExample.Text = "";
                        lblGrade.Text = "Lớp";
                        if (meaningTimKiem.Lop10 == true)
                            lblGrade.Text = lblGrade.Text + " 10 ";
                        if (meaningTimKiem.Lop11 == true)
                            lblGrade.Text = lblGrade.Text + " 11 ";
                        if (meaningTimKiem.Lop12 == true)
                            lblGrade.Text = lblGrade.Text + " 12 ";

                        word = meaningTimKiem.Word;
                    }
                }
            }
        }


        SpeechSynthesizer reader = new SpeechSynthesizer();
        public string word;
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
            lstSearch.Items.Clear();
        }

        private void btnShow_Click(object sender, EventArgs e)
        {
            //pictureBoxLoading.Location = new Point(1000, 500);
            //pictureBoxLoading.Visible = true;

            using (dbmlDataDataContext db = new dbmlDataDataContext())
            {
                var dsWord = db.Datas.ToList();
                LoadTuVung2Lsv(dsWord);
            }

            //pictureBoxLoading.Visible = true;

            //using (frmWait frm = new frmWait(LoadData))
            //{
            //    frm.StartPosition = FormStartPosition.CenterScreen;
            //    frm.ShowDialog(this);
            //}
        }

        void LoadData()
        {
            using (dbmlDataDataContext db = new dbmlDataDataContext())
            {
                var dsWord = db.Datas.Where(D => D.Word != null).ToList();
                LoadTuVung2Lsv(dsWord);
            }

            //for (int i = 0; i <= 500; ++i)
            //    Thread.Sleep(10);

        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            using (dbmlDataDataContext db = new dbmlDataDataContext())
            {
                var wordSearch =
                    db.Datas.Where(D => D.Meaning.Contains(txtSearch.Text)).ToList();
                LoadTuVung2Lsv(wordSearch);
                lstSearch_SelectedIndexChanged(sender, e);
            }
        }

        private void lstSearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (lstSearch.SelectedItems.Count > 0)
            {
                string lookupMeaning = lstSearch.SelectedItem.ToString();
                using (dbmlDataDataContext db = new dbmlDataDataContext())
                {
                    lblWord.Visible = true;
                    lblMeaning.Visible = true;
                    lblUsage.Visible = true;
                    lblGrade.Visible = true;
                    btnSpeaker.Visible = true;

                    Data meaningTimKiem = db.Datas.Where(D => D.Meaning == lookupMeaning).FirstOrDefault();
                    lblWord.Text = meaningTimKiem.Word;
                    lblMeaning.Text = "Nghĩa của từ: " + meaningTimKiem.Meaning;
                    if (meaningTimKiem.Usage != "")
                        lblUsage.Text = "Từ loại: ";
                    lblUsage.Text += meaningTimKiem.Usage;
                    if (meaningTimKiem.Example != "")
                        txtExample.Text = "Ví dụ minh họa: ";
                    txtExample.Text += meaningTimKiem.Example;
                    lblGrade.Text = "Lớp";
                    if (meaningTimKiem.Lop10 == true)
                        lblGrade.Text = lblGrade.Text + " 10 ";
                    if (meaningTimKiem.Lop11 == true)
                        lblGrade.Text = lblGrade.Text + " 11 ";
                    if (meaningTimKiem.Lop12 == true)
                        lblGrade.Text = lblGrade.Text + " 12 ";

                    word = meaningTimKiem.Word;
                }
            }
        }
    }
}