using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Threading;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace Phan_mem_Tu_dien_ho_tro_mon_Toan_Tieng_Anh_THPT___EVMD
{
    public partial class frmWait : DevExpress.XtraEditors.XtraForm
    {
        public Action Worker { get; set; }

        public frmWait(Action worker)
        {
            InitializeComponent();
            if (worker == null)
                throw new ArgumentNullException();
            Worker = worker;
            
        }

        protected override void OnActivated(EventArgs e)
        {
            base.OnActivated(e);
            Task.Factory.StartNew(Worker).ContinueWith(t => { this.Close(); }, TaskScheduler.FromCurrentSynchronizationContext());
        }
       
    }
}