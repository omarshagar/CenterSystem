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

    public partial class courses_not_enrollment_form : Form
    {
        // connect to database
        //string ordb = "Data Source=ORCL;User Id=hr;Password=hr;";
        string ordb = "Data Source=orcl4;User Id=scott;Password=tiger;";
        OracleConnection con;   
        OracleDataAdapter adapter;

        // to do 
        string stud_id = "3";
        public courses_not_enrollment_form()
        {
            InitializeComponent();
        }

        // get data based on commandtext
        public DataTable retreve_data_from_database(string query)
        {
            con = new OracleConnection(ordb);
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = con;
            cmd.CommandText=query;
            cmd.CommandType = CommandType.Text;
            adapter = new OracleDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;
        }
      
        // get data based on commandtext with one bind_paramter
        public DataTable retreve_data_from_database_onebind(string query,string bind)
        {
            con = new OracleConnection(ordb);
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = con;
            cmd.CommandText = query;
            cmd.Parameters.Add("id",bind);
            cmd.CommandType = CommandType.Text;
            adapter = new OracleDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;
        }

        private void populateitems()
        {
           
            // get all course_id in databsae
            DataTable data1 = new DataTable();
            data1 = retreve_data_from_database("select course_id from course");
            int count = data1.Rows.Count;

            // get all course_id that the student enrolled in it 
            DataTable data2 = new DataTable();
            data2 = retreve_data_from_database_onebind("select course_id from enrollment where studnet_id=:stud_id",this.stud_id);
            int count2 = data2.Rows.Count;



            //filter  all course_id that student enrolled in it 
            List<string> id_courses_not = new List<string>();
            for (int i = 0; i < count; i++)
            {
                int flag = -1;
                for (int j = 0; j < count2; j++)
                {
                    if (data1.Rows[i][0].ToString() == data2.Rows[j][0].ToString()) { flag = 1; break; }
                }
                if (flag == -1)
                {
                    id_courses_not.Add(data1.Rows[i][0].ToString());
                }              
            }

            /*
              display all courses that student not enrolled it using shap of usercontrol1  
              after get information of courese (coursename & instructorname) 
             */
           for (int i = 0; i < id_courses_not.Count(); i++)
            {

                // get coursename
                string course_name_using_id=id_courses_not[i];
                DataTable data3 = new DataTable();
                data3 = retreve_data_from_database_onebind("select course_name,instructor_id from course where course_id=:course_name_using_id", course_name_using_id);
                int count3 = data3.Rows.Count;

                // get firstname of instructor
                string instructor_id_firstname = data3.Rows[0][1].ToString();
                DataTable data4 = new DataTable();
                data4 = retreve_data_from_database_onebind("select firstname from instructor where INSTRCUTOR_ID=:instructor_id_firstname ", instructor_id_firstname);
                // get lastname of instructor
                string instructor_id_lastname = data3.Rows[0][1].ToString();
                DataTable data5 = new DataTable();
                data5 = retreve_data_from_database_onebind("select lastname from instructor where INSTRCUTOR_ID=:instructor_id_lastname ", instructor_id_lastname);
                string name_of_doctor = "Dr:"+data4.Rows[0][0].ToString()+'_'+ data5.Rows[0][0].ToString();
               
                // display using shap of usercontrol1
                UserControl1[] listItems = new UserControl1[id_courses_not.Count()];
                listItems[i] = new UserControl1();
                listItems[i].Width = flowLayoutPanel1.Width;
                listItems[i].Icon = Resources.courses;
                listItems[i].Iconbackground = Color.Silver;
                listItems[i].Title =data3.Rows[0][0].ToString() ;
                listItems[i].Message = name_of_doctor;
                if (flowLayoutPanel1.Controls.Count < 0)
                {
                    flowLayoutPanel1.Controls.Clear();
                }
                else
                    flowLayoutPanel1.Controls.Add(listItems[i]);
            }
         }
            private void courses_not_enrollment_form_Load(object sender, EventArgs e)
        {
            populateitems();
        }

        private void flowLayoutPanel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
