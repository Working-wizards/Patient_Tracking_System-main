using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Patient_Tracking_System.Account
{
    public partial class WebForm1 : Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\patel\source\repos\Patient_Tracking_System\App_Data\Patient_Tracking_System.mdf;Integrated Security=True");
        SqlDataAdapter da = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();

        protected void LogIn(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select count(*) from register where email = @email and password = @password", conn);
            da.SelectCommand.Parameters.AddWithValue("@email", Email.Text);
            da.SelectCommand.Parameters.AddWithValue("@password", Password.Text);

            conn.Open();
            da.Fill(dt);
            conn.Close();

            if (dt.Rows[0][0].Equals(1))
            {
                Session["email"] = Email.Text;
                Response.Redirect("Appointments.aspx");
                Session.RemoveAll();
            }

            else
            {
                Response.Write("Login Failed");
                Email.Text = "";

            }

        }
    }
}
