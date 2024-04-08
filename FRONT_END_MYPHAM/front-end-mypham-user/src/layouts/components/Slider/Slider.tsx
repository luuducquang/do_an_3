import classNames from "classnames/bind";

import styles from "./Slider.module.scss";
import { useEffect, useState } from "react";
import { getAllImagesSlider } from "../../../services/slider.service";
import { Carousel } from "antd";
import { apiImage } from "../../../constant/api";

const cx = classNames.bind(styles);

function Slider() {
    const [dataImage, setDataImage] = useState([]);

    useEffect(() => {
        async function getImg() {
            const res = await getAllImagesSlider();
            setDataImage(res);
        }
        getImg();
    }, []);
    return (
        <div className={cx("image")}>
            <Carousel autoplay>
                {dataImage.map(function (value: any, index: any) {
                    return (
                        <div key={index}>
                            <img src={apiImage + value.linkAnh} alt="" />
                        </div>
                    );
                })}
            </Carousel>
        </div>
    );
}

export default Slider;
