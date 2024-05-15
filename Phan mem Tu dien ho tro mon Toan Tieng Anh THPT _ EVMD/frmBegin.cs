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
    public partial class frmBegin : DevExpress.XtraEditors.XtraForm
    {
        public frmBegin()
        {
            InitializeComponent();
            this.MaximizeBox = false;
            this.AutoSize = true;
        }

        private void btnStart_Click(object sender, EventArgs e)
        {
            string username = "user";
            string password = "user";
            using (dbmlLoginDataContext db = new dbmlLoginDataContext())
            {
                //var user = db.Logins.ToList();
                var user = db.Logins.Where(u => u.Username.Equals(username)).FirstOrDefault();
                if (username == user.Username && password == user.Password)
                {
                    Login lg = new Login();
                    lg.setStatusUser(user);

                    this.Close();
                }
            }
        }
    }
}