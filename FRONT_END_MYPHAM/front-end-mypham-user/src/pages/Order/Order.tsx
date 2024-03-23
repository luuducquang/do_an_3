import classNames from "classnames/bind";

import styles from "./Order.module.scss";
import { FaLongArrowAltRight } from "react-icons/fa";
import { Link } from "react-router-dom";

const cx = classNames.bind(styles);

function Order() {
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
                                {/* <tr>
                      <td style=" display: flex; align-items: center;"><img style="width: 20%;" src="./assets/img/Cleanser/cerave-renewing-sa-face-cleanser-for-normal-skin.png" alt=""><span class="nameItem">Sữa Rửa Mặt CeraVe Sạch Sâu Cho Da Thường Đến Da Dầu Foaming Cleanser</span></td>
                      <td>473ml</td>
                      <td><p><span class="price-item">399.000</span><sup>đ</sup></p></td>
                      <td>
                          <div class="buy-amount" style="display: flex; justify-content: center;">
                              <span style="height: 30px; width: 30px;display: flex;justify-content: center;align-items: center; outline: none; background-color: #ddd;border: none; cursor: pointer;" class="ti-minus minus"></span>
                              <input style="width: 30px; height: 30px; text-align: center;border:none; " type="text" value="1" min="1" class="amount">
                              <span style="height: 30px; width: 30px;display: flex;justify-content: center;align-items: center; outline: none; background-color: #ddd;border: none; cursor: pointer;" class="ti-plus plus"></span>  
                          </div>
                      </td>
                      <td style="cursor: pointer;"><span class="delete-cart">Xoá</span> </td>
                  </tr> */}
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
