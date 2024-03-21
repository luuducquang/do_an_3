import { useEffect, useState } from "react";
import classNames from "classnames/bind";

import styles from "./AdvertimentLeft.module.scss";
import { getAds } from "../../../services/home.services";
import { apiImage } from "../../../constant/api";

const cx = classNames.bind(styles);

function AdvertimentLeft() {
    const [data, setData] = useState([]);

    useEffect(() => {
        async function getData() {
            let res = await getAds({
                page: 1,
                pageSize: 10,
                MoTa: "false",
            });
            setData(res.data);
        }
        getData();
    }, []);

    return (
        <>
            <div className={cx("banner_left")}>
                {data.map(function (value: any, index: any) {
                    return (
                        <a
                            target="_blank"
                            key={index}
                            href={value.linkQuangCao} rel="noreferrer"
                        >
                            <img src={apiImage + value.anhDaiDien} alt="" />
                        </a>
                    );
                })}
            </div>
        </>
    );
}

export default AdvertimentLeft;
