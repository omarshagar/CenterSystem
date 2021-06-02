using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CourseSystem
{
    public partial class UserControl1 : UserControl
    {
        public UserControl1()
        {
            InitializeComponent();
        }

        #region MyRegion
        private string _title;
        private int _cost;

        [Category("Custom Props")]
        public string Title
        {
            get { return _title; }
            set { _title = value; label1.Text = Title; }
        }


        [Category("Custom Props")]
        public int Cost
        {
            get { return _cost; }
            set { _cost = value; label3.Text = Cost.ToString(); }
        }
        #endregion
    }
}
