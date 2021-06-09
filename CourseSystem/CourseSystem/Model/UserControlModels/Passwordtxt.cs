using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CourseSystem.Model.UserControlModels
{
    public partial class Passwordtxt : UserControl
    {
        public Passwordtxt()
        {
            InitializeComponent();
        }








        string pass;


        [Category("Custome Props")]

        public string Password
        {

            get { return this.txtpassword.Text; }
            set { pass = value; txtpassword.Text = value; }

        } 








        bool isclicked = false;
        private void button1_Click(object sender, EventArgs e)
        {
            if (!isclicked) { txtpassword.UseSystemPasswordChar = false; isclicked = true; button1.Image = Properties.Resources.visibility25; }
            else { txtpassword.UseSystemPasswordChar = true; isclicked = false; button1.Image = Properties.Resources.hide25; }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
           
        }

        private void label1_Click(object sender, EventArgs e)
        {
            lbl1.Hide();
            txtpassword.Focus();
        }

        private void txtpassword_MouseClick(object sender, MouseEventArgs e)
        {
            lbl1.Hide();
            txtpassword.Focus();
        }

        private void txtpassword_Leave(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtpassword.Text) || string.IsNullOrEmpty(txtpassword.Text)) { lbl1.Show(); }
        }

    }
}
