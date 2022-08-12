const rootRoute = "/";

const homePagegeDisplayName = "Beranda";
const homePagegeRoute = "/beranda";

const newsPageDisplayName = "Berita";
const newsPageRoute = "/berita";

const toursimPlacePageDisplayName = "Desa Wisata";
const toursimPlacePageRoute = "/wisata";

const profilDesaPageDisplayName = "Profil Desa";
const profilDesaPageRoute = "/profil";

const authenticationPageDisplayName = "Log out";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(homePagegeDisplayName, homePagegeRoute),
  MenuItem(newsPageDisplayName, newsPageRoute),
  MenuItem(toursimPlacePageDisplayName, toursimPlacePageRoute),
  MenuItem(profilDesaPageDisplayName, profilDesaPageRoute),
  MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
