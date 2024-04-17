import AdvertimentLeft from "../../layouts/components/AdvertimentLeft";
import AdvertimentRight from "../../layouts/components/AdvertimentRight";
import CleanserProduct from "../../layouts/components/CleanserProduct";
import ContentHome from "../../layouts/components/ContentHome";
import FavouriteProduct from "../../layouts/components/FavouriteProduct";
import SaleProduct from "../../layouts/components/SaleProduct";
import SerumProduct from "../../layouts/components/SerumProduct";
import Slider from "../../layouts/components/Slider";

import classNames from "classnames/bind";
import styles from "./Home.module.scss";
import { notification } from "antd";

const cx = classNames.bind(styles);
type NotificationType = "success" | "info" | "warning" | "error";

function Home() {
    const [api, contextHolder] = notification.useNotification();

    const openNotificationWithIcon = (
        type: NotificationType,
        content: string
    ) => {
        api[type]({
            message: "Thông báo",
            description: content,
        });
    };
    return (
        <>
            {contextHolder}
            <Slider />
            <AdvertimentLeft />
            <AdvertimentRight />
            <div className={cx("content")}>
                <ContentHome>
                    <SaleProduct />
                    <FavouriteProduct />
                    <SerumProduct />
                    <CleanserProduct />
                </ContentHome>
            </div>
        </>
    );
}

export default Home;
