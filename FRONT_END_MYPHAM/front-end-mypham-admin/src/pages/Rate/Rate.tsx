import { IoSearch } from "react-icons/io5";

function Rate() {
    return (
        <div className="container">
            <form className="form-group">
                <div className="row g-2 align-items-center mb-3">
                    <div className="col">
                        <input
                            className="form-control"
                            type="text"
                            placeholder="Nhập nội dung cần tìm"
                        />
                    </div>
                    <div className="col-auto">
                        <select
                            className="form-select mr-2"
                            aria-label="Default select example"
                        >
                            <option disabled selected value="">
                                Chất lượng
                            </option>
                            <option value={1}>1 Sao</option>
                            <option value={2}>2 Sao</option>
                            <option value={3}>3 Sao</option>
                            <option value={4}>4 Sao</option>
                            <option value={5}>5 Sao</option>
                        </select>
                    </div>
                    <div className="col-auto">
                        <button
                            className="btn btn-primary d-flex align-items-center w-100"
                            type="button"
                        >
                            <IoSearch className="mr-1" /> Tìm kiếm
                        </button>
                    </div>
                </div>
            </form>

            <div className="button">
                <button type="button" className="btn btn-danger btn-del">
                    <i className="fa-solid fa-trash" />
                    Xoá Đánh Giá
                </button>
            </div>
            <form action="">
                <table className="table table-hover">
                    <thead className="thead-dark">
                        <tr className="text-center">
                            <th scope="col">Chọn</th>
                            <th scope="col">ID</th>
                            <th scope="col">Tên người dùng</th>
                            <th scope="col">Tên đăng nhập</th>
                            <th scope="col">Số điện thoại</th>
                            <th scope="col">Tên sản phẩm</th>
                            <th scope="col">Chất lượng</th>
                            <th scope="col">Nội dung</th>
                            <th scope="col">Thời gian</th>
                            <th scope="col">Trạng thái</th>
                            <th scope="col">Ghi chú</th>
                            <th scope="col">Hành động</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr className="text-center">
                            <td>
                                <input
                                    className="form-check-input"
                                    ng-model="selected"
                                    type="checkbox"
                                    ng-click="toggleSelection(x)"
                                />
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.maDanhGia{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.hoTen{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.tenTaiKhoan{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.soDienThoai{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.tenSanPham{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.chatLuong{"}"}
                                {"}"}{" "}
                                <i
                                    className="fa-solid fa-star"
                                    style={{ color: "#ff9c1a" }}
                                />
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.noiDung{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"} x.thoiGian | date:'HH:mm dd/MM/yyyy'{"}"}
                                {"}"}
                            </td>
                            <td ng-style="{'color': x.trangThai === false ? '#FF0000' : '#00CC00'}">
                                {"{"}
                                {"{"}x.trangThai===true ? 'Đã mua hàng':'Chưa
                                mua hàng'{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.ghiChu{"}"}
                                {"}"}
                            </td>
                            <td>
                                <a
                                    style={{ cursor: "pointer" }}
                                    className="edit text-decoration-none"
                                >
                                    <i
                                        ng-click="edit(x)"
                                        className="fa-solid fa-pen-to-square"
                                    />
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    );
}

export default Rate;
