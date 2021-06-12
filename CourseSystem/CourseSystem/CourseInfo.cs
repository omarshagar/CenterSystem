using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CrystalDecisions.Shared;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;
namespace FekyTask.Forms
{
    public partial class CourseInfo : Form
    {
        CrystalReportInstructor CR;
        int InstID;
        // string ord = "data source=orcl1;user id=feky;password=ykef;";
        string ord = "data source=localhost/orcl;user id=useromr;password=Administrator1;";

        OracleConnection conn;
        
        public CourseInfo(int id)
        {
            InitializeComponent();
            InstID = id;
            
        }
        private void getCourses()
        {
            conn = new OracleConnection(ord);
            conn.Open();

            OracleCommand cmd = new OracleCommand();
            cmd.Connection = conn;
            cmd.CommandText = "INSTRUCTORCOURSES";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("id", InstID.ToString());
            cmd.Parameters.Add("course", OracleDbType.RefCursor, ParameterDirection.Output);
            OracleDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                CoursesBox.Items.Add(reader[0]);
            }
            conn.Close();


        }
        private void CourseInfo_Load(object sender, EventArgs e)
        {
            CR = new CrystalReportInstructor();
            getCourses();

        }


        private void CoursesBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            CR.SetParameterValue(0, CoursesBox.Text);
            CR.SetParameterValue(1, InstID);
            crystalReportViewer1.ReportSource = CR;
        }
    }
}
