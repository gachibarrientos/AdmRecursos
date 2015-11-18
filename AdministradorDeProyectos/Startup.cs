using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AdministradorDeProyectos.Startup))]
namespace AdministradorDeProyectos
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
