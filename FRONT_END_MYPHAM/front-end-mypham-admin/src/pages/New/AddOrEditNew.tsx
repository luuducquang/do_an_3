function AddOrEditNew() {
    return (
        <div className="product-container">
            <div className="add-product container">
                <h4 className="text-center p-2">Tin Tức</h4>
                <div className="form-group">
                    <label>Tiêu đề:</label>
                    <textarea
                        ng-model="tieude"
                        id="describe"
                        name="mota"
                        rows={4}
                        cols={5}
                        className="form-control"
                        placeholder="Tiêu đề tổng quát"
                        defaultValue={""}
                    />
                </div>
                <div className="form-group">
                    <label>Hình Ảnh:</label>
                    <input
                        ng-model="hinhanh"
                        id="Image"
                        type="file"
                        className="form-control"
                    />
                </div>
                <img
                    style={{ width: "20%", float: "right", padding: 2 }}
                    className="ImgProduct"
                    src=""
                    alt=""
                />
                <div className="form-group">
                    <label htmlFor="">Trạng thái:</label>
                    <select
                        ng-model="trangthai"
                        className="select form-select-lg status"
                        id="statusOption"
                    >
                        <option value="" disabled="">
                            Chọn trạng thái
                        </option>
                        <option value="Ẩn">Ẩn</option>
                        <option value="Hiện">Hiện</option>
                    </select>
                </div>
                <div className="form-group">
                    <label>Nội dung:</label>
                    <div style={{ width: "70%", marginLeft: 10 }}>
                        <textarea
                            ng-model="chitiet"
                            id="editor"
                            defaultValue={""}
                        />
                    </div>
                </div>
                <button
                    ng-click="save()"
                    type="button"
                    className="btn btn-success"
                    style={{ margin: "0 0 10px 46%" }}
                >
                    {"{"}
                    {"{"}submit{"}"}
                    {"}"}
                </button>
            </div>
        </div>
    );
}

export default AddOrEditNew;
