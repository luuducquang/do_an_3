function AddOrEditAccount() {
    return (
        <div className="product-container">
            <div className="add-product container">
                <h4 className="text-center p-2">Thông tin tài khoản</h4>
                <div className="form-group">
                    <label>Tên tài khoản:</label>
                    <input
                        ng-model="tentaikhoan"
                        id="categoryName"
                        type="text"
                        className="form-control"
                        placeholder="Tên tài khoản"
                    />
                </div>
                <div className="form-group">
                    <label>Mật khẩu:</label>
                    <input
                        ng-model="matkhau"
                        id="categoryName"
                        type="password"
                        className="form-control"
                        placeholder="Mật khẩu"
                    />
                </div>
                <div className="form-group">
                    <label>Email:</label>
                    <input
                        ng-model="email"
                        id="categoryName"
                        type="text"
                        className="form-control"
                        placeholder="Email"
                    />
                </div>
                <div
                    style={{
                        border: "1px solid rgb(162, 163, 168)",
                        borderRadius: 10,
                        padding: 10,
                    }}
                >
                    <h4>Chi tiết tài khoản</h4>
                    <div className="form-group">
                        <label htmlFor="">Loại tài khoản:</label>
                        <select
                            ng-model="loaitaikhoan"
                            id="mySelect-typeuser"
                            className="select form-select-lg"
                        >
                            <option value="">Chọn loại tài khoản</option>
                            <option
                                ng-repeat="a in listloaitk"
                                value="{{a.maLoaitaikhoan}}"
                            >
                                {"{"}
                                {"{"}a.tenLoai{"}"}
                                {"}"}
                            </option>
                        </select>
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
                        <label>Ảnh đại diện:</label>
                        <input
                            ng-model="anhdaidien"
                            id="Image"
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
                        className="Img"
                        src=""
                        alt=""
                    />
                    <div className="form-group">
                        <label>Họ tên:</label>
                        <input
                            ng-model="hoten"
                            id="categoryName"
                            type="text"
                            className="form-control"
                            placeholder="Họ tên"
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
                    <div className="detail">
                        <div className="icon">
                            <i
                                ng-click="refreshDetail()"
                                className="fa-solid fa-rotate-left"
                            />
                            <i
                                ng-click="addDetail()"
                                className="fa-solid fa-plus addDetailAccount"
                            />
                            <i
                                ng-click="editDetail()"
                                className="fa-solid fa-pen-to-square editDetailAccount"
                            />
                            <i
                                ng-click="deleteDetail()"
                                className="fa-solid fa-trash deleteDetailAccount"
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
                                            Ảnh
                                        </th>
                                        <th className="text-center" scope="col">
                                            Loại tài khoản
                                        </th>
                                        <th className="text-center" scope="col">
                                            Họ tên
                                        </th>
                                        <th className="text-center" scope="col">
                                            Địa chỉ
                                        </th>
                                        <th className="text-center" scope="col">
                                            Số điện thoại
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr
                                        ng-click="clicktoEdit(y)"
                                        ng-repeat="y in listTaiKhoanDetail"
                                        className="text-center"
                                    >
                                        <td>
                                            {"{"}
                                            {"{"}y.maChitietTaiKhoan
                                            {"}"}
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
                                            {"{"}y.tenLoai{"}"}
                                            {"}"}
                                        </td>
                                        <td>
                                            {"{"}
                                            {"{"}y.hoTen{"}"}
                                            {"}"}
                                        </td>
                                        <td>
                                            {"{"}
                                            {"{"}y.diaChi{"}"}
                                            {"}"}
                                        </td>
                                        <td>
                                            {"{"}
                                            {"{"}y.soDienThoai{"}"}
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

export default AddOrEditAccount;
