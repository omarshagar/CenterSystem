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

    public partial class Enrollment_form : Form
    {
        int stud_id;
        public Enrollment_form(int myid)
        {
            stud_id = myid;
            InitializeComponent();

        }
        //connection to database
        string ordb = "Data Source=localhost/orcl;User Id=useromr;Password=Administrator1;";
        //string ordb = "Data Source=ORCL;User Id=hr;Password=hr;";
        OracleConnection con;
        OracleDataAdapter adapter;

        // to do 
        string instr_id;
        string course_id;

        public string name_of_erolment_course;

        /*
         using this function to update the balance of student and instructor and number of 
        students that enrolled of this course in database  
         */
        public void update(string query, string val, string num)
        {
            con = new OracleConnection(ordb);
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = con;
            cmd.CommandText = query;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("val", val);
            cmd.Parameters.Add("num", num);
            int r = cmd.ExecuteNonQuery();
        }
        /*
         * using this function to insert the student_id and course_id in table enrollment
         */
        public void update_insert(string query, string student_id, string coursees_id)
        {
            con = new OracleConnection(ordb);
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = con;
            cmd.CommandText = query;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("st_id", student_id);
            cmd.Parameters.Add("co_id", coursees_id);
            int r = cmd.ExecuteNonQuery();
        }

        /*
         using to select balance of student and instructor
         */
        public DataTable retreve_selectdata_from_database_one_bind(string query, string bindvar)
        {
            con = new OracleConnection(ordb);
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = con;
            cmd.CommandText = query;
            cmd.Parameters.Add("que", bindvar);
            cmd.CommandType = CommandType.Text;
            adapter = new OracleDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;
        }
        // this function to get all information of course using instructor_id and coursename
        public DataTable retreve_data_from_database_twobind(string query, string bind_id, string course_name)
        {
            con = new OracleConnection(ordb);
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = con;
            cmd.CommandText = query;
            cmd.Parameters.Add("id", bind_id);
            cmd.Parameters.Add("coursename", course_name);
            cmd.CommandType = CommandType.Text;
            adapter = new OracleDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;
        }
        // to get instructor id
        public DataTable retreve_data_from_database_threebind(string query, string bind_firstname, string bind_lastname, string bind_course_name)
        {
            con = new OracleConnection(ordb);
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = con;
            cmd.CommandText = query;
            cmd.Parameters.Add("firstname", bind_firstname);
            cmd.Parameters.Add("lastname", bind_lastname);
            cmd.Parameters.Add("coursename", bind_course_name);
            cmd.CommandType = CommandType.Text;
            adapter = new OracleDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;
        }

        /*
        this function to get the name of course from the usercontrol1 form
         */
        public void get_name_of_course(string s)
        {
            this.name_of_erolment_course = s;
            this.course_name.Text = s;
        }

        /*
         display all informations of course when student press for button enroll 
         */
        public void add_data_while_enroll(string name_of_dr, string name_of_course)
        {
            /*
            two loops to solve the problem of name of instructor becuse the name of instuctor
            display as "firstname" then "_" then lastname in  the course'usercontrol1  
             */
            string firstname = "", lastname = "";
            int i = 3;
            for (; i < name_of_dr.Length && name_of_dr[i] != ' '; i++) { firstname += name_of_dr[i]; }
            i++;
            for (; i < name_of_dr.Length && name_of_dr[i] != ' '; i++) lastname += name_of_dr[i];


            /*
              becuse the one course teached by many instructors so i will get the all information 
              of this course using the instructor_id and coursename
             */
            DataTable dt = new DataTable();
            dt = retreve_data_from_database_threebind("select course.instructor_id from course, instructor where instructor.firstname =:first and instructor.lastname =:second and course.course_name =:course ", firstname, lastname, name_of_course);
            adapter.Fill(dt);
            this.instr_id = dt.Rows[0][0].ToString();
            DataTable dt2 = new DataTable();
            dt2 = retreve_data_from_database_twobind("select cost, DURATION_OF_ONE_SESSION, NUM_OF_STUDENTS, NUMBER_OF_SESSIONS, START_DATE,END_DATE,course_id from course where instructor_id =:var and course_name =:name", dt.Rows[0][0].ToString(), name_of_course);
            adapter.Fill(dt2);



            //display all informations of course
            this.cost.Text = dt2.Rows[0][0].ToString();
            this.duration_of_one_session.Text = dt2.Rows[0][1].ToString();
            this.num_of_student.Text = dt2.Rows[0][2].ToString();
            this.numofsessions.Text = dt2.Rows[0][3].ToString();
            this.start_date.Text = dt2.Rows[0][4].ToString();
            this.end_date.Text = dt2.Rows[0][5].ToString();
            this.course_id = dt2.Rows[0][6].ToString();
            this.doctor.Text = "" + firstname + " " +lastname;

        }

        /* when student press save and if student'balance bigger than or equal course'balance
        the process done and the balance of student and instructor and number of 
        students that enrolled of this course updated in the database
        */
        private void gunaCircleButton1_Click(object sender, EventArgs e)
        {
            DialogResult dial = MessageBox.Show("Are you sure that you want to enroll in this course ?", "Enroll", MessageBoxButtons.YesNo);
            if (dial == DialogResult.Yes)
            {

                con = new OracleConnection(ordb);
                con.Open();
                OracleCommand cmd = new OracleCommand();
                cmd.Connection = con;
                cmd.CommandText = "CHECK_CONT_IN_STD";
                cmd.CommandType = CommandType.StoredProcedure;
                int ou = 0;
                cmd.Parameters.Add("std_id", stud_id);
                cmd.Parameters.Add("courseid", course_id);
                cmd.Parameters.Add("sucess", OracleDbType.Int32, ParameterDirection.Output);
                cmd.ExecuteNonQuery();
                int suc = int.Parse(cmd.Parameters["sucess"].Value.ToString());
                if (suc == 0)
                {
                    MessageBox.Show("This Course contradict with your previous tables");
                    return;
                }
                con.Close();


                DataTable info = new DataTable();
                info = retreve_selectdata_from_database_one_bind("SELECT balance from student where student_id =:stud_id", stud_id.ToString());
                if (int.Parse(info.Rows[0][0].ToString()) >= int.Parse(this.cost.Text))
                {
                    int finalstudbalance = int.Parse(info.Rows[0][0].ToString()) - int.Parse(this.cost.Text);
                    DataTable info2 = new DataTable();
                    info2 = retreve_selectdata_from_database_one_bind("select balance from instructor where instructor_id=:inst", this.instr_id);
                    int finalinstrbalance = int.Parse(info2.Rows[0][0].ToString()) + int.Parse(this.cost.Text);
                    int finalnumstudforcourse = int.Parse(this.num_of_student.Text) + 1;

                    update("update  student set balance=:finalstudbalance where student_id=:stud_id", finalstudbalance.ToString(), stud_id.ToString());
                    update("update  instructor set balance=:finalinstrbalance where instructor_id=:instr_id", finalinstrbalance.ToString(), instr_id);
                    update("update course set num_of_students=:finalnumstudforcourse where course_id=:course_id", finalnumstudforcourse.ToString(), course_id);
                    update_insert("insert into enrollment values (:stud_id,:course_id)", stud_id.ToString(), course_id);
                    MessageBox.Show("Enroll Sucessed");
                }
                else
                {
                    MessageBox.Show("Sorry! Your balance is not enough", "Enroll", MessageBoxButtons.OK);
                }

            }
            else
            {

            }
        }
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void end_date_Click(object sender, EventArgs e)
        {

        }

        private void duration_of_one_session_Click(object sender, EventArgs e)
        {

        }

        private void num_of_student_Click(object sender, EventArgs e)
        {

        }

        private void numofsessions_Click(object sender, EventArgs e)
        {

        }

        private void doctor_Click(object sender, EventArgs e)
        {

        }

        private void course_name_Click(object sender, EventArgs e)
        {

        }

        private void cost_Click(object sender, EventArgs e)
        {

        }

        private void save_Click(object sender, EventArgs e)
        {
           if ( this.num_of_student.Text =='0'.ToString())
            {
                MessageBox.Show("Sorry, This Course has Full Capacity!");
                return;
            }
            DialogResult dial = MessageBox.Show("Are you sure that you want to enroll in this course ?", "Enroll", MessageBoxButtons.YesNo);
            if (dial == DialogResult.Yes)
            {

                DataTable info = new DataTable();
                info = retreve_selectdata_from_database_one_bind("SELECT balance from student where student_id =:stud_id", stud_id.ToString());
                if (int.Parse(info.Rows[0][0].ToString()) >= int.Parse(this.cost.Text))
                {
                    int finalstudbalance = int.Parse(info.Rows[0][0].ToString()) - int.Parse(this.cost.Text);
                    DataTable info2 = new DataTable();
                    info2 = retreve_selectdata_from_database_one_bind("select balance from instructor where instructor_id=:inst", this.instr_id);
                    int finalinstrbalance = int.Parse(info2.Rows[0][0].ToString()) + int.Parse(this.cost.Text);
                    int finalnumstudforcourse = int.Parse(this.num_of_student.Text) - 1;
                   

                    update("update  student set balance=:finalstudbalance where student_id=:stud_id", finalstudbalance.ToString(), stud_id.ToString());
                    update("update  instructor set balance=:finalinstrbalance where instructor_id=:instr_id", finalinstrbalance.ToString(), instr_id);
                    update("update course set num_of_students=:finalnumstudforcourse where course_id=:course_id", finalnumstudforcourse.ToString(), course_id);
                    update_insert("insert into enrollment values (:stud_id,:course_id)", stud_id.ToString(), course_id);
                    MessageBox.Show("Enroll Sucessed");
                }
                else
                {
                    MessageBox.Show("Sorry! Your balance is not enough", "Enroll", MessageBoxButtons.OK);
                }

            }
            else
            {

            }
        }

        private void cancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void start_date_Click(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
