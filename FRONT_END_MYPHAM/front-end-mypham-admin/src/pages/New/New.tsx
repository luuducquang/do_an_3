import { IoSearch } from "react-icons/io5";

function New() {
    return (
        <div className="container">
            <form className="form-group">
                <div className="row g-2 align-items-center mb-3">
                    <div className="col">
                        <input
                            className="form-control"
                            type="text"
                            placeholder="Nhập tiêu đề bạn cần tìm"
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
            </form>

            <div className="button mt-3">
                <button type="button" className="btn btn-success btn-add ">
                    <i className="fa-solid fa-plus" />
                    Thêm Tin Tức
                </button>
                <button type="button" className="btn btn-danger btn-del mx-1">
                    <i className="fa-solid fa-trash" />
                    Xoá Tin Tức
                </button>
            </div>
            <form action="">
                <table className="table table-hover">
                    <thead className="thead-dark">
                        <tr className="text-center">
                            <th scope="col">Chọn</th>
                            <th scope="col">ID</th>
                            <th scope="col">Hình Ảnh</th>
                            <th scope="col">Tiêu đề</th>
                            <th scope="col">Người Đăng</th>
                            <th scope="col">Lượt Xem</th>
                            <th scope="col">Trạng Thái</th>
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
                                {"{"}x.maTinTuc{"}"}
                                {"}"}
                            </td>
                            <td>
                                <img
                                    className="img-fluid"
                                    src="{{x.hinhAnh}}"
                                    alt=""
                                />
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.tieuDe{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.hoTen{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.luotXem{"}"}
                                {"}"}
                            </td>
                            <td>
                                {"{"}
                                {"{"}x.trangThai{"}"}
                                {"}"}
                            </td>
                            <td>
                                <a className="edit text-decoration-none">
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

export default New;
