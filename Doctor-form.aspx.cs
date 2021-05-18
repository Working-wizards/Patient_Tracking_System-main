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
    public partial class WebForm2 : System.Web.UI.Page
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
            cmd.CommandText = "insert into doctor_form (patient_fname, patient_lname, patient_email, phone_number, disease, medication, date, cost) values (@patient_fname, @patient_lname, @patient_email, @phone_number, @disease, @medication, @date, @cost)";
            cmd.Parameters.AddWithValue("@patient_fname", pfname.Text);
            cmd.Parameters.AddWithValue("@patient_lname", plname.Text);
            cmd.Parameters.AddWithValue("@patient_email", pemail.Text);
            cmd.Parameters.AddWithValue("@phone_number", phonenumber.Text);
            cmd.Parameters.AddWithValue("@disease", disease.Text);
            cmd.Parameters.AddWithValue("@medication", medication.Text);
            cmd.Parameters.AddWithValue("@date", date.Text);
            cmd.Parameters.AddWithValue("@cost", cost.Text);

            conn.Open();

            cmd.Connection = conn;
            cmd.ExecuteNonQuery();

            conn.Close();

            
            Response.Write("Data entered successfully");
            pfname.Text = "";
            plname.Text = "";
            pemail.Text = "";
            disease.Text = "";
            medication.Text = "";
            phonenumber.Text = "";
            date.Text = "";
            cost.Text = "";

            
        }
    }
}