import { Link } from "react-router-dom";
import { FaLongArrowAltRight, FaStar } from "react-icons/fa";
import classNames from "classnames/bind";

import styles from "./Cart.module.scss";
import { useEffect, useState } from "react";
import { getProductRecomend } from "../../services/cart.service";
import { apiImage } from "../../constant/api";
import { FaShop } from "react-icons/fa6";
import ItemCart from "../../layouts/components/ItemCart";
import { useRecoilValue } from "recoil";
import { totalPriceCartState } from "../../constant/recoil";

const cx = classNames.bind(styles);

function Cart() {
    const [dataRecomend, setDataRecomend] = useState([]);

    const totalPriceCart: number = useRecoilValue(totalPriceCartState);

    useEffect(() => {
        async function loadData() {
            let resRecomend = await getProductRecomend({
                page: 1,
                pageSize: 10,
            });
            setDataRecomend(resRecomend.data);
        }
        loadData();
    }, []);

    return (
        <div className={cx("content")}>
            <div className={cx("cart-shop")}>
                <div className={cx("type")}>
                    <Link to="/">Trang chủ</Link>
                    <FaLongArrowAltRight className={cx("arrow-item")} />
                    <Link to="/cart">Giỏ hàng</Link>
                </div>
                <form action="#">
                    <ItemCart />
                    <div className={cx("pay")}>
                        <div
                            style={{ textAlign: "right" }}
                            className={cx("price-total-cart")}
                        >
                            <p style={{ fontWeight: "normal", fontSize: 16 }}>
                                Tiền tạm tính:{" "}
                                <span
                                    style={{ color: "#ee4d2d" }}
                                    className={cx("totalPriceCart")}
                                >
                                    {totalPriceCart.toLocaleString("DE-de")}
                                </span>
                                <sup style={{ color: "#ee4d2d" }}>đ</sup>
                            </p>
                        </div>
                        {totalPriceCart === 0 ? (
                            ""
                        ) : (
                            <Link
                                to={"/order"}
                                className={cx("goOrder")}
                                style={{ cursor: "pointer" }}
                            >
                                Tiến hành đặt hàng
                            </Link>
                        )}
                    </div>
                </form>
            </div>
            <div className={cx("suggest-shop")}>
                <h2 style={{ marginBottom: 5, marginLeft: 3 }}>
                    Có thể bạn cũng thích
                </h2>
                {dataRecomend.map(function (value: any, index: any) {
                    return (
                        <div
                            key={index}
                            className={cx("cart-product-recommend")}
                        >
                            <Link to={"/detail/" + value.maSanPham}>
                                <div className={cx("product-recommend-img")}>
                                    <img
                                        src={apiImage + value.anhDaiDien}
                                        alt=""
                                    />
                                </div>
                                <span className={cx("product-recommend-price")}>
                                    {value.giaGiam.toLocaleString("DE-de")}
                                    <sup>đ</sup>
                                </span>
                                <span
                                    className={cx(
                                        "product-recommend-price-old"
                                    )}
                                >
                                    {value.gia.toLocaleString("DE-de")}
                                    <sup>đ</sup>
                                </span>
                                <div className={cx("sale-off")}>
                                    {(
                                        100 -
                                        (value.giaGiam / value.gia) * 100
                                    ).toFixed(0)}{" "}
                                    <sup>%</sup>
                                </div>
                                <div className={cx("product-recommend-name")}>
                                    {value.tenSanPham}
                                </div>
                            </Link>
                            <div className={cx("icon-recommend")}>
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
                                <FaShop />
                                <span className={cx("amount-product")}>
                                    {value.soLuong}
                                </span>
                            </div>
                            <div
                                style={{ marginBottom: "-8px" }}
                                className={cx("country")}
                            >
                                {value.xuatXu}
                            </div>
                        </div>
                    );
                })}
            </div>
        </div>
    );
}

export default Cart;
