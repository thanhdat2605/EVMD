namespace Phan_mem_Tu_dien_ho_tro_mon_Toan_Tieng_Anh_THPT___EVMD
{
    partial class frmImport
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.txtFilename = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.btnBrowse = new DevExpress.XtraEditors.SimpleButton();
            this.btnImport = new DevExpress.XtraEditors.SimpleButton();
            this.eVMDDataSet = new Phan_mem_Tu_dien_ho_tro_mon_Toan_Tieng_Anh_THPT___EVMD.EVMDDataSet();
            this.eVMDDataSetBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.dataBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.dataTableAdapter = new Phan_mem_Tu_dien_ho_tro_mon_Toan_Tieng_Anh_THPT___EVMD.EVMDDataSetTableAdapters.DataTableAdapter();
            this.dataBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.dgvVocab = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.bandedGridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.bandedGridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.bandedGridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.bandedGridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.bandedGridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.bandedGridColumn6 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.bandedGridColumn7 = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.txtFilename.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.eVMDDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.eVMDDataSetBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataBindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvVocab)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // txtFilename
            // 
            this.txtFilename.Location = new System.Drawing.Point(305, 515);
            this.txtFilename.Name = "txtFilename";
            this.txtFilename.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtFilename.Properties.Appearance.Options.UseFont = true;
            this.txtFilename.Size = new System.Drawing.Size(513, 34);
            this.txtFilename.TabIndex = 0;
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Tahoma", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Location = new System.Drawing.Point(165, 521);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(74, 28);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "Tên file";
            // 
            // btnBrowse
            // 
            this.btnBrowse.Appearance.Font = new System.Drawing.Font("Tahoma", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnBrowse.Appearance.Options.UseFont = true;
            this.btnBrowse.Location = new System.Drawing.Point(862, 512);
            this.btnBrowse.Name = "btnBrowse";
            this.btnBrowse.Size = new System.Drawing.Size(66, 37);
            this.btnBrowse.TabIndex = 2;
            this.btnBrowse.Text = "...";
            this.btnBrowse.Click += new System.EventHandler(this.btnBrowse_Click);
            // 
            // btnImport
            // 
            this.btnImport.Appearance.Font = new System.Drawing.Font("Tahoma", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnImport.Appearance.Options.UseFont = true;
            this.btnImport.Location = new System.Drawing.Point(305, 565);
            this.btnImport.Name = "btnImport";
            this.btnImport.Size = new System.Drawing.Size(226, 65);
            this.btnImport.TabIndex = 3;
            this.btnImport.Text = "Nhập dữ liệu";
            this.btnImport.Click += new System.EventHandler(this.btnImport_Click);
            // 
            // eVMDDataSet
            // 
            this.eVMDDataSet.DataSetName = "EVMDDataSet";
            this.eVMDDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // eVMDDataSetBindingSource
            // 
            this.eVMDDataSetBindingSource.DataSource = this.eVMDDataSet;
            this.eVMDDataSetBindingSource.Position = 0;
            // 
            // dataBindingSource
            // 
            this.dataBindingSource.DataMember = "Data";
            this.dataBindingSource.DataSource = this.eVMDDataSetBindingSource;
            // 
            // dataTableAdapter
            // 
            this.dataTableAdapter.ClearBeforeFill = true;
            // 
            // dataBindingSource1
            // 
            this.dataBindingSource1.DataMember = "Data";
            this.dataBindingSource1.DataSource = this.eVMDDataSetBindingSource;
            // 
            // dgvVocab
            // 
            this.dgvVocab.DataSource = typeof(Phan_mem_Tu_dien_ho_tro_mon_Toan_Tieng_Anh_THPT___EVMD.Data);
            this.dgvVocab.EmbeddedNavigator.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.dgvVocab.Location = new System.Drawing.Point(12, 11);
            this.dgvVocab.MainView = this.gridView1;
            this.dgvVocab.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.dgvVocab.Name = "dgvVocab";
            this.dgvVocab.Size = new System.Drawing.Size(1334, 466);
            this.dgvVocab.TabIndex = 12;
            this.dgvVocab.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.bandedGridColumn1,
            this.bandedGridColumn2,
            this.bandedGridColumn3,
            this.bandedGridColumn4,
            this.bandedGridColumn5,
            this.bandedGridColumn6,
            this.bandedGridColumn7});
            this.gridView1.GridControl = this.dgvVocab;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsBehavior.ReadOnly = true;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // bandedGridColumn1
            // 
            this.bandedGridColumn1.Caption = "Từ vựng";
            this.bandedGridColumn1.FieldName = "Word";
            this.bandedGridColumn1.Fixed = DevExpress.XtraGrid.Columns.FixedStyle.Left;
            this.bandedGridColumn1.MinWidth = 34;
            this.bandedGridColumn1.Name = "bandedGridColumn1";
            this.bandedGridColumn1.OptionsColumn.ReadOnly = true;
            this.bandedGridColumn1.Visible = true;
            this.bandedGridColumn1.VisibleIndex = 0;
            this.bandedGridColumn1.Width = 189;
            // 
            // bandedGridColumn2
            // 
            this.bandedGridColumn2.Caption = "Nghĩa của từ";
            this.bandedGridColumn2.FieldName = "Meaning";
            this.bandedGridColumn2.MinWidth = 34;
            this.bandedGridColumn2.Name = "bandedGridColumn2";
            this.bandedGridColumn2.OptionsColumn.ReadOnly = true;
            this.bandedGridColumn2.Visible = true;
            this.bandedGridColumn2.VisibleIndex = 1;
            this.bandedGridColumn2.Width = 114;
            // 
            // bandedGridColumn3
            // 
            this.bandedGridColumn3.Caption = "Từ loại";
            this.bandedGridColumn3.FieldName = "Usage";
            this.bandedGridColumn3.MinWidth = 34;
            this.bandedGridColumn3.Name = "bandedGridColumn3";
            this.bandedGridColumn3.OptionsColumn.ReadOnly = true;
            this.bandedGridColumn3.Visible = true;
            this.bandedGridColumn3.VisibleIndex = 2;
            this.bandedGridColumn3.Width = 122;
            // 
            // bandedGridColumn4
            // 
            this.bandedGridColumn4.Caption = "Ví dụ minh họa";
            this.bandedGridColumn4.FieldName = "Example";
            this.bandedGridColumn4.MinWidth = 34;
            this.bandedGridColumn4.Name = "bandedGridColumn4";
            this.bandedGridColumn4.OptionsColumn.ReadOnly = true;
            this.bandedGridColumn4.Visible = true;
            this.bandedGridColumn4.VisibleIndex = 3;
            this.bandedGridColumn4.Width = 140;
            // 
            // bandedGridColumn5
            // 
            this.bandedGridColumn5.Caption = "Lớp 10";
            this.bandedGridColumn5.FieldName = "Lop10";
            this.bandedGridColumn5.MinWidth = 34;
            this.bandedGridColumn5.Name = "bandedGridColumn5";
            this.bandedGridColumn5.OptionsColumn.ReadOnly = true;
            this.bandedGridColumn5.Visible = true;
            this.bandedGridColumn5.VisibleIndex = 4;
            this.bandedGridColumn5.Width = 140;
            // 
            // bandedGridColumn6
            // 
            this.bandedGridColumn6.Caption = "Lớp 11";
            this.bandedGridColumn6.FieldName = "Lop11";
            this.bandedGridColumn6.MinWidth = 34;
            this.bandedGridColumn6.Name = "bandedGridColumn6";
            this.bandedGridColumn6.OptionsColumn.ReadOnly = true;
            this.bandedGridColumn6.Visible = true;
            this.bandedGridColumn6.VisibleIndex = 5;
            this.bandedGridColumn6.Width = 140;
            // 
            // bandedGridColumn7
            // 
            this.bandedGridColumn7.Caption = "Lớp 12";
            this.bandedGridColumn7.FieldName = "Lop12";
            this.bandedGridColumn7.MinWidth = 34;
            this.bandedGridColumn7.Name = "bandedGridColumn7";
            this.bandedGridColumn7.OptionsColumn.ReadOnly = true;
            this.bandedGridColumn7.Visible = true;
            this.bandedGridColumn7.VisibleIndex = 6;
            this.bandedGridColumn7.Width = 155;
            // 
            // frmImport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1358, 642);
            this.Controls.Add(this.dgvVocab);
            this.Controls.Add(this.btnImport);
            this.Controls.Add(this.btnBrowse);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.txtFilename);
            this.Name = "frmImport";
            this.Text = "Nhập dữ liệu từ file Excel";
            this.Load += new System.EventHandler(this.frmImport_Load);
            ((System.ComponentModel.ISupportInitialize)(this.txtFilename.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.eVMDDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.eVMDDataSetBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataBindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvVocab)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit txtFilename;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.SimpleButton btnBrowse;
        private DevExpress.XtraEditors.SimpleButton btnImport;
        private System.Windows.Forms.BindingSource eVMDDataSetBindingSource;
        private EVMDDataSet eVMDDataSet;
        private System.Windows.Forms.BindingSource dataBindingSource;
        private EVMDDataSetTableAdapters.DataTableAdapter dataTableAdapter;
        private System.Windows.Forms.BindingSource dataBindingSource1;
        private DevExpress.XtraGrid.GridControl dgvVocab;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn bandedGridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn bandedGridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn bandedGridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn bandedGridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn bandedGridColumn5;
        private DevExpress.XtraGrid.Columns.GridColumn bandedGridColumn6;
        private DevExpress.XtraGrid.Columns.GridColumn bandedGridColumn7;
    }
}