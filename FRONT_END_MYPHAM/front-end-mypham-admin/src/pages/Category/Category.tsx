import { IoSearch } from "react-icons/io5";

function Category() {
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
                                    placeholder="Nhập tên danh mục bạn cần tìm"
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
                        <i className="fa-solid fa-plus" /> Thêm Danh Mục
                    </button>
                    <button type="button" className="btn btn-danger btn-del mx-1">
                        <i className="fa-solid fa-trash" /> Xoá danh mục
                    </button>
                </div>
                <form action="">
                    <table className="table table-product table-hover">
                        <thead>
                            <tr className="text-center">
                                <th>Chọn</th>
                                <th scope="col">ID</th>
                                <th scope="col">Tên Danh Mục</th>
                                <th scope="col">Nội dung</th>
                                <th scope="col">Trang Thái</th>
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
                                    {"{"}
                                    {
                                        "{"
                                    } x.maDanhMuc.toLocaleString('de-DE') {"}"}
                                    {"}"}
                                </td>
                                <td>
                                    {"{"}
                                    {"{"} x.tenDanhMuc {"}"}
                                    {"}"}
                                </td>
                                <td>
                                    {"{"}
                                    {"{"} x.noiDung {"}"}
                                    {"}"}
                                </td>
                                <td ng-style="{'color': x.dacBiet === true ? '#33CC00' : '#FF3300'}">
                                    {"{"}
                                    {"{"}
                                    x.dacBiet === true ? 'Hoạt động' : 'Tắt'
                                    {"}"}
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
        </>
    );
}

export default Category;
