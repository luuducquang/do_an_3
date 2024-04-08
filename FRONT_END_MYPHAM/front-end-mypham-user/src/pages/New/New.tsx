import classNames from "classnames/bind";

import styles from "./New.module.scss";
import { Link } from "react-router-dom";
import { FaEye, FaLongArrowAltRight } from "react-icons/fa";
import { useEffect, useState } from "react";
import { getNew } from "../../services/new.service";
import { apiImage } from "../../constant/api";
import { Pagination } from "antd";

const cx = classNames.bind(styles);

function New() {
    const [currentPage, setCurrentPage] = useState(1);
    const [totalDataLength, setTotalDataLength] = useState(0);

    const handlePageChange = (page: number) => {
        setCurrentPage(page);
    };

    const [data, setData] = useState([]);

    const fetchData = async () => {
        try {
            const response = await getNew({
                page: currentPage,
                pageSize: 10,
                TieuDe: "",
            });

            setData(response.data);
            setTotalDataLength(response.totalItems);
        } catch (error) {
            console.error("Error fetching data:", error);
        }
    };

    useEffect(() => {
        fetchData();
    }, [currentPage]);
    return (
        <div style={{ marginTop: 85 }} className={cx("content")}>
            <div className={cx("cleanser")}>
                <div style={{ marginTop: 10 }} className={cx("type")}>
                    <Link to="/">Trang chủ</Link>
                    <FaLongArrowAltRight className={cx("arrow-item")} />
                    <Link to={`/new`}>Tin Tức</Link>
                </div>
                <div className={cx("news")}>
                    {data.map(function (value: any, index: any) {
                        return (
                            <div key={index} className={cx("news_content")}>
                                <Link to={`/new/${value.maTinTuc}`}>
                                    <img
                                        src={apiImage + value.hinhAnh}
                                        alt=""
                                    />
                                    <div className={cx("title_news")}>
                                        {value.tieuDe}
                                    </div>
                                    <div className={cx("view_news")}>
                                        <FaEye style={{ marginRight: 2 }} />
                                        <span>{value.luotXem.toLocaleString("de-DE")}</span>
                                    </div>
                                    <div className={cx("author")}>
                                        Người đăng: {value.hoTen}
                                    </div>
                                </Link>
                            </div>
                        );
                    })}
                </div>
            </div>
            <Pagination
                current={currentPage}
                total={totalDataLength}
                pageSize={10}
                onChange={handlePageChange}
                style={{ marginTop: "16px", textAlign: "center" }}
            />
        </div>
    );
}

export default New;
