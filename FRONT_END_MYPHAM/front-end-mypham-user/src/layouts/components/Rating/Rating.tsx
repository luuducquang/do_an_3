import { FaStar } from "react-icons/fa";
import { format } from "date-fns";
import classNames from "classnames/bind";

import styles from './Rating.module.scss'
import { apiImage } from "../../../constant/api";

const cx = classNames.bind(styles);



function Rating({data,dataRating}:any) {
    return ( 
        <div className={cx("rate")}>
                        <h2>Đánh giá ({dataRating.length})</h2>
                        <div className={cx("ratingheder")}>
                            <p>Đánh giá trung bình:</p>
                            <h1 style={{ fontSize: 50 }}>
                                {data.danhGia.toFixed(1)}
                                <FaStar
                                    style={{
                                        fontSize: 25,
                                        color: "#ff9c1a",
                                        marginLeft: "5px",
                                    }}
                                />
                            </h1>
                        </div>
                        <div className={cx("ratingUser")}>
                            <p>Đánh giá sản phẩm này:</p>
                            <div style={{ display: "flex" }}>
                                <div className={cx("stars")}>
                                    <FaStar className={cx("starts-Item")} />
                                    <FaStar className={cx("starts-Item")} />
                                    <FaStar className={cx("starts-Item")} />
                                    <FaStar className={cx("starts-Item")} />
                                    <FaStar className={cx("starts-Item")} />
                                </div>
                                <div
                                    style={{
                                        marginLeft: 30,
                                        lineHeight: 40,
                                    }}
                                    className={cx("textStar")}
                                />
                            </div>
                            <p>Mô tả nhận xét:</p>
                            <textarea
                                name=""
                                cols={10}
                                rows={3}
                                defaultValue={""}
                            />
                            <span>Chọn ảnh:</span>
                            <input type="file" name="" className="ratingIMG" />
                            <div className={cx("previewRating")}>
                                <img
                                    style={{
                                        width: 100,
                                        height: 100,
                                        marginTop: 5,
                                        backgroundSize: "cover",
                                    }}
                                    src=""
                                    alt=""
                                />
                            </div>
                            <div className={cx("sendRating")}>
                                <button ng-click="sendrate()">
                                    Viết đánh giá
                                </button>
                            </div>
                        </div>
                        <div className={cx("stars2")}>
                            <p style={{ marginBottom: 10 }}>Bạn đã đánh giá:</p>
                            <div style={{ display: "flex" }}>
                                <div>
                                    <i className={cx("fa-solid fa-star")} />
                                    <i className={cx("fa-solid fa-star")} />
                                    <i className={cx("fa-solid fa-star")} />
                                    <i className={cx("fa-solid fa-star")} />
                                    <i className={cx("fa-solid fa-star")} />
                                </div>
                                <div
                                    style={{
                                        marginLeft: 30,
                                        lineHeight: 40,
                                    }}
                                    className={cx("textStar")}
                                />
                            </div>
                            <p
                                className={cx("commentRated")}
                                style={{ marginLeft: 7, paddingTop: 3 }}
                            />
                            <img
                                className={cx("imgRated")}
                                style={{
                                    width: "20%",
                                    marginLeft: 7,
                                    paddingTop: 7,
                                    backgroundSize: "cover",
                                }}
                                src=""
                                alt=""
                            />
                        </div>
                        <div className={cx("btnNextRate")}>
                            <h2>Bình luận cho sản phẩm này</h2>
                            <span>
                                <button
                                    ng-click="prevRate()"
                                    className={cx("prevRate")}
                                >
                                    Trang trước
                                </button>
                                <span>|</span>
                                <button
                                    ng-click="nextRate()"
                                    className={cx("nextRate")}
                                >
                                    Trang Sau
                                </button>
                            </span>
                        </div>
                        {dataRating.length == 0 ? (
                            <div
                                style={{
                                    display: "flex",
                                    justifyContent: "center",
                                }}
                            >
                                <p
                                    className={cx("nonRate")}
                                    style={{ marginTop: 20 }}
                                >
                                    Chưa có đánh giá nào
                                </p>
                            </div>
                        ) : (
                            <div className={cx("personrate")}>
                                {dataRating.map(function (
                                    value: any,
                                    index: any
                                ) {
                                    return (
                                        <div key={index} className={cx("rate-user")}>
                                            <span className={cx("stars-rate")}>
                                                {(() => {
                                                    const stars = [];
                                                    for (
                                                        let i = 0;
                                                        i < value.chatLuong;
                                                        i++
                                                    ) {
                                                        stars.push(
                                                            <FaStar
                                                                key={i}
                                                                className={cx(
                                                                    "fa-star"
                                                                )}
                                                            />
                                                        );
                                                    }
                                                    return stars;
                                                })()}
                                            </span>

                                            <span className={cx("user")}>
                                                {value.hoTen}
                                            </span>
                                            <span
                                                className={cx(
                                                    "product-item-user"
                                                )}
                                            >
                                                {value.tenSanPham}
                                            </span>
                                            <div>
                                                {/* <span class="fa-solid fa-check"></span> */}
                                                <span
                                                    className={cx("check-buy")}
                                                    style={{
                                                        color:
                                                            value.trangThai ===
                                                            false
                                                                ? "#FF0000"
                                                                : "#00CC00",
                                                    }}
                                                >
                                                    {value && value.trangThai
                                                        ? "Đã mua hàng online"
                                                        : "Chưa mua hàng"}
                                                </span>
                                            </div>
                                            <span
                                                className={cx("time-comment")}
                                            >
                                                {format(
                                                    new Date(value.thoiGian),
                                                    "HH:mm dd/MM/yyyy"
                                                )}
                                            </span>
                                            <p>{value.noiDung}</p>
                                            <div>
                                                {value.anhDanhGia && (
                                                    <img
                                                        style={{
                                                            width: 100,
                                                            height: 100,
                                                            marginTop: 5,
                                                        }}
                                                        src={
                                                            apiImage +
                                                            value.anhDanhGia
                                                        }
                                                        alt=""
                                                    />
                                                )}
                                            </div>
                                        </div>
                                    );
                                })}
                            </div>
                        )}
                    </div>
     );
}

export default Rating;