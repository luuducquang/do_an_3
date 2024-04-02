function AddOrEditCategoryOffer() {
    return (
        <div className="product-container">
            <div className="add-product container">
                <h4 className="text-center p-2">Thông tin danh mục ưu đãi</h4>
                <div className="form-group">
                    <label>Tên danh mục ưu đãi:</label>
                    <input
                        id="categoryName"
                        type="text"
                        className="form-control"
                        placeholder="Tên danh mục ưu đãi"
                    />
                </div>
                <div className="form-group">
                    <label htmlFor="">Trạng thái:</label>
                    <select className="select form-select-lg status">
                        <option value="true" selected="">
                            Hoạt động
                        </option>
                        <option value="false">Tắt</option>
                    </select>
                </div>
                <div className="form-group">
                    <label>Mô tả:</label>
                    <textarea
                        id="describe"
                        name="mota"
                        rows={5}
                        cols={5}
                        className="form-control"
                        placeholder="Mô tả"
                        defaultValue={""}
                    />
                </div>
                <button
                    ng-click="addItem()"
                    type="button"
                    className="btn btn-success saveAdd"
                    style={{ margin: "0 0 10px 46%" }}
                >
                    Lưu lại
                </button>
                <button
                    ng-click="editItem()"
                    type="button"
                    className="btn btn-success saveEdit"
                    style={{ margin: "0 0 10px 46%" }}
                >
                    Lưu chỉnh sửa
                </button>
            </div>
        </div>
    );
}

export default AddOrEditCategoryOffer;
