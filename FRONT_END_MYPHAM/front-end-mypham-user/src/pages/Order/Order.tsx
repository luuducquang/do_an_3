import classNames from "classnames/bind";

import styles from "./Order.module.scss";
import { FaLongArrowAltRight } from "react-icons/fa";
import { Link } from "react-router-dom";
import { useEffect, useState } from "react";
import { apiImage } from "../../constant/api";
import { Button, Form, Input, Select } from "antd";

const cx = classNames.bind(styles);

const { Option } = Select;

function Order() {
    const [data, setData] = useState([]);

    const onFinish = (values: any) => {
        console.log("Received values:", values);
        // Thực hiện xử lý khi người dùng nhấn nút gửi
        // Điều hướng đến trang thanh toán và giao hàng
    };

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
                <Form
                    layout="vertical"
                    style={{ padding: "0 20px 10px 20px" }}
                    onFinish={onFinish}
                >
                    <Form.Item
                        label="Họ tên"
                        name="nameCustomer"
                        rules={[
                            {
                                required: true,
                                message: "Vui lòng nhập họ tên!",
                            },
                        ]}
                    >
                        <Input />
                    </Form.Item>
                    <Form.Item
                        label="Điện thoại"
                        name="telCustomer"
                        rules={[
                            {
                                required: true,
                                message: "Vui lòng nhập số điện thoại!",
                            },
                            {
                                pattern: /^[0-9]+$/,
                                message: "Số điện thoại không hợp lệ!",
                            },
                        ]}
                    >
                        <Input maxLength={11} />
                    </Form.Item>
                    <Form.Item
                        label="Email"
                        name="emailCustomer"
                        rules={[
                            { required: true, message: "Vui lòng nhập email!" },
                            { type: "email", message: "Email không hợp lệ!" },
                        ]}
                    >
                        <Input />
                    </Form.Item>
                    <Form.Item label="Tỉnh/TP" name="province">
                        <Select placeholder="Vui lòng chọn">
                            <Option value="tp_hcm">TP. Hồ Chí Minh</Option>
                        </Select>
                    </Form.Item>
                    <Form.Item label="Quận/Huyện" name="district">
                        <Select placeholder="Vui lòng chọn">
                            <Option value="quan_1">Quận 1</Option>
                        </Select>
                    </Form.Item>
                    <Form.Item label="Phường/Xã" name="ward">
                        <Select placeholder="Vui lòng chọn">
                            <Option value="phuong_1">Phường 1</Option>
                        </Select>
                    </Form.Item>
                    <Form.Item
                        label="Địa chỉ"
                        name="address"
                        rules={[
                            {
                                required: true,
                                message: "Vui lòng nhập địa chỉ!",
                            },
                        ]}
                    >
                        <Input />
                    </Form.Item>
                    <Form.Item
                        style={{ display: "flex", justifyContent: "center" }}
                    >
                        <Button type="primary" htmlType="submit">
                            Thanh toán và giao hàng
                        </Button>
                    </Form.Item>
                </Form>
            </div>
        </div>
    );
}

export default Order;
