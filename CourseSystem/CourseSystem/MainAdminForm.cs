using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;

namespace CourseSystem
{
    public partial class MainAdminForm : Form
    {

        public MainAdminForm()
        {
            InitializeComponent();
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            ManageInstructorForm mi = new ManageInstructorForm();
            mi.Show();
        }

        private void MainAdminForm_Load(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            ManageStudentForm ms = new ManageStudentForm();
            ms.Show();
        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {
            ManageHallsForm mh = new ManageHallsForm();
            mh.Show();
        }
    }
}
