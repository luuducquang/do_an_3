import { useEffect, useState } from "react";
import { Link, useParams } from "react-router-dom";
import axios from "axios";
import classNames from "classnames/bind";

import styles from "./Category.module.scss";
import { FaShop } from "react-icons/fa6";
import {
    FaEye,
    FaLongArrowAltRight,
    FaShippingFast,
    FaStar,
} from "react-icons/fa";
import { apiImage } from "../../constant/api";
import { Pagination } from "antd";
import {
    GetProductDown,
    GetProductUp,
    getProductCategory,
    getProductSelling,
    getProductViewMost,
} from "../../services/category.service";

const cx = classNames.bind(styles);

type NewsParams = {
    page: string;
    nameCategory: any;
};

function Category() {
    const { nameCategory } = useParams<NewsParams>();
    const [currentPage, setCurrentPage] = useState(1);
    const [totalDataLength, setTotalDataLength] = useState(0);

    const handlePageChange = (page: number) => {
        setCurrentPage(page);
    };

    const [data, setData] = useState([]);
    const [activeLink, setActiveLink] = useState("newest");

    const fetchData = async () => {
        try {
            const response = await getProductCategory({
                page: currentPage,
                pageSize: 10,
                TenDanhMuc: nameCategory,
            });
            setData(response.data);
            setTotalDataLength(response.totalItems);
        } catch (error) {
            console.error("Error fetching data:", error);
        }
    };

    const handlerNew = () => {
        setActiveLink("newest");
        fetchData();
    };

    const handlerSelling = async () => {
        setActiveLink("selling");
        try {
            const response = await getProductSelling({
                page: currentPage,
                pageSize: 10,
                TenDanhMuc: nameCategory,
            });
            setData(response.data);
            setTotalDataLength(response.totalItems);
        } catch (error) {
            console.error("Error fetching data:", error);
        }
    };

    const handlerViewMost = async () => {
        setActiveLink("viewMost");
        try {
            const response = await getProductViewMost({
                page: currentPage,
                pageSize: 10,
                TenDanhMuc: nameCategory,
            });
            setData(response.data);
            setTotalDataLength(response.totalItems);
        } catch (error) {
            console.error("Error fetching data:", error);
        }
    };

    const handlerPriceUp = async () => {
        setActiveLink("priceUp");
        try {
            const response = await GetProductUp({
                page: currentPage,
                pageSize: 10,
                TenDanhMuc: nameCategory,
            });
            setData(response.data);
            setTotalDataLength(response.totalItems);
        } catch (error) {
            console.error("Error fetching data:", error);
        }
    };

    const handlerPriceDown = async () => {
        setActiveLink("priceDown");
        try {
            const response = await GetProductDown({
                page: currentPage,
                pageSize: 10,
                TenDanhMuc: nameCategory,
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
                    <Link to={`/category/${nameCategory}`}>{nameCategory}</Link>
                </div>
                <div className={cx("searchCategory")}>
                    <div className={cx("searchPriceAbout")}>
                        <form action="">
                            <label style={{ color: "gray" }}>Khoảng giá</label>
                            <input
                                className={cx("startPrice")}
                                type="text"
                                name=""
                                id=""
                            />
                            <label>-</label>
                            <input
                                className={cx("endPrice")}
                                type="text"
                                name=""
                                id=""
                            />
                            {/* <button>Tìm kiếm</button> */}
                        </form>
                        <a
                            onClick={handlerNew}
                            className={cx("Defaut", {
                                active: activeLink === "newest",
                            })}
                        >
                            Mới nhất
                        </a>
                        <a
                            onClick={handlerSelling}
                            className={cx("Defaut", {
                                active: activeLink === "selling",
                            })}
                        >
                            Bán chạy
                        </a>
                        <a
                            onClick={handlerViewMost}
                            className={cx("Defaut", {
                                active: activeLink === "viewMost",
                            })}
                        >
                            Lượt xem
                        </a>
                        <a
                            onClick={handlerPriceUp}
                            className={cx("searchLowToHigh", {
                                active: activeLink === "priceUp",
                            })}
                        >
                            Giá từ thấp đến cao
                        </a>
                        <a
                            onClick={handlerPriceDown}
                            className={cx("searchHighToLow", {
                                active: activeLink === "priceDown",
                            })}
                        >
                            Giá từ cao đến thấp
                        </a>
                    </div>
                </div>
                {data.map((value: any, index: any) => {
                    return (
                        <div key={index} className={cx("home-product-item")}>
                            <a
                                className={cx("linkproduct")}
                                href={"/detail/" + value.maSanPham}
                            >
                                <div className={cx("home-product-item_img")}>
                                    <img
                                        style={{
                                            minHeight: 200,
                                            minWidth: 100,
                                        }}
                                        src={apiImage + value.anhDaiDien}
                                        alt=""
                                    />
                                </div>
                                <h4 className={cx("home-product-item_name")}>
                                    {value.tenSanPham}
                                </h4>
                                <span className={cx("decrip-item")}>
                                    {value.moTa}
                                </span>
                            </a>
                            <span className={cx("sale-up")}>
                                {(
                                    100 -
                                    (value.giaGiam / value.gia) * 100
                                ).toFixed(0)}{" "}
                                <sup>%</sup>
                                <div>Giảm</div>
                            </span>
                            <div className={cx("home-product-item_price")}>
                                <span
                                    className={cx(
                                        "home-product-item_price_current"
                                    )}
                                >
                                    {value.giaGiam.toLocaleString("DE-de")}
                                    <sup>đ</sup>
                                </span>
                                <span
                                    className={cx(
                                        "home-product-item_price_old"
                                    )}
                                >
                                    {value.gia.toLocaleString("DE-de")}
                                    <sup>đ</sup>
                                </span>
                            </div>
                            <div className={cx("home-icon-recommend")}>
                                {value.danhGia > 0 ? (
                                    <>
                                        <span>
                                            {value.danhGia > 0
                                                ? value.danhGia.toFixed(1)
                                                : ""}
                                        </span>
                                        <FaStar className={cx("star-gold")} />

                                        <span className={cx("m03")}>|</span>
                                    </>
                                ) : (
                                    ""
                                )}
                                <span title="Đã bán">
                                    <FaShop className={cx("mtop3")} />
                                </span>
                                <span
                                    title="Đã bán"
                                    className={cx("amount-product")}
                                >
                                    {value.luotBan}
                                </span>
                                <span
                                    className={cx(
                                        "fa-solid fa-truck-fast free-ship"
                                    )}
                                />
                                <FaShippingFast className={cx("free-ship")} />
                            </div>
                            <div className={cx("view")}>
                                <FaEye className={cx("mr3")} />
                                {value.luotXem.toLocaleString("DE-de")}
                            </div>
                            <div className={cx("country")}>{value.xuatXu}</div>
                        </div>
                    );
                })}
            </div>
            {/* <div className={cx("NonOptionProduct")}>
                <div className={cx("nonProduct")}>
                    <div className={cx("showNonProduct")}>
                        <i className={cx("fa-regular fa-face-smile")} />
                    </div>
                </div>
                <div className={cx("optionNonProduct")}>
                    <p>
                        Không có sản phẩm nào phù hợp với điều kiện lọc của bạn.
                    </p>
                    <p>Bạn thử tắt điều kiện lọc và tìm lại nhé!</p>
                    <div className={cx("delOption")}>
                        <button ng-click="delOption()">Xoá bộ lọc</button>
                    </div>
                </div>
            </div> */}
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

export default Category;
