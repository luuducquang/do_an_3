function AddOrEditImportBill() {
    return (
        <div className="product-container">
            <div className="add-product container">
                <h4 className="text-center p-2">Thông tin hoá đơn nhập</h4>
                {/* <button class="btn-refesh">Làm mới</button> */}
                <div className="form-group">
                    <label htmlFor="">Tên nhà phân phối:</label>
                    <select
                        ng-model="manhaphanphoi"
                        id="manhaphanphoi"
                        className="select form-select-lg status"
                    >
                        <option value="" disabled="">
                            Chọn nhà phân phối
                        </option>
                        <option
                            ng-repeat="y in NPP"
                            value="{{y.maNhaPhanPhoi}}"
                        >
                            {"{"}
                            {"{"}y.tenNhaPhanPhoi{"}"}
                            {"}"}
                        </option>
                    </select>
                </div>
                <div className="form-group">
                    <label>Ngày tạo:</label>
                    <input
                        disabled=""
                        id="party"
                        name="partydate"
                        type="datetime-local"
                        className="form-control"
                        placeholder="Ngày tạo"
                    />
                </div>
                <div className="form-group">
                    <label>Kiểu thanh toán:</label>
                    <select
                        ng-model="kieuthanhtoan"
                        id="kieuthanhtoan"
                        className="select form-select-lg status"
                    >
                        <option value="" disabled="">
                            Chọn kiểu thanh toán
                        </option>
                        <option value="Tiền Mặt">Tiền Mặt</option>
                        <option value="Thẻ ATM">Thẻ ngân hàng</option>
                        <option value="Thẻ visa">Thẻ visa</option>
                        <option value="Thẻ ghi nợ">Thẻ ghi nợ</option>
                        <option value="Zalo Pay">Zalo Pay</option>
                        <option value="MoMo">MoMo</option>
                        <option value="Chuyển khoản">Chuyển khoản</option>
                        <option value="Apple Pay">Apple Pay</option>
                    </select>
                </div>
                <div className="form-group">
                    <label>Tổng tiền:</label>
                    <input
                        disabled=""
                        ng-model="tongtien"
                        onkeypress="return isNumberKey(event)"
                        id="PriceTotal"
                        type="text"
                        min={0}
                        defaultValue={0}
                        className="form-control tongtien"
                        placeholder="Tổng tiền"
                    />
                </div>
                {/* <div class="form-group">
          <label for="">Tên tài khoản:</label>
          <select ng-model="mataikhoan" class="select form-select-lg status">
              <option value="" disabled>Chọn tài khoản</option>
              <option ng-repeat="y in NameAcc" value={{y.maTaiKhoan}} >{{y.tenTaiKhoan}}</option>
          </select>
      </div> */}
                <div
                    style={{
                        border: "1px solid rgb(162, 163, 168)",
                        borderRadius: 10,
                        padding: 10,
                    }}
                >
                    <h4>Chi tiết hoá đơn nhập</h4>
                    <div className="form-group">
                        <label htmlFor="">Tên sản phẩm:</label>
                        <select
                            ng-model="masanpham"
                            id="tensanpham"
                            className="select form-select-lg status"
                        >
                            <option value="" disabled="">
                                Chọn sản phẩm
                            </option>
                            <option
                                ng-repeat="y in Product"
                                value="{{y.maSanPham}}"
                            >
                                {"{"}
                                {"{"}y.tenSanPham{"}"}
                                {"}"}
                            </option>
                        </select>
                    </div>
                    <div className="form-group">
                        <label>Số lượng:</label>
                        <input
                            ng-change="editAmount()"
                            onkeypress="return isNumberKey(event)"
                            ng-model="soluong"
                            id="Quantity"
                            type="text"
                            min={1}
                            defaultValue={0}
                            className="form-control soluong"
                            placeholder="Số lượng"
                        />
                    </div>
                    <div className="form-group">
                        <label>Đơn vị tính:</label>
                        <input
                            ng-model="donvitinh"
                            type="text"
                            className="form-control"
                            placeholder="Đơn vị tính"
                        />
                    </div>
                    <div className="form-group">
                        <label>Giá nhập:</label>
                        <input
                            ng-change="editPrice()"
                            onkeypress="return isNumberKey(event)"
                            ng-model="gianhap"
                            id="Price"
                            type="text"
                            min={0}
                            defaultValue={0}
                            className="form-control gianhap"
                            placeholder="Giá nhập"
                        />
                    </div>
                    <div className="form-group">
                        <label>Tổng giá:</label>
                        <input
                            disabled=""
                            ng-model="tonggia"
                            onkeypress="return isNumberKey(event)"
                            id="Price"
                            type="text"
                            min={0}
                            defaultValue={0}
                            className="form-control tonggia"
                            placeholder="Tổng giá"
                        />
                    </div>
                    <div className="detail">
                        <div className="icon">
                            <i
                                ng-click="refreshDetail()"
                                className="fa-solid fa-rotate-left"
                            />
                            <i
                                ng-click="addDetail()"
                                className="fa-solid fa-plus addimportBill"
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
                        <form action="">
                            <table className="table table-product table-hover">
                                <thead>
                                    <tr>
                                        <th className="text-center" scope="col">
                                            ID
                                        </th>
                                        <th className="text-center" scope="col">
                                            Hình Ảnh
                                        </th>
                                        <th className="text-center" scope="col">
                                            Tên sản phẩm
                                        </th>
                                        <th className="text-center" scope="col">
                                            Số lượng
                                        </th>
                                        <th className="text-center" scope="col">
                                            Đơn vị tính
                                        </th>
                                        <th className="text-center" scope="col">
                                            Giá nhập
                                        </th>
                                        <th className="text-center" scope="col">
                                            Tổng giá
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr
                                        ng-click="clicktoEdit(y)"
                                        ng-repeat="y in listHoaDonNhapDetail"
                                        className="text-center"
                                    >
                                        <td>
                                            {"{"}
                                            {"{"}y.id{"}"}
                                            {"}"}
                                        </td>
                                        <td>
                                            <img
                                                style={{
                                                    width: 100,
                                                    height: 100,
                                                    backgroundSize: "cover",
                                                }}
                                                src="{{y.anhDaiDien}}"
                                                alt=""
                                            />
                                        </td>
                                        <td>
                                            {"{"}
                                            {"{"}y.tenSanPham{"}"}
                                            {"}"}
                                        </td>
                                        <td>
                                            {"{"}
                                            {"{"}
                                            y.soLuong.toLocaleString('de-DE')
                                            {"}"}
                                            {"}"}
                                        </td>
                                        <td>
                                            {"{"}
                                            {"{"}y.donViTinh{"}"}
                                            {"}"}
                                        </td>
                                        <td>
                                            {"{"}
                                            {"{"}
                                            y.giaNhap.toLocaleString('de-DE')
                                            {"}"}
                                            {"}"}
                                        </td>
                                        <td>
                                            {"{"}
                                            {"{"}
                                            y.tongGia.toLocaleString('de-DE')
                                            {"}"}
                                            {"}"}
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
                <button
                    ng-click="addBill()"
                    type="button"
                    className="btn btn-success saveAdd"
                    style={{ margin: "10px 0 10px 42%" }}
                >
                    Thêm mới
                </button>
            </div>
        </div>
    );
}

export default AddOrEditImportBill;
