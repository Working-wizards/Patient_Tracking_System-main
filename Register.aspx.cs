using System;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Patient_Tracking_System.Models;
using System.Configuration;
using System.Data;

namespace Patient_Tracking_System.Account
{
    public partial class Register : Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\patel\source\repos\Patient_Tracking_System\App_Data\Patient_Tracking_System.mdf;Integrated Security=True");
        SqlDataAdapter da = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "insert into register (first_name, last_name, type, email, password, confirm_password) values (@firstname, @lastname, @type, @email, @password, @confirm)";
            cmd.Parameters.AddWithValue("@firstname",  Fname.Text);
            cmd.Parameters.AddWithValue("@lastname", Lname.Text);
            cmd.Parameters.AddWithValue("@type", Desig.Value);
            cmd.Parameters.AddWithValue("@email", Email.Text);
            cmd.Parameters.AddWithValue("@password", Password.Text);
            cmd.Parameters.AddWithValue("@confirm", ConfirmPassword.Text);
            conn.Open();

            cmd.Connection = conn;
            cmd.ExecuteNonQuery();

            conn.Close();
            Response.Redirect("Default.aspx");

            // var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            //var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text};
            //IdentityResult result = manager.Create(user, Password.Text);
            //if (result.Succeeded)
            //{
            // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
            //string code = manager.GenerateEmailConfirmationToken(user.Id);
            //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
            //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

            //   signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
            //  IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            //}
            //else 
            // {
            //    ErrorMessage.Text = result.Errors.FirstOrDefault();
            //}
        }
    }
}