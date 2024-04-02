import classNames from "classnames/bind";
import { IoSearch } from "react-icons/io5";

import styles from "./Product.module.scss";

const cx = classNames.bind(styles);

function Product() {
    return (
        <div className="container">
            <form className="form-group">
                <div className="row g-2 align-items-center mb-3">
                    <div className="col">
                        <input
                            type="text"
                            className="form-control"
                            placeholder="Nhập từ khoá cần tìm"
                        />
                    </div>
                    <div className="col-auto">
                        <select
                            className="form-select"
                            aria-label="Default select example"
                        >
                            <option value="">Tìm kiếm theo</option>
                            <option value="TenSanPham">Tên Sản Phẩm</option>
                            <option value="TenDanhMuc">Tên Danh Mục</option>
                            <option value="Tendanhmucuudai">
                                Tên Danh Mục Ưu Đãi
                            </option>
                            <option value="TenNhaPhanPhoi">
                                Tên Nhà Phân Phối
                            </option>
                            <option value="TenHang">Tên Hãng Sản Xuất</option>
                            <option value="XuatXu">Xuất Xứ</option>
                        </select>
                    </div>
                    <div className="col-auto">
                        <button
                            className="btn btn-primary d-flex align-items-center"
                            type="button"
                        >
                            <IoSearch className="mr-1" /> Tìm kiếm
                        </button>
                    </div>
                </div>
                <div className="row" style={{ width: "50%", marginLeft: 3 }}>
                    <div className="range-container col">
                        <label className="range-label" htmlFor="giaMin">
                            Giá Min:
                        </label>
                        <input
                            type="range"
                            className="form-range"
                            id="giaMin"
                            min={0}
                            max={4999999}
                            step={1}
                            defaultValue={0}
                        />
                        <span className="range-value" id="giaMinValue">
                            0
                        </span>
                    </div>
                    <div className="range-container col">
                        <label className="range-label" htmlFor="giaMax">
                            Giá Max:
                        </label>
                        <input
                            type="range"
                            className="form-range"
                            id="giaMax"
                            min={0}
                            max={4999999}
                            step={1}
                            defaultValue={4999999}
                        />
                        <span className="range-value" id="giaMaxValue">
                            4999999
                        </span>
                    </div>
                </div>
            </form>

            <div className="button">
                <button type="button" className="btn btn-success btn-add">
                    <i className="fa-solid fa-plus" /> Thêm sản phẩm
                </button>
                <button type="button" className="btn btn-danger btn-del mx-1">
                    <i className="fa-solid fa-trash" /> Xoá sản phẩm
                </button>
                <button type="button" className="btn btn-primary btn-up5 mx-1">
                    <i className="fa-solid fa-circle-up" /> Tăng 5% giá bán
                </button>
                <button type="button" className="btn btn-secondary btn-down5">
                    <i className="fa-solid fa-circle-down" /> Giảm 5% giá bán
                </button>
            </div>

            <form>
                <table className="table table-hover">
                    <thead>
                        <tr className="text-center">
                            <th scope="col">Chọn</th>
                            <th scope="col">ID</th>
                            <th scope="col">Tên Sản Phẩm</th>
                            <th scope="col">Hình Ảnh</th>
                            <th scope="col">Giá Bán</th>
                            <th scope="col">Số Lượng</th>
                            <th scope="col">Đã Bán</th>
                            <th scope="col">Đánh giá</th>
                            <th scope="col">Trọng Lượng</th>
                            <th scope="col">Danh mục</th>
                            <th scope="col">Danh mục ưu đãi</th>
                            <th scope="col">Mô tả</th>
                            <th scope="col">Trạng Thái</th>
                            <th scope="col">Hành Động</th>
                        </tr>
                    </thead>
                    <tbody>
                        {/* Dữ liệu sản phẩm được lặp và render ở đây */}
                    </tbody>
                </table>
            </form>
        </div>
    );
}

export default Product;
