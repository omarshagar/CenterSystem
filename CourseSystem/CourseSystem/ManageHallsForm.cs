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
    public partial class ManageHallsForm : Form
    {
            
        OracleDataAdapter adapter;
        OracleCommandBuilder builder;
        DataSet ds;
        public ManageHallsForm()
        {
            InitializeComponent();
        }

        private void ManageHallsForm_Load(object sender, EventArgs e)
        {
            string constr = "Data Source =localhost/orcl; User Id =useromr; password= Administrator1;";
            string cmdstr = "select * from hall";
            adapter = new OracleDataAdapter(cmdstr, constr);
            ds = new DataSet();
            adapter.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            builder = new OracleCommandBuilder(adapter);
            adapter.Update(ds.Tables[0]);
        }

        private void back_btn_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
