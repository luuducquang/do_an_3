import { FaStar } from "react-icons/fa";
import { format } from "date-fns";
import classNames from "classnames/bind";

import styles from "./Rating.module.scss";
import { apiImage } from "../../../constant/api";
import {
    Button,
    Form,
    Pagination,
    Rate,
    Space,
    Upload,
    UploadFile,
    UploadProps,
} from "antd";
import { UploadOutlined } from "@ant-design/icons";
import { useEffect, useState } from "react";
import {
    checkBuyProduct,
    createRating,
    searchRatingUser,
} from "../../../services/rating.service";
import { getRatingProduct } from "../../../services/detail.service";

const cx = classNames.bind(styles);

type Img = {
    name: any;
};

type dataFeedback = {
    chatLuong: any;
    noiDung: any;
    anhDanhGia: any;
};

function Rating({ data, maSanPham, loadData }: any) {
    const [form] = Form.useForm();
    const [rating, setRating] = useState<number>(0);
    const [anhdaidien, setAnhDaiDien] = useState<Img[]>([]);
    const [comment, setComment] = useState("");
    const [isBuy, setIsBuy] = useState(false);
    const [isFeedback, setIsFeedback] = useState(false);
    const [dataFeedback, setDataFeedback] = useState<dataFeedback>();
    const [currentPage, setCurrentPage] = useState(1);
    const [totalItems, setTotalItems] = useState(0);

    const [dataRating, setDataRating] = useState([]);

    const handlePageChange = (page: number) => {
        setCurrentPage(page);
    };

    const handlerCommentRate = (event: any) => {
        setComment(event.target.value);
    };

    const handleRateChange = (value: number) => {
        setRating(value);
    };

    const handleSendRate = () => {
        async function checkProductBuy(id: any) {
            const res = await checkBuyProduct(id);
            const listIdProduct = res.map(function (value: any) {
                return value.maSanPham;
            });
            const search = listIdProduct.find(
                (x: number) => x === parseInt(maSanPham)
            );
            setIsBuy(search === maSanPham);

            const currentTime = new Date();
            const gmt7ISODate = currentTime.toISOString();

            await createRating({
                MaSanPham: maSanPham,
                MaTaiKhoan: user.mataikhoan,
                ChatLuong: rating,
                NoiDung: comment,
                TrangThai: isBuy,
                ThoiGian: gmt7ISODate,
                AnhDanhGia:
                    anhdaidien.length > 0 ? "/img/" + anhdaidien[0].name : "",
                GhiChu: "",
            });
            getRating(maSanPham);
            setIsFeedback(true);
            searchIsRatingUser(maSanPham);
            loadData(maSanPham);
        }
        checkProductBuy(user.mataikhoan);
    };

    const renderSatisfactionLevel = (value: number): string => {
        switch (Math.floor(value)) {
            case 1:
                return "Mức độ hài lòng: Rất không hài lòng";
            case 2:
                return "Mức độ hài lòng: Không hài lòng";
            case 3:
                return "Mức độ hài lòng: Bình thường";
            case 4:
                return "Mức độ hài lòng: Hài lòng";
            case 5:
                return "Mức độ hài lòng: Rất hài lòng";
            default:
                return "";
        }
    };

    const user = JSON.parse(localStorage.getItem("customer") || "{}");

    const upload_props: UploadProps = {
        name: "file",
        action: apiImage + "/api-admin/Image/upload",
        headers: {
            authorization: "Bearer " + user.token,
        },
        onChange(info) {
            if (info.file.status === "done") {
                form.setFieldValue(
                    "image_url",
                    info.fileList[0].response.filePath
                );
            }
        },
    };

    const handleUploadChange = ({ fileList }: { fileList: any }) => {
        const fileNames = fileList.map((file: any) => file.name);
        setAnhDaiDien(fileList);
    };

    const mapImgToUploadFile = (imgs: Img[]): UploadFile<any>[] => {
        return imgs.map((img, index) => ({
            uid: String(index),
            name: img.name,
            status: "done",
            url: `${apiImage}/img/${img.name}`,
        }));
    };

    const fileListAnhDaiDien = mapImgToUploadFile(anhdaidien);

    async function searchIsRatingUser(id: any) {
        const res = await searchRatingUser({
            page: 1,
            pageSize: 10000,
            MaSanPham: id,
        });
        const listProduct = res.data;
        const search = listProduct.find(
            (x: any) => x.maTaiKhoan === user.mataikhoan
        );
        if (search) {
            setIsFeedback(true);
            setDataFeedback(search);
        } else {
            setIsFeedback(false);
            setRating(0);
            form.resetFields();
            setComment("");
        }
    }

    async function getRating(id: any) {
        let res = await getRatingProduct({
            page: currentPage,
            pageSize: 10,
            MaSanPham: id,
        });
        setDataRating(res.data);
        setTotalItems(res.totalItems);
    }

    useEffect(() => {
        searchIsRatingUser(maSanPham);
        getRating(maSanPham);
    }, [maSanPham, currentPage]);

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
            {isFeedback ? (
                <div className={cx("stars2")}>
                    <p style={{ marginBottom: 10 }}>Bạn đã đánh giá:</p>
                    <div style={{ display: "flex" }}>
                        {(() => {
                            const stars = [];
                            for (let i = 0; i < dataFeedback?.chatLuong; i++) {
                                stars.push(
                                    <FaStar key={i} className={cx("fa-star")} />
                                );
                            }
                            return stars;
                        })()}
                    </div>
                    <p
                        className={cx("commentRated")}
                        style={{ marginLeft: 7, paddingTop: 3 }}
                    >
                        {dataFeedback?.noiDung}
                    </p>
                    <img
                        className={cx("imgRated")}
                        style={{
                            width: "20%",
                            marginLeft: 7,
                            paddingTop: 7,
                            backgroundSize: "cover",
                        }}
                        src={apiImage + dataFeedback?.anhDanhGia}
                        alt=""
                    />
                </div>
            ) : (
                <div className={cx("ratingUser")}>
                    <p>Đánh giá sản phẩm này:</p>
                    <div style={{ display: "flex", alignItems: "center" }}>
                        <Rate
                            style={{ color: "#ff9c19", fontSize: "45px" }}
                            allowHalf
                            defaultValue={0}
                            onChange={handleRateChange}
                        />
                        <div
                            style={{ marginLeft: "30px", lineHeight: "40px" }}
                            className="textStar"
                        >
                            {renderSatisfactionLevel(rating)}
                        </div>
                    </div>
                    <p>Mô tả nhận xét:</p>
                    <textarea
                        name=""
                        cols={10}
                        rows={3}
                        value={comment}
                        onChange={handlerCommentRate}
                    />
                    <span>Chọn ảnh:</span>
                    <Space
                        direction="vertical"
                        style={{ width: "100%", marginTop: "5px" }}
                        size="large"
                    >
                        <Upload
                            {...upload_props}
                            listType="picture"
                            maxCount={1}
                            onChange={handleUploadChange}
                            fileList={fileListAnhDaiDien}
                        >
                            <Button icon={<UploadOutlined />}>Upload</Button>
                        </Upload>
                    </Space>
                    {user.mataikhoan && rating > 0 && (
                        <div className={cx("sendRating")}>
                            <button
                                onClick={handleSendRate}
                                style={{ marginTop: "10px" }}
                            >
                                Viết đánh giá
                            </button>
                        </div>
                    )}
                </div>
            )}
            <div className={cx("btnNextRate")}>
                <h2>Bình luận cho sản phẩm này</h2>
            </div>
            {dataRating.length == 0 ? (
                <div
                    style={{
                        display: "flex",
                        justifyContent: "center",
                    }}
                >
                    <p className={cx("nonRate")} style={{ marginTop: 20 }}>
                        Chưa có đánh giá nào
                    </p>
                </div>
            ) : (
                <div className={cx("personrate")}>
                    {dataRating.map(function (value: any, index: any) {
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
                                                    className={cx("fa-star")}
                                                />
                                            );
                                        }
                                        return stars;
                                    })()}
                                </span>

                                <span className={cx("user")}>
                                    {value.hoTen}
                                </span>
                                <span className={cx("product-item-user")}>
                                    {value.tenSanPham}
                                </span>
                                <div>
                                    {/* <span class="fa-solid fa-check"></span> */}
                                    <span
                                        className={cx("check-buy")}
                                        style={{
                                            color:
                                                value.trangThai === false
                                                    ? "#FF0000"
                                                    : "#00CC00",
                                        }}
                                    >
                                        {value && value.trangThai
                                            ? "Đã mua hàng online"
                                            : "Chưa mua hàng"}
                                    </span>
                                </div>
                                <span className={cx("time-comment")}>
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
                                            src={apiImage + value.anhDanhGia}
                                            alt=""
                                        />
                                    )}
                                </div>
                            </div>
                        );
                    })}
                    <Pagination
                        current={currentPage}
                        total={totalItems}
                        pageSize={10}
                        onChange={handlePageChange}
                        style={{ marginTop: "16px", textAlign: "center" }}
                    />
                </div>
            )}
        </div>
    );
}

export default Rating;
