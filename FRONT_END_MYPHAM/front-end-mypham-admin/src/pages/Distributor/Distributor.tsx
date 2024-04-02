import { IoSearch } from "react-icons/io5";

function Distributor() {
    return (
        <div className="container">
            <form className="form-group">
                <div className="row g-2 mb-3">
                    <div className="col">
                        <div className="input-group">
                            <input
                                className="form-control"
                                type="text"
                                placeholder="Nhập tên nhà phân phối bạn cần tìm"
                            />
                        </div>
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
            </form>
            <div className="button">
                <button
                    ng-click="btnAdd()"
                    type="button"
                    className="btn btn-success btn-add"
                >
                    <i className="fa-solid fa-plus" /> Thêm Nhà Phân Phối
                </button>
                <button type="button" className="btn btn-danger btn-del mx-1">
                    <i className="fa-solid fa-trash" /> Xoá Nhà Phân Phối
                </button>
            </div>
            <form action="">
                <table className="table table-product table-hover">
                    <thead>
                        <tr className="text-center">
                            <th scope="col">Chọn</th>
                            <th scope="col">ID</th>
                            <th scope="col">Tên Nhà Phân Phối</th>
                            <th scope="col">Địa Chỉ</th>
                            <th scope="col">Số Điện Thoại</th>
                            <th scope="col">Mô Tả</th>
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
                                    defaultValue=""
                                    id="checkitem"
                                />
                            </td>
                            <td>
                                {"{"} {"{"}{" "}
                                x.maNhaPhanPhoi.toLocaleString('de-DE') {"}"}{" "}
                                {"}"}
                            </td>
                            <td>
                                <a target="_blank" href="{{x.linkWeb}}">
                                    {"{"} {"{"} x.tenNhaPhanPhoi {"}"} {"}"}
                                </a>
                            </td>
                            <td>
                                {"{"} {"{"} x.diaChi {"}"} {"}"}
                            </td>
                            <td>
                                {"{"} {"{"} x.soDienThoai {"}"} {"}"}
                            </td>
                            <td>
                                {"{"} {"{"} x.moTa {"}"} {"}"}
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

export default Distributor;
