using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Patient_Tracking_System.Startup))]
namespace Patient_Tracking_System
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
