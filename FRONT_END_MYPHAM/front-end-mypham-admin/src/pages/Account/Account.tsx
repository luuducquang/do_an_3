import { IoSearch } from "react-icons/io5";

function Account() {
    return (
        <div className="container">
            <form className="row g-2 align-items-center">
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
                        <option value="" disabled selected>
                            Tìm kiếm theo
                        </option>
                        <option value="TenTaiKhoan">Tên Tài Khoản</option>
                        <option value="Email">Email</option>
                        <option value="HoTen">Họ Tên</option>
                        <option value="SoDienThoai">Số Điện Thoại</option>
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
            </form>

            <div className="button mt-3">
                <button
                    ng-click="btnAdd()"
                    type="button"
                    className="btn btn-success btn-add"
                >
                    <i className="fa-solid fa-plus" />
                    Thêm Tài Khoản
                </button>
                <button type="button" className="btn btn-danger btn-del mx-1">
                    <i className="fa-solid fa-trash" />
                    Xoá Tài Khoản
                </button>
            </div>
            <table className="table table-product table-hover">
                <thead>
                    <tr className="text-center">
                        <th scope="col">Chọn</th>
                        <th>ID</th>
                        <th scope="col">Tên Tài Khoản</th>
                        <th scope="col">Email</th>
                        <th scope="col">Hành Động</th>
                    </tr>
                </thead>
                <tbody>
                    <tr className="text-center">
                        <td>
                            <input
                                className="form-check-input text-center"
                                ng-model="selected"
                                type="checkbox"
                                ng-click="toggleSelection(x)"
                            />
                        </td>
                        <td>
                            {"{"} {"{"} x.maTaiKhoan.toLocaleString('de-DE'){" "}
                            {"}"} {"}"}
                        </td>
                        <td>
                            {"{"} {"{"} x.tenTaiKhoan {"}"} {"}"}
                        </td>
                        <td>
                            {"{"} {"{"} x.email {"}"} {"}"}
                        </td>
                        <td>
                            <a
                                style={{ cursor: "pointer" }}
                                className="edit text-decoration-none"
                            >
                                <i
                                    ng-click="edit(x)"
                                    className="fa-solid fa-circle-info"
                                />
                            </a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    );
}

export default Account;
