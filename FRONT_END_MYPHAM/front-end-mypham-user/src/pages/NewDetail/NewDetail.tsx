import { FaLongArrowAltRight } from "react-icons/fa";
import { Link, useParams } from "react-router-dom";
import classNames from "classnames/bind";

import styles from "./NewDetail.module.scss";
import { useEffect, useState } from "react";
import { getNewById } from "../../services/new.service";
import { type } from "os";

const cx = classNames.bind(styles);

type DataType = {
    maTinTuc: any;
    tieuDe: any;
    luotXem: any;
    hoTen: any;
    noiDung: any;
};

function NewDetail() {
    const [data, setData] = useState<DataType>();
    const { id } = useParams();

    const fetchData = async (id: any) => {
        try {
            const response = await getNewById(id);
            setData(response);
            console.log(response);
        } catch (error) {
            console.error("Error fetching data:", error);
        }
    };

    useEffect(() => {
        fetchData(id);
    }, [id]);
    return (
        <div style={{ marginTop: 85 }} className={cx("content")}>
            <div className={cx("cleanser")}>
                <div style={{ marginTop: 10 }} className={cx("type")}>
                    <Link to="/">Trang chủ</Link>
                    <FaLongArrowAltRight className={cx("arrow-item")} />
                    <Link to={`/new`}>Tin Tức</Link>
                    <FaLongArrowAltRight className={cx("arrow-item")} />
                    <Link to={`/new/${data?.maTinTuc}`}>Tin Tức</Link>
                </div>
                <div className={cx("newsDetail")}>
                    <h1 className={cx("titleDetail")}>{data?.tieuDe}</h1>
                    <div
                        className={cx("content_detail")}
                        dangerouslySetInnerHTML={{ __html: data?.noiDung }}
                    ></div>
                    <div className={cx("view_detail")}>
                        {data?.luotXem} lượt xem
                    </div>
                    <div className={cx("view_detail")}>
                        Người đăng: {data?.hoTen}
                    </div>
                </div>
            </div>
        </div>
    );
}

export default NewDetail;
