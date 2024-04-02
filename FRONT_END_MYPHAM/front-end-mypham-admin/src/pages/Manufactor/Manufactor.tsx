import { IoSearch } from "react-icons/io5";

function Manufactor() {
    return (
        <>
            <div className="container">
                <form className="form-group">
                    <div className="row g-2 mb-3">
                        <div className="col">
                            <div className="input-group">
                                <input
                                    className="form-control"
                                    type="text"
                                    placeholder="Nhập tên hãng sản xuất bạn cần tìm"
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
                    <button type="button" className="btn btn-success btn-add">
                        <i className="fa-solid fa-plus" /> Thêm Hãng Sản Xuất
                    </button>
                    <button type="button" className="btn btn-danger btn-del mx-1">
                        <i className="fa-solid fa-trash" /> Xoá Hãng Sản Xuất
                    </button>
                </div>
                <form action="">
                    <table className="table table-product table-hover">
                        <thead>
                            <tr className="text-center">
                                <th scope="col">Chọn</th>
                                <th scope="col">ID</th>
                                <th scope="col">Hình Ảnh</th>
                                <th scope="col">Tên Hãng</th>
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
                                    x.maNhaSanXuat.toLocaleString('de-DE') {"}"}{" "}
                                    {"}"}
                                </td>
                                <td>
                                    <img
                                        style={{
                                            width: 100,
                                            height: 100,
                                            objectFit: "cover",
                                        }}
                                        src="{{x.anhDaiDien}}"
                                        alt=""
                                    />
                                </td>
                                <td>
                                    <a target="_blank" href="{{x.linkWeb}}">
                                        {"{"} {"{"} x.tenHang {"}"} {"}"}
                                    </a>
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
        </>
    );
}

export default Manufactor;
