function AddOrEditBillSell() {
    return (
        <div className="product-container">
            <div className="add-product container">
                <h4 className="text-center p-2">Thông tin hoá đơn bán</h4>
                {/* <button class="btn-refesh">Làm mới</button> */}
                <div className="form-group">
                    <label>Tên khách hàng:</label>
                    <input
                        ng-model="tenkhach"
                        type="text"
                        className="form-control"
                        placeholder="Tên khách hàng"
                    />
                </div>
                <div className="form-group">
                    <label>Số điện thoại:</label>
                    <input
                        ng-model="sodienthoai"
                        id="sodienthoai"
                        onkeypress="return isNumberKey(event)"
                        type="text"
                        className="form-control"
                        placeholder="Số điện thoại"
                    />
                </div>
                <div className="form-group">
                    <label>Email:</label>
                    <input
                        ng-model="email"
                        type="text"
                        className="form-control"
                        placeholder="Email"
                    />
                </div>
                <div className="form-group">
                    <label>Địa chỉ giao:</label>
                    <input
                        ng-model="diachigiao"
                        type="text"
                        className="form-control"
                        placeholder="Địa chỉ giao"
                    />
                </div>
                <div className="form-group">
                    <label>Tổng giá:</label>
                    <input
                        disabled=""
                        ng-model="tonggia"
                        onkeypress="return isNumberKey(event)"
                        type="text"
                        className="form-control tonggia"
                        placeholder="Tổng giá"
                    />
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
                    <label htmlFor="">Trạng thái:</label>
                    <select
                        ng-model="trangthai"
                        className="select form-select-lg status"
                        id="statusOption"
                        disabled=""
                    >
                        <option value="" disabled="">
                            Chọn trạng thái
                        </option>
                        <option value="Đang xử lý">Đang xử lý</option>
                        <option value="Đang giao hàng">Đang giao hàng</option>
                        <option value="Đã giao hàng">Đã giao hàng</option>
                        <option value="Đổi hàng">Đổi hàng</option>
                        <option value="Trả hàng">Trả hàng</option>
                        <option value="Hoàn tất">Hoàn tất</option>
                        <option value="Huỷ đơn">Huỷ đơn</option>
                    </select>
                </div>
                <div
                    style={{
                        border: "1px solid rgb(162, 163, 168)",
                        borderRadius: 10,
                        padding: 10,
                    }}
                >
                    <h4>Chi tiết hoá đơn bán</h4>
                    <div className="form-group">
                        <label htmlFor="">Tên sản phẩm:</label>
                        <select
                            ng-change="changeProductDetail()"
                            id="tensanpham"
                            ng-model="masanpham"
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
                            min={1}
                            type="text"
                            defaultValue={0}
                            className="form-control soluong"
                            placeholder="Số lượng"
                        />
                    </div>
                    <div className="form-group">
                        <label>Đơn giá:</label>
                        <input
                            disabled=""
                            ng-model="dongia"
                            onkeypress="return isNumberKey(event)"
                            id="Price"
                            type="text"
                            defaultValue={0}
                            className="form-control dongia"
                            placeholder="Đơn giá"
                        />
                    </div>
                    <div className="form-group">
                        <label>Tổng tiền:</label>
                        <input
                            disabled=""
                            ng-model="gia"
                            onkeypress="return isNumberKey(event)"
                            id="Price"
                            type="text"
                            defaultValue={0}
                            className="form-control tongtien"
                            placeholder="Tổng tiền"
                        />
                    </div>
                    <div className="detail">
                        <div className="icon">
                            <i
                                ng-click="refreshDetail()"
                                className="fa-solid fa-rotate-left refreshDetailProduct"
                            />
                            <i
                                ng-click="addDetail()"
                                className="fa-solid fa-plus addDetailProduct"
                            />
                            <i
                                ng-click="editDetail()"
                                className="fa-solid fa-pen-to-square editDetaolProduct"
                            />
                            <i
                                ng-click="deleteDetail()"
                                className="fa-solid fa-trash deleteDetaolProduct"
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
                                            Đơn giá
                                        </th>
                                        <th className="text-center" scope="col">
                                            Tổng giá
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr
                                        ng-click="clicktoEdit(y)"
                                        ng-repeat="y in listHoaDonBanDetail"
                                        className="text-center"
                                    >
                                        <td>
                                            {"{"}
                                            {"{"}y.maChiTietHoaDon{"}"}
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
                                            y.soLuong.toLocaleString('De-de')
                                            {"}"}
                                            {"}"}
                                        </td>
                                        <td>
                                            {"{"}
                                            {"{"}
                                            y.donGia.toLocaleString('De-de')
                                            {"}"}
                                            {"}"}
                                        </td>
                                        <td>
                                            {"{"}
                                            {"{"}
                                            y.tongGia.toLocaleString('De-de')
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

export default AddOrEditBillSell;
