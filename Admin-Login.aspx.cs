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
    public partial class WebForm2 : System.Web.UI.Page
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
                Response.Redirect("Doctor-form.aspx");
                Session.RemoveAll();
            }

            else
            {
              Response.Write("Login Failed");
              Email.Text = "";
            }
            //if (IsValid)
            //{
            // Validate the user password
            // var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

            // This doen't count login failures towards account lockout
            // To enable password failures to trigger lockout, change to shouldLockout: true

            //var result = signinManager.PasswordSignIn(Email.Text, Password.Text, RememberMe.Checked,shouldLockout: false);

            //switch (result)
            //{
            //  case SignInStatus.Success:
            //    Response.Redirect("Doctor-form.aspx");
            //IdentityHelper.RedirectToReturnUrl(Request.QueryString["requesturl"], Response);
            //  break;
            //case SignInStatus.LockedOut:
            //  Response.Redirect("/Account/Lockout");
            //break;
            //case SignInStatus.RequiresVerification:
            //   Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
            //                                 Request.QueryString["ReturnUrl"],
            //                               RememberMe.Checked),
            //               true);
            //break;
            //case SignInStatus.Failure:
            //default:
            //    FailureText.Text = "Invalid login attempt";
            //  ErrorMessage.Visible = true;
            //       break;
            //}
            //}
        }
    }
}