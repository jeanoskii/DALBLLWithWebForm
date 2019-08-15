using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ThreeTier
{
    namespace DataAccess
    {
        static class DAL
        {
            public static string ConnectionString = "SERVER=TAFT-CL303;DATABASE=ISPROG2_IS12A;UID=SA;PWD=benilde";
            public static DataTable GetData(string sql)
            {
                SqlConnection con = new SqlConnection(DAL.ConnectionString);
                con.Open();
                SqlCommand com = new SqlCommand(sql, con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }

            public static void Execute(string sql)
            {
                SqlConnection con = new SqlConnection(DAL.ConnectionString);
                con.Open();
                SqlCommand com = new SqlCommand(sql, con);
                com.ExecuteNonQuery();
            }
        }
    }
}
