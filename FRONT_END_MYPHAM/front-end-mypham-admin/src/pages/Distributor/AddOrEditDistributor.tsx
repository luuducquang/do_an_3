function AddOrEditDistributor() {
    return (
        <div className="product-container">
            <div className="add-product container">
                <h4 className="text-center p-2">Thônt tin nhà phân phối</h4>
                <div className="form-group">
                    <label>Tên nhà phân phối:</label>
                    <input
                        ng-model="tennhaphanphoi"
                        id="categoryName"
                        type="text"
                        className="form-control"
                        placeholder="Tên nhà phân phối"
                    />
                </div>
                <div className="form-group">
                    <label>Địa chỉ:</label>
                    <input
                        ng-model="diachi"
                        id="categoryName"
                        type="text"
                        className="form-control"
                        placeholder="Địa chỉ"
                    />
                </div>
                <div className="form-group">
                    <label>Số điện thoại:</label>
                    <input
                        ng-model="sodienthoai"
                        onkeypress="return isNumberKey(event)"
                        id="sodienthoai"
                        type="text"
                        className="form-control"
                        placeholder="Số điện thoại"
                    />
                </div>
                <div className="form-group">
                    <label>Link Web:</label>
                    <input
                        ng-model="linkweb"
                        onkeypress="return isNumberKey(event)"
                        id="categoryName"
                        type="text"
                        className="form-control"
                        placeholder="Link Web"
                    />
                </div>
                <div className="form-group">
                    <label>Mô tả:</label>
                    <textarea
                        ng-model="mota"
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

export default AddOrEditDistributor;
