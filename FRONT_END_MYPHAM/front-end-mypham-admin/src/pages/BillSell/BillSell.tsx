import { IoSearch } from "react-icons/io5";

function BillSell() {
    return (
        <div className="container">
            <form className="form-group">
                <div className="row g-2 align-items-center mb-3">
                    <div className="col">
                        <input
                            className="form-control"
                            type="text"
                            placeholder="Nhập từ khoá cần tìm"
                        />
                    </div>
                    <div className="col-auto">
                        <select
                            className="form-select"
                            aria-label="Default select example"
                        >
                            <option value="" disabled>
                                Tìm kiếm theo
                            </option>
                            <option value="TenKH">Tên Khách Hàng</option>
                            <option value="SDT">Số Điện Thoại</option>
                            <option value="TrangThai">Trạng Thái</option>
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

            <div className="button mt-3">
                <button className="btn btn-success btn-add ">
                    <i className="fa-solid fa-plus" />
                    Thêm Hoá Đơn Bán
                </button>
                <button className="btn btn-danger btn-del mx-1">
                    <i className="fa-solid fa-trash" />
                    Xoá Hoá Đơn Bán
                </button>
            </div>
            <form action="">
                <table className="table table-hover">
                    <thead className="thead-dark">
                        <tr className="text-center">
                            <th>Chọn</th>
                            <th>ID</th>
                            <th>Tên Khách Hàng</th>
                            <th>Tài Khoản Tạo</th>
                            <th>Tổng Giá</th>
                            <th>Địa chỉ giao</th>
                            <th>Số điện thoại</th>
                            <th>Ngày tạo</th>
                            <th>Trạng Thái</th>
                            <th>Hành Động</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr className="text-center">
                            <td>
                                <input
                                    className="form-check-input"
                                    ng-checked="all"
                                    ng-model="selected"
                                    type="checkbox"
                                    ng-click="toggleSelection(x)"
                                />
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.maHoaDon{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.tenKH{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.tenTaiKhoan{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.tongGia{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.diaChiGiaoHang{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.sdt{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.ngayTao{"}"}
                                {"}"}
                            </td>
                            <td ng-style="{'color': x.trangThai === 'Đang xử lý' ? '#FFCC00' : (x.trangThai === 'Huỷ đơn' ? '#FF3300' : '#33CC00')}">
                                {"{"}
                                {"{"}x.trangThai{"}"}
                                {"}"}
                            </td>
                            <td>
                                <a className="edit text-decoration-none">
                                    <i
                                        title="Chi tiết"
                                        ng-click="edit(x)"
                                        className="fa-solid fa-circle-info"
                                    />
                                </a>
                                <a
                                    title="Kiết xuất"
                                    target="_blank"
                                    href="./exportInvoiceToPdf.html"
                                >
                                    <i
                                        style={{ marginLeft: 15 }}
                                        ng-click="export(x)"
                                        className="fa-solid fa-file-export"
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

export default BillSell;
