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
    public partial class UserNametxt : UserControl
    {
        public UserNametxt()
        {
            InitializeComponent();
        }



        string username;


        [Category("Custome Props")]

        public string User_Name 
        {

            get { return textBox1.Text; }
            set { username = value; textBox1.Text = value; }
        
        } 


        private void label1_Click(object sender, EventArgs e)
        {
            this.label1.Hide();
            textBox1.Focus();
        }

        private void textBox1_MouseClick(object sender, MouseEventArgs e)
        {
            this.label1.Hide();
            textBox1.Focus();
        }

        private void textBox1_Leave(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(textBox1.Text) || string.IsNullOrWhiteSpace(textBox1.Text)) {

                this.label1.Show();
            
            }
        }
    }
}
