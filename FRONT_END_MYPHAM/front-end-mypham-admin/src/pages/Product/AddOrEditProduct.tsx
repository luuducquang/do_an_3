function AddOreditProduct() {
    return (
        <>
            <div className="product-container">
                <div className="add-product container">
                    <h4 className="text-center p-2">Thông tin sản phẩm</h4>
                    <form className="form-horizontal" role="form">
                        <div className="form-group">
                            <label htmlFor="">Tên danh mục:</label>
                            <select
                                ng-model="madanhmuc"
                                id="mySelect-danhmuc"
                                className="select form-select-lg"
                            >
                                <option value="">Chọn danh mục</option>
                                <option
                                    ng-repeat="x in ListDanhMuc"
                                    value="{{x.maDanhMuc}}"
                                >
                                    {"{"}
                                    {"{"}x.tenDanhMuc{"}"}
                                    {"}"}
                                </option>
                            </select>
                        </div>
                        <div className="form-group">
                            <label htmlFor="">Tên danh mục ưu đãi:</label>
                            <select
                                ng-model="madanhmucuudai"
                                id="mySelect-danhmucuudai"
                                className="select form-select-lg"
                            >
                                <option value="">Chọn danh mục ưu đãi</option>
                                <option
                                    ng-repeat="x in ListDanhMucUuDai"
                                    value="{{x.madanhmucuudai}}"
                                >
                                    {"{"}
                                    {"{"}x.tendanhmucuudai{"}"}
                                    {"}"}
                                </option>
                            </select>
                        </div>
                        <div className="form-group">
                            <label>Tên sản phẩm:</label>
                            {/* <input ng-model="tensanpham" id="ItemName" type="text" class="form-control" placeholder="Tên sản phẩm"> */}
                            <textarea
                                ng-model="tensanpham"
                                name=""
                                id="ItemName"
                                className="form-control"
                                placeholder="Tên sản phẩm"
                                cols={30}
                                rows={3}
                                defaultValue={""}
                            />
                        </div>
                        <div className="form-group">
                            <label>Ảnh sản phẩm:</label>
                            <input
                                ng-model="anhsanpham"
                                id="ImageProduct"
                                type="file"
                                className="form-control"
                            />
                        </div>
                        <img
                            style={{
                                width: "20%",
                                float: "right",
                                padding: 2,
                            }}
                            className="ImgProduct"
                            src=""
                            alt=""
                        />
                        <div
                            style={{
                                border: "1px solid #4b4b4b",
                                borderRadius: 10,
                                padding: 10,
                                clear: "both",
                            }}
                        >
                            <div className="form-group">
                                <label>Ảnh chi tiết sản phẩm:</label>
                                <input
                                    ng-model="anhchitietsanpham"
                                    id="ImageDetail"
                                    type="file"
                                    className="form-control"
                                />
                            </div>
                            <div className="icon">
                                <i
                                    ng-click="refreshDetail()"
                                    className="fa-solid fa-rotate-left"
                                />
                                <i
                                    ng-click="addDetail()"
                                    className="fa-solid fa-plus"
                                />
                                <i
                                    ng-click="editDetail()"
                                    className="fa-solid fa-pen-to-square"
                                />
                                <i
                                    ng-click="deleteDetail()"
                                    className="fa-solid fa-trash"
                                />
                            </div>
                            <div className="imgdetail"></div>
                        </div>
                        <div className="form-group">
                            <label>
                                Giá( Giá nhập = {"{"}
                                {"{"}gianhap.toLocaleString('de-DE'){"}"}
                                {"}"}):
                            </label>
                            <input
                                ng-model="gia"
                                id="Price"
                                type="text"
                                min={0}
                                defaultValue={0}
                                className="form-control price"
                                placeholder="Giá"
                            />
                        </div>
                        <div className="form-group">
                            <label>Giá giảm:</label>
                            <input
                                ng-change="inputVal()"
                                ng-model="giagiam"
                                id="Price-down"
                                type="text"
                                min={0}
                                defaultValue={0}
                                className="form-control price-old"
                                placeholder="Giá giảm"
                            />
                        </div>
                        <div className="form-group">
                            <label>Số lượng:</label>
                            <input
                                ng-model="soluong"
                                id="Quantity"
                                type="text"
                                min={0}
                                defaultValue={0}
                                className="form-control quantity"
                                placeholder="Số lượng"
                            />
                        </div>
                        <div className="form-group">
                            <label>Trọng lượng:</label>
                            <input
                                ng-model="trongluong"
                                id="Weigh"
                                type="text"
                                className="form-control"
                                placeholder="Trọng lượng"
                            />
                        </div>
                        <div className="form-group">
                            <label htmlFor="">Trạng thái:</label>
                            <select
                                ng-model="trangthai"
                                className="select form-select-lg status"
                            >
                                <option value="">Chọn trạng thái</option>
                                <option value="true">Hoạt động</option>
                                <option value="false">Tắt</option>
                            </select>
                        </div>
                        <div className="form-group">
                            <label htmlFor="">Tên nhà sản xuất:</label>
                            <select
                                ng-model="manhasanxuat"
                                id="mySelect-producer"
                                className="select form-select-lg "
                            >
                                <option value="">Chọn nhà sản xuất</option>
                                <option
                                    ng-repeat="x in ListNhaSanXuat "
                                    value="{{x.maNhaSanXuat}}"
                                >
                                    {"{"}
                                    {"{"}x.tenHang{"}"}
                                    {"}"}
                                </option>
                            </select>
                        </div>
                        <div className="form-group">
                            <label htmlFor="">Tên nhà phân phối:</label>
                            <select
                                ng-model="manhaphanphoi"
                                id="mySelect-distributor"
                                className="select form-select-lg"
                            >
                                <option value="">Chọn nhà phân phối</option>
                                <option
                                    ng-repeat="x in ListNhaPhanPhoi "
                                    value="{{x.maNhaPhanPhoi}}"
                                >
                                    {"{"}
                                    {"{"}x.tenNhaPhanPhoi{"}"}
                                    {"}"}
                                </option>
                            </select>
                        </div>
                        <div className="form-group">
                            <label>Xuất xứ:</label>
                            <input
                                ng-model="xuatxu"
                                id="Weigh"
                                type="text"
                                className="form-control"
                                placeholder="Xuất xứ"
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
                                placeholder="Mô tả tổng quát"
                                defaultValue={""}
                            />
                        </div>
                        <div className="form-group">
                            <label>Chi tiết:</label>
                            {/* <textarea ng-model="chitiet" id="detail" rows="5" cols="5" class="form-control"
                  placeholder="Chi tiết"></textarea> */}
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
                            className="btn btn-success saveAdd"
                            style={{ margin: "0 0 10px 46%" }}
                        >
                            {"{"}
                            {"{"}submit{"}"}
                            {"}"}
                        </button>
                    </form>
                </div>
            </div>
        </>
    );
}

export default AddOreditProduct;
