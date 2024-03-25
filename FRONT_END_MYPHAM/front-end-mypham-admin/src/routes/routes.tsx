import config from "../config";
import Overview from "../pages/Overview";

interface RouteItem {
    path: string;
    component: React.ComponentType<any>;
    layout?: React.ComponentType<any> | null;
}

const publicRoutes: RouteItem[] = [
    { path: config.routes.overview, component: Overview },
    // {path: config.routes.forgot, component: Forgot, layout:OnlyLayout },
];

const privateRoutes: [] = [];

export { publicRoutes, privateRoutes };
