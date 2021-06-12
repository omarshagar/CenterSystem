using CourseSystem.Properties;
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
    public partial class main_form : Form
    {
        ///  connection to database 
        //string ordb = "Data Source=ORCL;User Id=hr;Password=hr;";
        string ordb = "Data Source=localhost/orcl;User Id=useromr;Password=Administrator1;";
        OracleConnection con;
         OracleDataAdapter adapter;
         OracleDataAdapter adapter2;

        // to do 
        int stud_id;

        public main_form(int myid)
        {
            stud_id = myid;
            InitializeComponent();
        }

        private void populateitems()
        {

            //return from databse all information that will display in the first window which displayed after student'login (main_window) 
            con = new OracleConnection(ordb);
            con.Open();
            OracleCommand cmd_s = new OracleCommand();
            cmd_s.Connection = con;
            cmd_s.CommandText = "select username,balance,email,mobile_number from student where student_id=:stud_id";
            cmd_s.CommandType = CommandType.Text;
            cmd_s.Parameters.Add("id", stud_id);
            adapter2 = new OracleDataAdapter(cmd_s);
            DataTable all_data = new DataTable();
            adapter2.Fill(all_data);
            this.UserName.Text= all_data.Rows[0][0].ToString();
            this.balance.Text= all_data.Rows[0][1].ToString();
            this.email.Text= all_data.Rows[0][2].ToString();
            this.mobile.Text= all_data.Rows[0][3].ToString();

            
            /* using this procedure to return the instructor_id 
               which used to find the name of instructor and return 
               all coursesname  that the student enrolled it to display it
            */
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = con;
            cmd.CommandText = "return_enrolled_courses";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("student_id", stud_id);
            cmd.Parameters.Add("data", OracleDbType.RefCursor, ParameterDirection.Output);
            adapter = new OracleDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            int count = dt.Rows.Count;
            UserControlStud[] listItems = new UserControlStud[count];
            // loop in all courses that student enrolled it to display 
            for (int i = 0; i < listItems.Length; i++)
            {
                
                
                /* this command text to return the name of instructor to display it in 
                   enrolled courses
                */
                OracleCommand cmd2 = new OracleCommand();
                cmd2.Connection = con;
                cmd2.CommandText = "select firstname,lastname from instructor where instructor_id=:numb";
                cmd2.Parameters.Add("id", dt.Rows[i][0].ToString());
                adapter = new OracleDataAdapter(cmd2);
                DataTable dt2 = new DataTable();
                adapter.Fill(dt2);
               
                // make object from usercontrol to display shape of courses
                listItems[i] = new UserControlStud(stud_id);
                listItems[i].Width = flowLayoutPanel1.Width;
                listItems[i].Icon = Resources.courses;
                listItems[i].Iconbackground = Color.Silver;
                listItems[i].Title = dt.Rows[i][1].ToString();
                listItems[i].HideButton();
                listItems[i].Message ="Dr:"+dt2.Rows[0][0].ToString()+' '+ dt2.Rows[0][1].ToString();
               
                if (flowLayoutPanel1.Controls.Count < 0)
                {
                    flowLayoutPanel1.Controls.Clear();
                }
                else 
                flowLayoutPanel1.Controls.Add(listItems[i]);
            }
        }


        private void flowLayoutPanel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void flowLayoutPanel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            // Show courses_not_enrollment_form
            courses_not_enrollment_form co = new courses_not_enrollment_form(stud_id);
            co.Show();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            UpdateForm uf = new UpdateForm(stud_id, 's');
            uf.ShowDialog();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            DialogResult dial = MessageBox.Show("Are You Sure You Want to Log Out ?", "Log Out", MessageBoxButtons.YesNo);
            if(dial == DialogResult.Yes)
            {
                LogIn lg = new LogIn();
                this.Hide();
                lg.ShowDialog();
                this.Close();
            }
        }
    }
}
