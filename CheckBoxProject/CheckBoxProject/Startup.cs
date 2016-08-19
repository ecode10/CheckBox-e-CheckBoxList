using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CheckBoxProject.Startup))]
namespace CheckBoxProject
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
