import { Link } from "react-router-dom";
import "./Registry.scss";

function Registry() {
    return (
        <div id="wrapper">
            <form ng-submit="createNow()" method="post" id="form-login">
                <h1 className="form-heading">Đăng ký tài khoản</h1>
                <div className="form-group">
                    <i className="fa-sharp fa-solid fa-user-secret" />
                    <input
                        ng-model="hoten"
                        type="text"
                        className="form-input name"
                        placeholder="Họ và tên"
                    />
                    <span
                        className="warning-name"
                        style={{ color: "red", display: "none" }}
                    >
                        *
                    </span>
                </div>
                <div className="form-group">
                    <i className="fa-solid fa-phone" />
                    <input
                        ng-model="sodienthoai"
                        type="tel"
                        id="sodienthoai"
                        className="form-input tel"
                        placeholder="Nhập số điện thoại"
                    />
                    <span
                        className="warning-tel"
                        style={{ color: "red", display: "none" }}
                    >
                        *
                    </span>
                </div>
                <div className="form-group">
                    <i className="fa-solid fa-envelope" />
                    <input
                        ng-model="email"
                        type="email"
                        className="form-input email"
                        placeholder="Nhập địa chỉ email"
                    />
                    <span
                        className="warning-email"
                        style={{ color: "red", display: "none" }}
                    >
                        *
                    </span>
                </div>
                <div className="form-group">
                    <i className="fa-solid fa-user" />
                    <input
                        ng-model="taikhoan"
                        type="text"
                        className="form-input user"
                        placeholder="Tên đăng nhập"
                    />
                    <span
                        className="warning-user"
                        style={{ color: "red", display: "none" }}
                    >
                        *
                    </span>
                </div>
                <div className="form-group">
                    <i className="fa-solid fa-lock" />
                    <input
                        ng-model="matkhau"
                        type="password"
                        className="form-input input-pass"
                        placeholder="Mật khẩu"
                    />
                    <span
                        className="warning-pass"
                        style={{ color: "red", display: "none" }}
                    >
                        *
                    </span>
                </div>
                <div className="form-group">
                    <i className="fa-solid fa-lock" />
                    <input
                        ng-model="matkhau2"
                        type="password"
                        className="form-input input-repass"
                        placeholder="Nhập lại mật khẩu"
                    />
                    <span
                        className="warning-repass"
                        style={{ color: "red", display: "none" }}
                    >
                        *
                    </span>
                </div>
                <div className="rule">
                    <input
                        type="checkbox"
                        style={{ transform: "scale(1.3)", marginTop: 2 }}
                        name="checkrule"
                        id="checkrule"
                    />
                    <span>
                        Tôi đã đọc và đồng ý với <a href="">điều khoản chung</a>
                        &nbsp;và &nbsp;
                        <a href="">chính sách bảo mật của SkinCare</a>
                    </span>
                </div>
                <input
                    type="submit"
                    defaultValue="Đăng ký"
                    className="form-submit"
                />
                <div className="register">
                    <ul>Tôi đã có tài khoản</ul>
                    <Link to="/login">Đăng nhập</Link>
                </div>
            </form>
        </div>
    );
}

export default Registry;
