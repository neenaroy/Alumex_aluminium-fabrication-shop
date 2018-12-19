using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Alumex_aluminium_fabrication_shop.Startup))]
namespace Alumex_aluminium_fabrication_shop
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
