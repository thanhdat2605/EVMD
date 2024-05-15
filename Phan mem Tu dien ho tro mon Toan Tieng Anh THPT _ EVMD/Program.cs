using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using DevExpress.UserSkins;
using DevExpress.Skins;

namespace Phan_mem_Tu_dien_ho_tro_mon_Toan_Tieng_Anh_THPT___EVMD
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            BonusSkins.Register();
            Application.Run(new frmBegin());

            Login lg = new Login();
            Login kt = null;
            kt = lg.checkTrue();
            if (kt != null)
                if (kt.Username == "user")
                    Application.Run(new frmMain());
                //else Application.Run(new frmQuanLiCSDL());
        }
    }
}
