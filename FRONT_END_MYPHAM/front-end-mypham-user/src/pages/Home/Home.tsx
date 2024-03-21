import AdvertimentLeft from "../../layouts/components/AdvertimentLeft";
import AdvertimentRight from "../../layouts/components/AdvertimentRight";
import CleanserProduct from "../../layouts/components/CleanserProduct";
import ContentHome from "../../layouts/components/ContentHome";
import FavouriteProduct from "../../layouts/components/FavouriteProduct";
import SaleProduct from "../../layouts/components/SaleProduct";
import SerumProduct from "../../layouts/components/SerumProduct";
import Slider from "../../layouts/components/Slider";

import classNames from "classnames/bind";
import styles from './Home.module.scss'


const cx = classNames.bind(styles);

function Home() {
    return ( 
        <>
            <Slider/>
            <AdvertimentLeft/>
            <AdvertimentRight/>
            <div className={cx('content')} >
                <ContentHome>
                    <SaleProduct/>
                    <FavouriteProduct/>
                    <SerumProduct/>
                    <CleanserProduct/>
                </ContentHome>
            </div>

        </>
     );
}

export default Home;