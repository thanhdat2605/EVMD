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

namespace Phan_mem_Tu_dien_ho_tro_mon_Toan_Tieng_Anh_THPT___EVMD
{
    public partial class frmChangePass : DevExpress.XtraEditors.XtraForm
    {
        public frmChangePass()
        {
            InitializeComponent();
            this.AutoSize = true;
            this.MaximizeBox = false;
        }

        private void btnChange_Click(object sender, EventArgs e)
        {
            bool kt = true;
            if (txtNewPass.Text != txtNewPassConfirmed.Text)
            {
                kt = false;
                XtraMessageBox.Show("Mật khẩu mới không trùng khớp!!!", "Thông báo",
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            if (kt == true)
            {
                using (dbmlLoginDataContext db = new dbmlLoginDataContext())
                {
                    var user = db.Logins.Where(u => u.Username.Equals(txtUsername.Text))
                        .FirstOrDefault();
                    if (user == null)
                        XtraMessageBox.Show("Tên tài khoản không trùng khớp!!!", "Thông báo"
                            , MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    else
                    {
                        if (txtUsername.Text == user.Username && txtOldPass.Text == user.Password
                            && txtUsername.Text != "user" && txtOldPass.Text != "user")
                        {
                            user.Password = txtNewPass.Text;
                            XtraMessageBox.Show("Đổi mật khẩu thành công!", "Thông báo"
                              , MessageBoxButtons.OK, MessageBoxIcon.Information);

                            //Login lg = new Login();
                            //lg.setStatusAdmin(user);

                            //this.Close();
                        }
                        else
                            XtraMessageBox.Show("Tên tài khoản không trùng khớp!!!", "Thông báo"
                             , MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                }
            }
            txtUsername.Focus();
            txtUsername.Text = null;
            txtOldPass.Text = null;
            txtNewPass.Text = null;
            txtNewPassConfirmed.Text = null;
        }

        private void frmChangePass_Load(object sender, EventArgs e)
        {
            txtUsername.Focus();
            txtOldPass.Properties.PasswordChar = '•';
            txtNewPass.Properties.PasswordChar = '•';
            txtNewPassConfirmed.Properties.PasswordChar = '•';
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

        private void txtUsername_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnChange_Click(sender, e);
            }
        }

        private void txtOldPass_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnChange_Click(sender, e);
            }
        }

        private void txtNewPass_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnChange_Click(sender, e);
            }
        }

        private void txtNewPassConfirmed_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnChange_Click(sender, e);
            }
        }
    }
}