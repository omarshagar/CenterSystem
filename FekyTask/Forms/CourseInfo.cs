using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FekyTask.Forms
{
    public partial class CourseInfo : Form
    {
        CrystalReport1 CR;
        public CourseInfo()
        {
            InitializeComponent();
        }

        private void CourseInfo_Load(object sender, EventArgs e)
        {
            CR = new CrystalReport1();

        }

        
        private void EnterBTN_Click(object sender, EventArgs e)
        {
            crystalReportViewer1.ReportSource = CR;
        }
    }
}
