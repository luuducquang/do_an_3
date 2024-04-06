import classNames from "classnames/bind";

import styles from "./Order.module.scss";
import { FaLongArrowAltRight } from "react-icons/fa";
import { Link } from "react-router-dom";
import { useEffect, useState } from "react";
import { apiImage } from "../../constant/api";

const cx = classNames.bind(styles);

function Order() {
    const [data, setData] = useState([]);
    useEffect(() => {
        let productBuyString = localStorage.getItem("listProductBuy");
        let dataBuy = productBuyString ? JSON.parse(productBuyString) : [];
        setData(dataBuy);
    }, []);
    return (
        <div className={cx("content")}>
            <div className={cx("order-cart-shop")}>
                <div className={cx("type")}>
                    <Link to="/">Trang chủ</Link>
                    <FaLongArrowAltRight className={cx("arrow-item")} />
                    <Link to="/cart">Giỏ hàng</Link>
                    <FaLongArrowAltRight className={cx("arrow-item")} />
                    <Link to="/order">Đặt hàng</Link>
                </div>
                <div className={cx("order-cart-shop-content")}>
                    <form action="#">
                        <table>
                            <thead>
                                <tr>
                                    <td>Sản Phẩm</td>
                                    <td>Dung Tích</td>
                                    <td>Đơn Giá</td>
                                    <td>Số Lượng</td>
                                </tr>
                            </thead>
                            <tbody>
                                {data.map(function (value: any, index: any) {
                                    return (
                                        <tr key={index}>
                                            <td
                                                style={{
                                                    display: "flex",
                                                    alignItems: "center",
                                                }}
                                            >
                                                <img
                                                    style={{
                                                        width: "20%",
                                                        padding: 10,
                                                    }}
                                                    src={apiImage + value.img}
                                                    alt=""
                                                />
                                                <a
                                                    style={{
                                                        textDecoration: "none",
                                                        fontSize: 14,
                                                    }}
                                                    href={`#!/product/${value.id}`}
                                                    className="nameItem"
                                                >
                                                    {value.name}
                                                </a>
                                            </td>
                                            <td style={{ fontSize: 14 }}>
                                                {value.size}
                                            </td>
                                            <td>
                                                <div
                                                    style={{
                                                        display: "flex",
                                                        justifyContent:
                                                            "center",
                                                    }}
                                                >
                                                    <p>
                                                        <span
                                                            style={{
                                                                fontSize: 14,
                                                                color: "#888888",
                                                                textDecoration:
                                                                    "line-through",
                                                            }}
                                                            className={cx(
                                                                "price-item"
                                                            )}
                                                        >
                                                            {value.priceOld.toLocaleString(
                                                                "DE-de"
                                                            )}
                                                        </span>
                                                        <sup
                                                            style={{
                                                                color: "#888888",
                                                            }}
                                                        >
                                                            đ
                                                        </sup>
                                                    </p>
                                                    <p>
                                                        <span
                                                            style={{
                                                                fontSize: 14,
                                                                marginLeft: 5,
                                                            }}
                                                            className={cx(
                                                                "price-item"
                                                            )}
                                                        >
                                                            {value.price.toLocaleString(
                                                                "DE-de"
                                                            )}
                                                        </span>
                                                        <sup>đ</sup>
                                                    </p>
                                                </div>
                                            </td>
                                            <td>
                                                <div
                                                    className={cx("buy-amount")}
                                                    style={{
                                                        display: "flex",
                                                        justifyContent:
                                                            "center",
                                                    }}
                                                >
                                                    <span
                                                        style={{
                                                            height: 30,
                                                            width: 30,
                                                            display: "flex",
                                                            justifyContent:
                                                                "center",
                                                            alignItems:
                                                                "center",
                                                            outline: "none",
                                                            border: "1px solid #ddd",
                                                            cursor: "pointer",
                                                        }}
                                                        className={cx(
                                                            "ti-minus minus"
                                                        )}
                                                    />
                                                    <input
                                                        style={{
                                                            width: 30,
                                                            height: 30,
                                                            textAlign: "center",
                                                            border: "1px solid #ddd",
                                                        }}
                                                        type="text"
                                                        defaultValue={
                                                            value.amount
                                                        }
                                                        min={1}
                                                        className={cx("amount")}
                                                    />
                                                    <span
                                                        style={{
                                                            height: 30,
                                                            width: 30,
                                                            display: "flex",
                                                            justifyContent:
                                                                "center",
                                                            alignItems:
                                                                "center",
                                                            outline: "none",
                                                            border: "1px solid #ddd",
                                                            cursor: "pointer",
                                                        }}
                                                        className={cx(
                                                            "ti-plus plus"
                                                        )}
                                                    />
                                                </div>
                                            </td>
                                        </tr>
                                    );
                                })}
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
            <div
                style={{ textDecoration: "none" }}
                className={cx("total-order")}
            >
                <form action="#">
                    <table>
                        <tbody>
                            <tr>
                                <td>Phí tạm tính: </td>
                                <td>
                                    <span className={cx("totalPriceCart")}>
                                        100.000
                                    </span>
                                    <sup>đ</sup>
                                </td>
                            </tr>
                            <tr>
                                <td>Phụ phí: </td>
                                <td>
                                    <span>0</span>
                                    <sup>đ</sup>
                                </td>
                            </tr>
                            <tr>
                                <td>Phí vận chuyển: </td>
                                <td>
                                    <span className={cx("transport_oder")}>
                                        30.000
                                    </span>
                                    <sup>đ</sup>
                                </td>
                            </tr>
                            <tr>
                                <td>Giảm giá: </td>
                                <td>
                                    <span>0</span>
                                    <sup>đ</sup>
                                </td>
                            </tr>
                            <tr>
                                <td style={{ borderTop: "1px solid #E1E1E1" }}>
                                    Tổng thanh toán:
                                </td>
                                <td
                                    className={cx("total_order")}
                                    style={{ borderTop: "1px solid #E1E1E1" }}
                                >
                                    <span
                                        style={{
                                            fontFamily:
                                                "Arial, Helvetica, sans-serif",
                                            fontSize: 20,
                                        }}
                                        className={cx("total_all")}
                                    >
                                        100.000
                                    </span>
                                    <sup>đ</sup>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
            <div className={cx("address-delivery")}>
                <h2>Vui lòng chọn địa chỉ giao hàng</h2>
                <form action="#">
                    <table>
                        <tbody>
                            <tr>
                                <td>
                                    Họ tên:{" "}
                                    <sup className={cx("war-name")}>*</sup>
                                </td>
                                <td>
                                    Điện thoại:{" "}
                                    <sup className={cx("war-tel")}>*</sup>
                                </td>
                                <td>
                                    Email:{" "}
                                    <sup className={cx("war-name")}>*</sup>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input
                                        type="text"
                                        name=""
                                        id=""
                                        className={cx("name-delivery")}
                                    />
                                </td>
                                <td>
                                    <input
                                        id="sodienthoai"
                                        type="text"
                                        name=""
                                        className={cx("tel-delivery")}
                                    />
                                </td>
                                <td>
                                    <input
                                        type="text"
                                        name=""
                                        id=""
                                        className={cx("email-delivery")}
                                    />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Tỉnh/TP:{" "}
                                    <sup className={cx("war-city")}>*</sup>
                                </td>
                                <td>
                                    Quận/Huyện:{" "}
                                    <sup className={cx("war-province")}>*</sup>
                                </td>
                                <td>
                                    Phường/Xã:{" "}
                                    <sup className={cx("war-commune")}>*</sup>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <select
                                        style={{ width: "90%", height: 30 }}
                                        name=""
                                        id="province"
                                    >
                                        <option value="">Vui lòng chọn</option>
                                    </select>
                                </td>
                                <td>
                                    <select
                                        style={{ width: "90%", height: 30 }}
                                        name=""
                                        id="district"
                                    >
                                        <option value="">Vui lòng chọn</option>
                                    </select>
                                </td>
                                <td>
                                    <select
                                        style={{ width: "90.5%", height: 30 }}
                                        name=""
                                        id="ward"
                                    >
                                        <option value="">Vui lòng chọn</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Địa chỉ:{" "}
                                    <sup className={cx("war-address")}>*</sup>
                                </td>
                            </tr>
                            <tr>
                                <td colSpan={3}>
                                    <input
                                        style={{ width: "97.5%" }}
                                        type="text"
                                        name=""
                                        id=""
                                        className={cx("input-address")}
                                    />
                                </td>
                            </tr>
                            <tr className={cx("payment")}>
                                <td
                                    style={{ paddingTop: 20 }}
                                    className={cx("back")}
                                >
                                    <div>
                                        <i
                                            className={cx(
                                                "fa-solid fa-backward"
                                            )}
                                        />
                                        Tiếp tục mua hàng
                                    </div>
                                </td>
                                <td
                                    ng-click="orderNow()"
                                    style={{ paddingTop: 20, float: "right" }}
                                    className={cx("let-go")}
                                >
                                    <div>Thanh toán và giao hàng</div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    );
}

export default Order;
