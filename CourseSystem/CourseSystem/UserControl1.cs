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
        
        public void HideButton()
        {
            button1.Visible = false;
        }

        #region properties
        private Color _iconback;
        private string _doctor;
        private string _course;
        private Image _icon;
        private string _instructor_id;


        [Category("Custom Props")]
        public string Title
        {
            get { return _doctor; }
            set { _doctor = value; ibltitle.Text = value; }
      
        
        }

        [Category("Custom Props")]
        public Color Iconbackground 
        {
            get { return _iconback; }
            set { _iconback = value; panel1.BackColor = value; }
        }



        [Category("Custom Props")]
        public string Message
        {
            get { return _course; }
            set { _course = value;  iblmessage.Text = value;  }
        }
        #endregion

        [Category("Custom Props")]
        public Image Icon
        {
            get { return _icon; }
            set { _icon= value;  pictureBox1.Image = value; }


        }


        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

       
      
        private void UserControl1_MouseEnter(object sender, EventArgs e)
        {
            this.BackColor = Color.Silver;

        }

        private void UserControl1_MouseLeave(object sender, EventArgs e)
        {
            this.BackColor = Color.White;

        }

        private void button1_Click(object sender, EventArgs e)
        {
            // sent the name of course to enrollment form 
            Enrollment_form ef = new Enrollment_form();
            ef.get_name_of_course(this._doctor);
            ef.Show();
            ef.get_name_of_course(this.Title);
            ef.add_data_while_enroll(this.Message, this.Title);
        }

        private void UserControl1_Load(object sender, EventArgs e)
        {

        }

        private void iblmessage_Click(object sender, EventArgs e)
        {

        }

        private void ibltitle_Click(object sender, EventArgs e)
        {

        }
    }
}
