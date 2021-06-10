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

namespace CourseSystem.Forms
{
    public partial class RegisterForm : BaseForm
    {
        
        char choice;
        string ordb = "Data Source = localhost/orcl; User Id =useromr; password= Administrator1;";
        OracleConnection con;
        public RegisterForm(char op)
        {
            InitializeComponent();
            choice = op;
        }

        private void OnLoad(object sender, EventArgs e)
        {
            con = new OracleConnection(ordb);
            con.Open();
        }

        bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            bool cont = true;
            if (pass.Text == "" || fname.Text == "" || lname.Text == "" || email.Text == "" || uname.Text == "" || mobile.Text == "" || cpass.Text == "")
            {
                MessageBox.Show("Complete All Your Data!");
                cont = false;
            }

            else if (pass.Text.Length < 6)
            {
                MessageBox.Show("Password Can't Be Less Than 6 Characters!");
                cont = false;
            }


            else if (pass.Text != cpass.Text)
            {
                MessageBox.Show("Passwords Don't Match!");
                cont = false;
            }

            else if(!IsValidEmail(email.Text))
            {
                MessageBox.Show("Enter a Valid E-Mail Address!");
                cont = false;
            }


            if (cont)
            {
                OracleCommand cmd = new OracleCommand();
                cmd.Connection = con;
                if (choice == 's')
                {
                    cmd.CommandText = "insert into student (student_id, firstname, lastname, email,  password,  mobile_number,username ) " +
                                       "VALUES (student_id_seq.nextval, :fname, :lname, :email,:pass, :mobile, :uname)";
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add("fname", fname.Text.ToString());
                    cmd.Parameters.Add("lname", lname.Text.ToString());
                    cmd.Parameters.Add("email", email.Text.ToString());
                    cmd.Parameters.Add("pass", pass.Text.ToString());
                    // cmd.Parameters.Add("bal", 0);
                    cmd.Parameters.Add("mobile", mobile.Text.ToString());
                    cmd.Parameters.Add("uname", uname.Text.ToString());
                    int ret = cmd.ExecuteNonQuery();
                    if (ret != -1)
                    {
                        MessageBox.Show("Registration Completed \nWelcome");
                        pass.Text = fname.Text = lname.Text = email.Text = uname.Text = mobile.Text = cpass.Text = "";

                    }
                }
                else if (choice == 'i')
                {
                    MessageBox.Show("Registration Completed \n Welcome");
                    cmd.CommandText = "insert into instructor (instructor_id, firstname, lastname, email,  password,   mobile_number,username ) " +
                                       "VALUES (instructor_seq.nextval, :fname, :lname, :email,:pass, :mobile, :uname)";
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add("fname", fname.Text);
                    cmd.Parameters.Add("lname", lname.Text);
                    cmd.Parameters.Add("email", email.Text);
                    cmd.Parameters.Add("pass", pass.Text);
                    cmd.Parameters.Add("mobile", mobile.Text);
                    cmd.Parameters.Add("uname", uname.Text);
                    int ret = cmd.ExecuteNonQuery();
                    if (ret != -1)
                    {
                        MessageBox.Show("Registration Completed \nWelcome");
                        pass.Text = fname.Text = lname.Text = email.Text = uname.Text = mobile.Text = cpass.Text = "";

                    }
                }




            }
        }
    }
}
