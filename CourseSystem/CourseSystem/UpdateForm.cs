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
    public partial class UpdateForm : Form
    {
        int myid;
        char option;
        string ordb = "Data Source=localhost/orcl;User Id=useromr;Password=Administrator1;";
        OracleConnection con;
        OracleCommand cmd;
        public UpdateForm(int id)
        {
            option = 's';
            myid = id; 
            InitializeComponent();
        }

        private void UpdateForm_Load(object sender, EventArgs e)
        {
            
            textBox1.ReadOnly = true;
            textBox2.ReadOnly = true;
            textBox3.ReadOnly = true;
            textBox4.Visible = false;
            label4.Visible = false;
            con = new OracleConnection(ordb);
            con.Open();
            cmd = new OracleCommand();
            cmd.Connection = con;
            cmd.CommandText = "select firstname, lastname, mobile_number, password from student where student_id = :id";
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("id", myid);
            OracleDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                string name = "" + dr[0].ToString() + ' ' + dr[1].ToString();
                textBox1.Text = name;
                textBox2.Text = dr[2].ToString();
                textBox3.Text = dr[3].ToString();
                textBox4.Text = textBox3.Text;
            }           
        }


        private void button4_Click(object sender, EventArgs e)
        {  
            bool cont = true;
            if((textBox2.Text.Length != 11) || (textBox2.Text[0] != '0' || textBox2.Text[1] != '1'))
            {
                MessageBox.Show("Enter a Valid Phone Number!");
                cont = false;
            }
            else if (textBox3.Text.Length < 6)
            {
                MessageBox.Show("Password can't be less than 6 Characters!");
                cont = false;
            }
            else if(!textBox3.Text.Equals(textBox4.Text))
            {
                MessageBox.Show("Password Doesn't Match!");
                cont = false;
            }
            if (cont)
            {
                if (option == 's')
                {
                    cmd = new OracleCommand();
                    cmd.Connection = con;
                    string[] names = textBox1.Text.Split(' ');
                    cmd.CommandText = "update student set firstname =  :first, lastname = :second, mobile_number = :mob, password = :pass where student_id = :id";
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add("first", names[0]);
                    cmd.Parameters.Add("last", names[1]);
                    cmd.Parameters.Add("mob", textBox2.Text);
                    cmd.Parameters.Add("pass", textBox3.Text);
                    cmd.Parameters.Add("id", myid);
                    int r = cmd.ExecuteNonQuery();
                    if (r != -1)
                    {
                        MessageBox.Show("Data Updated!");
                        textBox1.ReadOnly = true;
                        textBox2.ReadOnly = true;
                        textBox3.ReadOnly = true;
                        textBox1.BorderStyle = BorderStyle.None;
                        textBox2.BorderStyle = BorderStyle.None;
                        textBox3.BorderStyle = BorderStyle.None;
                        textBox4.Visible = false;
                        label4.Visible = false;
                    }
                    else if (option == 'i')
                    {

                    }
                }
            }
        }


        private void button5_Click(object sender, EventArgs e)
        {
            textBox1.ReadOnly = false;
            textBox1.BorderStyle = BorderStyle.FixedSingle;
            textBox2.ReadOnly = false;
            textBox2.BorderStyle = BorderStyle.FixedSingle;
            textBox3.ReadOnly = false;
            textBox3.BorderStyle = BorderStyle.FixedSingle;
            textBox4.BorderStyle = BorderStyle.FixedSingle;
            textBox4.Visible = true;
            label4.Visible = true;
        }
    }
}
