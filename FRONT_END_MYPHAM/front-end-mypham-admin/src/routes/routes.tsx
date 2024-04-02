import config from "../config";
import Account from "../pages/Account";
import Advertisement from "../pages/Advertisement";
import BannerSlide from "../pages/BannerSlide";
import BillSell from "../pages/BillSell";
import Category from "../pages/Category";
import CategoryOffer from "../pages/CategoryOffer";
import Distributor from "../pages/Distributor";
import ImportBill from "../pages/ImportBill";
import Manufactor from "../pages/Manufactor";
import New from "../pages/New";
import Overview from "../pages/Overview";
import Product from "../pages/Product";
import Rate from "../pages/Rate";
import TypeAccount from "../pages/TypeAccount";

interface RouteItem {
    path: string;
    component: React.ComponentType<any>;
    layout?: React.ComponentType<any> | null;
}

const publicRoutes: RouteItem[] = [
    { path: config.routes.overview, component: Overview },
    { path: config.routes.product, component: Product },
    { path: config.routes.billsell, component: BillSell },
    { path: config.routes.importbill, component: ImportBill },
    { path: config.routes.new, component: New },
    { path: config.routes.rate, component: Rate },
    { path: config.routes.category, component: Category },
    { path: config.routes.categoryoffer, component: CategoryOffer },
    { path: config.routes.manufacter, component: Manufactor },
    { path: config.routes.distributor, component: Distributor },
    { path: config.routes.advertisement, component: Advertisement },
    { path: config.routes.bannerslide, component: BannerSlide },
    { path: config.routes.typeaccount, component: TypeAccount },
    { path: config.routes.account, component: Account },
];

const privateRoutes: [] = [];

export { publicRoutes, privateRoutes };
