import { IoSearch } from "react-icons/io5";

function ImportBill() {
    return (
        <div className="container">
            <form className="form-group">
                <div className="row g-2 align-items-center mb-3">
                    <div className="col">
                        <input
                            className="form-control"
                            type="text"
                            placeholder="Nhập tên nhà phân phối cần tìm"
                        />
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

                <div className="row g-3 align-items-center mb-3">
                    <div className="col-auto">Từ ngày</div>
                    <div className="col">
                        <input
                            type="datetime-local"
                            name="start"
                            id="startdate"
                            className="form-control"
                        />
                    </div>
                    <div className="col">
                        <input
                            type="datetime-local"
                            name="end"
                            id="enddate"
                            className="form-control"
                        />
                    </div>
                </div>
            </form>
            <div className="button mt-3">
                <button className="btn btn-success btn-add">
                    <i className="fa-solid fa-plus" />
                    Thêm Hoá Đơn Nhập
                </button>
                <button className="btn btn-danger btn-del mx-1">
                    <i className="fa-solid fa-trash" />
                    Xoá Hoá Đơn Nhập
                </button>
            </div>
            <form action="">
                <table className="table table-hover">
                    <thead className="thead-dark">
                        <tr className="text-center">
                            <th>Chọn</th>
                            <th scope="col">ID</th>
                            <th scope="col">Tên Nhà Phân Phối</th>
                            <th scope="col">Ngày Tạo</th>
                            <th scope="col">Kiểu Thanh Toán</th>
                            <th scope="col">Tổng Tiền</th>
                            <th scope="col">Tài Khoản Nhập</th>
                            <th scope="col">Hành Động</th>
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
                                {"{"}x.maHoaDon{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.tenNhaPhanPhoi{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"} x.ngayTao | date:'HH:mm dd/MM/yyyy' {"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.kieuThanhToan{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.tongTien{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.tenTaiKhoan{"}"}
                                {"}"}
                            </td>
                            <td>
                                <a className="edit text-decoration-none">
                                    <i
                                        ng-click="edit(x)"
                                        className="fa-solid fa-circle-info"
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

export default ImportBill;
