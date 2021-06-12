using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Threading.Tasks;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;

namespace FekyTask.helperClasses
{
    class InstructorInfo
    {
        //string ord = "data source=orcl1;user id=feky;password=ykef;";
        string ord = "data source=localhost/orcl;user id=useromr;password=Administrator1;";

        OracleConnection conn;
        public int InstID, BALANCE, hour;
        public string fullName, EMAIL, MOBILE_NUMBER;
        public DateTime nextSessionDate;
        public InstructorInfo(int id)
        {
            InstID = id;
        }
        public void getData()
        {
            conn = new OracleConnection(ord);
            conn.Open();

            OracleCommand cmd = new OracleCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select FIRSTNAME, LASTNAME, EMAIL, BALANCE, MOBILE_NUMBER from instructor WHERE instructor_id =:id";
            cmd.Parameters.Add("id", InstID.ToString());
            OracleDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                fullName = (string)reader[0] + "  "+ (string)reader[1];
                EMAIL = (string)reader[2];
                BALANCE = Convert.ToInt32(reader[3]);
                MOBILE_NUMBER = reader[4].ToString();

            }
            reader.Close();
        }
        public void getNextSession()
        {
            conn = new OracleConnection(ord);
            conn.Open();

            OracleCommand cmd = new OracleCommand();
            cmd.Connection = conn;
            cmd.CommandText = "NEXTSESSION";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("id", InstID.ToString());
            cmd.Parameters.Add("course", OracleDbType.RefCursor, ParameterDirection.Output);
            OracleDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {

                nextSessionDate = (DateTime)reader[0];

                Console.WriteLine(nextSessionDate.ToString());
                hour = Convert.ToInt32(reader[1]);
            }
            conn.Close();
        }


    }
}
