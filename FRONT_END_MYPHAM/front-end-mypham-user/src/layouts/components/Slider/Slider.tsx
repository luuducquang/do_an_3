import classNames from "classnames/bind";

import styles from "./Slider.module.scss";

const cx = classNames.bind(styles);

function Slider() {
    return (
        <div className={cx("image")}>
            <img id="img" src="./assets/img/skincare+banner.jpg" alt="" />
            <div className={cx("image-btn")}>
                <div className={cx("")} />
                <div className={cx("")} />
            </div>
        </div>
    );
}

export default Slider;
