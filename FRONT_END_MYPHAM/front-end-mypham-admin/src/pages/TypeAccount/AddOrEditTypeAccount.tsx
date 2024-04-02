function AddOrEditTypeAccount() {
    return (
        <div className="product-container">
            <div className="add-product container">
                <h4 className="text-center p-2">Thông tin loại tài khoản</h4>
                <div className="form-group">
                    <label>Tên loại tài khoản:</label>
                    <input
                        ng-model="tenloai"
                        id="categoryName"
                        type="text"
                        className="form-control"
                        placeholder="Tên loại tài khoản"
                    />
                </div>
                <div className="form-group">
                    <label>Mô tả:</label>
                    <input
                        ng-model="mota"
                        id="categoryName"
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

export default AddOrEditTypeAccount;
