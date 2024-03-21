import { Link } from "react-router-dom";
import { FaLongArrowAltRight, FaStar } from "react-icons/fa";
import classNames from "classnames/bind";

import styles from "./Cart.module.scss";
import { useEffect, useState } from "react";
import { getProductRecomend } from "../../services/cart.service";
import { apiImage } from "../../constant/api";
import { FaShop } from "react-icons/fa6";

const cx = classNames.bind(styles);

function Cart() {
    const [dataRecomend, setDataRecomend] = useState([]);

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
                    <table>
                        <thead>
                            <tr>
                                {/* <th>
                      <input type="checkbox" name="" id="">
                  </th> */}
                                <td>Chọn</td>
                                <td>Sản Phẩm</td>
                                <td>Xuất Xứ</td>
                                <td>Dung Tích</td>
                                <td>Đơn Giá</td>
                                <td>Số Lượng</td>
                                <td>Chọn</td>
                            </tr>
                        </thead>
                        <tbody>
                            {/* <tr>
                  <td style=" display: flex; align-items: center;"><img style="width: 20%;" src="./assets/img/Makeup-remove/biodema.jpg" alt="">
                      <span class="item">
                          <span style="font-size: 14px;" class="nameItem">Nước tẩy trang Bioderma xanh Nước tẩy trang Bioderma xanhNước tẩy trang Bioderma xanhNước tẩy trang Bioderma xanh</span>
                          <div style="text-align: left; display: flex; align-items: center;"><img style="width: 40px;" src="./assets/img/deal hot.jpg" alt=""><img style="width: 20px;" src="./assets/img/shipped.png" alt="">
                              <span style="margin-left: 10px;font-size: 12px;">Miễn phí đổi trả trong 7 ngày đầu tiên</span>
                          </div>
                      </span>
                      
                  </td>
                  <td>Hàn Quốc</td>
                  <td>473ml</td>
                  <td><div>
                      <p><span style="text-decoration: line-through;" class="price-item-old">290.000</span><sup>đ</sup></p>
                      <p><span class="price-item">200.000</span><sup>đ</sup></p>
                      </div>
                  </td>
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
                    <div
                        style={{
                            textAlign: "center",
                            padding: "20px 0 10px",
                            display: "none",
                        }}
                        className={cx("null-product")}
                    >
                        Không có sản phẩm nào trong giỏ hàng
                    </div>
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
                                    0
                                </span>
                                <sup style={{ color: "#ee4d2d" }}>đ</sup>
                            </p>
                        </div>
                        <a
                            className={cx("goOrder")}
                            style={{ cursor: "pointer" }}
                        >
                            Tiến hành đặt hàng
                        </a>
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
                            <a href={"/detail/"+value.maSanPham}>
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
                            </a>
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
