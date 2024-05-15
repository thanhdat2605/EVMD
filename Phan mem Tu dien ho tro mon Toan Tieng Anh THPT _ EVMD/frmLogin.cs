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
using DevExpress.XtraBars;

namespace Phan_mem_Tu_dien_ho_tro_mon_Toan_Tieng_Anh_THPT___EVMD
{
    public partial class frmLogin : DevExpress.XtraEditors.XtraForm
    {
        public frmLogin()
        {
            InitializeComponent();
            txtUsername.Focus();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            //Trim để xóa khoảng trong ở đầu và cuối chuỗi nếu user có nhập nhầm
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            //string username = txtUsername.Text.Trim();
            using (dbmlLoginDataContext db = new dbmlLoginDataContext())
            {
                //var user = db.Logins.ToList();
                var user = db.Logins.Where(u => u.Username.Equals(username)).FirstOrDefault();
                if (user == null)
                    XtraMessageBox.Show("Đăng nhập không thành công!", "Thông báo"
                        , MessageBoxButtons.OK, MessageBoxIcon.Warning);
                else
                {
                    if (username == user.Username && password == user.Password
                        && username != "user" && password != "user")
                    {

                        XtraMessageBox.Show("Đăng nhập thành công!", "Thông báo"
                          , MessageBoxButtons.OK, MessageBoxIcon.Information);

                        Login lg = new Login();
                        lg.setStatusAdmin(user);

                        this.Close();
                    }
                    else
                        XtraMessageBox.Show("Đăng nhập không thành công!", "Thông báo"
                         , MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
                txtUsername.Focus();
                txtUsername.Text = null;
                txtPassword.Text = null;
            }
        }
        private void txtUsername_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnLogin_Click(sender, e);
            }
        }

        private void txtPassword_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnLogin_Click(sender, e);
            }
        }

        private void frmLogin_Load(object sender, EventArgs e)
        {
            txtUsername.Focus();
            txtPassword.Properties.PasswordChar = '•';
        }

        private void btnLogin_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnLogin_Click(sender, e);
            }
        }

        private void txtPassword_KeyDown_1(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnLogin_Click(sender, e);
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult yes = XtraMessageBox.Show("Bạn có muốn đóng cửa sổ giao diện???"
                , "Thông báo", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Exclamation);
            if (yes == DialogResult.Yes)
            {
                this.Close();
            }
        }
    }
}