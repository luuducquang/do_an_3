function AddOrEditBannerSlide() {
    return (
        <div className="product-container">
            <div className="add-product container">
                <h4 className="text-center p-2">Thông tin slide</h4>
                <div className="form-group">
                    <label>Hình ảnh:</label>
                    <input
                        ng-model="hinhanh"
                        id="Image"
                        type="file"
                        className="form-control"
                    />
                </div>
                <img
                    style={{ width: "20%", float: "right", padding: 2 }}
                    className="Img"
                    src=""
                    alt=""
                />
                <div className="form-group">
                    <label>Tiêu đề:</label>
                    <input
                        ng-model="tieude"
                        type="text"
                        className="form-control"
                        placeholder="Tiêu đề"
                    />
                </div>
                <div className="form-group">
                    <label>Mô tả:</label>
                    <input
                        ng-model="mota"
                        type="text"
                        className="form-control"
                        placeholder="Mô tả"
                    />
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

export default AddOrEditBannerSlide;
