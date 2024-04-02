function AddOrEditManufactor() {
    return (
        <div className="product-container">
            <div className="add-product container">
                <h4 className="text-center p-2">Thông tin hãng sản xuất</h4>
                <div className="form-group">
                    <label>Tên hãng sản xuất:</label>
                    <input
                        ng-model="tenhang"
                        id="categoryName"
                        type="text"
                        className="form-control"
                        placeholder="Tên hãng sản xuất"
                    />
                </div>
                <div className="form-group">
                    <label>Link web hãng:</label>
                    <input
                        ng-model="linkweb"
                        id="categoryName"
                        type="text"
                        className="form-control"
                        placeholder="Link Web Hãng"
                    />
                </div>
                <div className="form-group">
                    <label>Ảnh hãng:</label>
                    <input
                        ng-model="anhhang"
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

export default AddOrEditManufactor;
