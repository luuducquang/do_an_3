import config from "../config";
import OnlyLayout from "../layouts/OnlyLayout";
import Cart from "../pages/Cart";
import Category from "../pages/Category";
import Detail from "../pages/Detail";
import Forgot from "../pages/Forgot";
import Home from "../pages/Home";
import Login from "../pages/Login";
import Registry from "../pages/Registry";

interface RouteItem {
    path: string;
    component: React.ComponentType<any>;
    layout?: React.ComponentType<any> | null;
}

const publicRoutes: RouteItem[] = [
    {path: config.routes.home, component: Home },
    {path: config.routes.category, component: Category },
    {path: config.routes.cart, component: Cart },
    {path: config.routes.detail, component: Detail },
    {path: config.routes.login, component: Login, layout:OnlyLayout },
    {path: config.routes.registry, component: Registry, layout:OnlyLayout },
    {path: config.routes.forgot, component: Forgot, layout:OnlyLayout },
];

const privateRoutes: [] = [];

export { publicRoutes, privateRoutes };
