using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phan_mem_Tu_dien_ho_tro_mon_Toan_Tieng_Anh_THPT___EVMD
{
    partial class Login
    {
        public Login(string username, string password, int? permission)
        {
            Username = username;
            Password = password;
            Permission = permission;
        }

        public static Login status = null;

        public void setStatusAdmin(Login Admin)
        {
            status = Admin;
        }

        public void setStatusUser(Login User)
        {
            status = User;
        }

        public Login checkTrue()
        {
            return status;
        }

        public Login TimUser(string username, string password)
        {
            return null;
        }
    }
}
