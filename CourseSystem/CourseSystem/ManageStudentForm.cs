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
    public partial class ManageStudentForm : Form
    {
        StudentReport SR;
        string ordb = "Data Source = orcl; User Id =useromr; password= Administrator1;";
        OracleConnection con;
        public ManageStudentForm()
        {
            InitializeComponent();
        }

        private void crystalReportViewer1_Load(object sender, EventArgs e)
        {

        }

        private void ManageStudentForm_Load(object sender, EventArgs e)
        {
            groupBox1.Visible = false;
            groupBox2.Visible = false;
            con = new OracleConnection(ordb);
            con.Open();
            SR = new StudentReport();
            crystalReportViewer1.ReportSource = SR;
            crystalReportViewer1.Refresh();
        }

        private void crystalReportViewer1_Load_1(object sender, EventArgs e)
        {
            
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            groupBox1.Visible = true;
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void groupBox2_Enter(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = con;
            cmd.CommandText = "update_balance";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("id", textBox8.Text);
            cmd.Parameters.Add("bal", textBox7.Text);
            cmd.ExecuteNonQuery();
            MessageBox.Show("Student's Balance Updated");
            textBox8.Text = "";
            textBox7.Text = "";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            groupBox2.Visible = true;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert_student";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("id", textBox1.Text);
            cmd.Parameters.Add("fn", textBox2.Text);
            cmd.Parameters.Add("ln", textBox3.Text);
            cmd.Parameters.Add("phone", textBox5.Text);
            cmd.Parameters.Add("email", textBox4.Text);
            cmd.Parameters.Add("balance", textBox6.Text);
            cmd.ExecuteNonQuery();
            MessageBox.Show("Student Added");
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";
            textBox5.Text = "";
            textBox6.Text = "";
        }
    }
}
