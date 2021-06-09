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
    public partial class ManageInstructorForm : Form
    {
        OracleDataAdapter adapter;
        OracleCommandBuilder builder;
        DataSet ds;
        public ManageInstructorForm()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
            
        }

        private void ManageInstructorForm_Load(object sender, EventArgs e)
        {
            label1.Visible = false;
            string constr = "Data Source =localhost/orcl; User Id =useromr; password= Administrator1;";
            string cmdstr = "select INSTRUCTOR_ID, firstname, lastname, username,  email, mobile_number from instructor";

            adapter = new OracleDataAdapter(cmdstr, constr);
            ds = new DataSet();
            adapter.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            builder = new OracleCommandBuilder(adapter);
            adapter.Update(ds.Tables[0]);
        }

        private void dataGridView1_DefaultValuesNeeded(object sender,
    System.Windows.Forms.DataGridViewRowEventArgs e)
        {
            

        }

        private void button2_Click(object sender, EventArgs e)
        {
            flowLayoutPanel2.Controls.Clear();
            label1.Visible = true;
            popItems();
            
        }

        private void popItems()
        {
            string ordb = "Data Source  =localhost/orcl; User Id =useromr; password= Administrator1;";
            OracleConnection con = new OracleConnection(ordb);
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = con;
            cmd.CommandText = "select course_name, cost from course where instructor_id = :id";
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("id", textBox1.Text);
            int count = 0;
            adapter = new OracleDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            count = dt.Rows.Count;
            UserControl1[] uc = new UserControl1[count];
            
            for(int i = 0; i < count; i++)
            {
                uc[i] = new UserControl1();
                uc[i].Title = dt.Rows[i][0].ToString();
                uc[i].Cost = Convert.ToInt32(dt.Rows[i][1]);
                flowLayoutPanel2.Controls.Add(uc[i]);
            }
            
        }
    }
}
