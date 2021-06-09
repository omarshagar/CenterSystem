using CourseSystem.UI;
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
    public partial class LogIn : Form
    {
        char option;
        string ordb = "Data Source = localhost/orcl; User Id =useromr; password= Administrator1;";
        OracleConnection con;
        public LogIn()
        {
            //option = op;
            option = 'i';
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            con = new OracleConnection(ordb);
            con.Open();
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void linkLabel3_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            Check_Admin ch = new Check_Admin();
            ch.ShowDialog();
            this.Close();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = con;
            if (userNametxt1.User_Name=="admin"&& passwordtxt1.Password=="admin")
            {
                MainAdminForm MAF = new MainAdminForm();
                this.Hide();
                MAF.ShowDialog();
                this.Close();
                return;
            }

            else if(radioButton1.Checked)
            {
                cmd.CommandText = "confirm_student";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("email", userNametxt1.User_Name);
                //cmd.Parameters.Add("pass", OracleDbType.Varchar2, ParameterDirection.Output);
                OracleParameter out_1 = new OracleParameter();
                out_1.OracleDbType = OracleDbType.Varchar2;
                out_1.Direction = ParameterDirection.Output;
                out_1.Size = 500;
                cmd.Parameters.Add(out_1);
                cmd.Parameters.Add("id", OracleDbType.Int32, ParameterDirection.Output);

                string myPassword="";
                int myid=100;             
                try
                {
                    cmd.ExecuteNonQuery();
                    myid = Convert.ToInt32(cmd.Parameters["id"].Value.ToString());
                    myPassword = cmd.Parameters[1].Value.ToString();
                    if (myPassword.Equals(passwordtxt1.Password))
                    {
                        MessageBox.Show("LOGGED IN");
                    }
                    else
                    {
                        MessageBox.Show("Incorrect Password!");
                    }
                }
                catch
                {
                    MessageBox.Show("User Doesn't Exists!" + myid);
                }
            }

            else if(radioButton2.Checked)
            {
                cmd.CommandText = "confirm_instructor";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("email", userNametxt1.User_Name);
                //cmd.Parameters.Add("pass", OracleDbType.Varchar2, ParameterDirection.Output);
                OracleParameter out_1 = new OracleParameter();
                out_1.OracleDbType = OracleDbType.Varchar2;
                out_1.Direction = ParameterDirection.Output;
                out_1.Size = 500;
                cmd.Parameters.Add(out_1);
                cmd.Parameters.Add("id", OracleDbType.Int32, ParameterDirection.Output);

                string myPassword = "";
                int myid = 100;
                try
                {
                    cmd.ExecuteNonQuery();
                    myid = Convert.ToInt32(cmd.Parameters["id"].Value.ToString());
                    myPassword = cmd.Parameters[1].Value.ToString();
                    if (myPassword.Equals(passwordtxt1.Password))
                    {
                        MessageBox.Show("LOGGED IN");
                    }
                    else
                    {
                        MessageBox.Show("Incorrect Password!");
                    }
                }
                catch
                {
                    MessageBox.Show("User Doesn't Exists!");
                }
            }

            else
            {
                MessageBox.Show("Please Choose Your Role.");
            }
        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
        }

        private void radioButton1_CheckedChanged_1(object sender, EventArgs e)
        {

        }
    }
}
