using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Patient_Tracking_System
{
    public partial class Appointments : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\patel\source\repos\Patient_Tracking_System\App_Data\Patient_Tracking_System.mdf;Integrated Security=True");
        SqlDataAdapter da = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_click(object sender, EventArgs e)
        {
            cmd.CommandText = "insert into Appointment (first_name, last_name, email, phone_number, reason, date, time) values (@first_name, @last_name, @email, @phone_number, @reason, @date, @time)";
            cmd.Parameters.AddWithValue("@first_name", fname.Text);
            cmd.Parameters.AddWithValue("@last_name", lname.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@phone_number", phonenumber.Text);
            cmd.Parameters.AddWithValue("@reason", reason.Text);
            cmd.Parameters.AddWithValue("@date", date.Text);
            cmd.Parameters.AddWithValue("@time", time.Text);
            

            conn.Open();

            cmd.Connection = conn;
            cmd.ExecuteNonQuery();

            conn.Close();


            Response.Write("Data entered successfully");
            fname.Text = "";
            lname.Text = "";
            email.Text = "";
            reason.Text = "";
            phonenumber.Text = "";
            date.Text = "";
            time.Text = "";


        }
    }
}