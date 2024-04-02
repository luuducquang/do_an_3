function BannerSlide() {
    return (
        <div className="container">
            <div className="button">
                <button type="button" className="btn btn-success btn-add">
                    <i className="fa-solid fa-plus" /> Thêm Slide
                </button>
                <button type="button" className="btn btn-danger btn-del mx-1">
                    <i className="fa-solid fa-trash" /> Xoá Slide
                </button>
            </div>
            <form action="">
                <table className="table table-product table-hover">
                    <thead>
                        <tr className="text-center">
                            <th scope="col">Chọn</th>
                            <th>ID</th>
                            <th scope="col">Tiêu đề</th>
                            <th scope="col">Mô tả</th>
                            <th scope="col">Hình Ảnh</th>
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
                                {"{"} {"{"} x.maAnh.toLocaleString('de-DE'){" "}
                                {"}"} {"}"}
                            </td>
                            <td>
                                {"{"} {"{"} x.tieuDe {"}"} {"}"}
                            </td>
                            <td>
                                {"{"} {"{"} x.moTa {"}"} {"}"}
                            </td>
                            <td>
                                <img
                                    style={{ width: 250, height: 100 }}
                                    className="img-fluid"
                                    src="{{x.linkAnh}}"
                                    alt=""
                                />
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

export default BannerSlide;
