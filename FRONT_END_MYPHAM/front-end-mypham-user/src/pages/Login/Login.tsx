import { Link } from 'react-router-dom';
import './Login.scss'

function Login() {
    return (
        <div id="wrapper">
            <form action="#" id="form-login">
                <h1 className="form-heading">Đăng nhập</h1>
                <div className="form-group">
                    <i className="fa-solid fa-user" />
                    <input
                        type="text"
                        className="form-input input-user"
                        placeholder="Tên đăng nhập"
                    />
                    <span
                        className="warning"
                        style={{ color: "red", display: "none" }}
                    >
                        *
                    </span>
                </div>
                <div className="form-group">
                    <i className="fa-solid fa-lock" />
                    <input
                        type="password"
                        className="form-input input-pass"
                        placeholder="Mật khẩu"
                    />
                    <span className="eye-close">
                        <i className="fa-solid fa-eye-slash" />
                    </span>
                    <span className="eye-open hidden">
                        <i className="fa-solid fa-eye" />
                    </span>
                    <span
                        className="warning-pass"
                        style={{ color: "red", display: "none" }}
                    >
                        *
                    </span>
                </div>
                <div className="forgot-password">
                    <Link to="/forgot">Quên mật khẩu</Link>
                </div>
                {/* <input type="submit" src="./home.html" value="Đăng nhập" class="form-submit"> */}
                <input
                    type="submit"
                    defaultValue="Đăng nhập"
                    className="form-submit"
                />
                <div className="register">
                    <ul>Bạn có tài khoản chưa?</ul>
                    <Link to="/registry">Đăng ký ngay</Link>
                </div>
            </form>
            <div
                style={{
                    display: "flex",
                    justifyContent: "center",
                    alignItems: "center",
                    position: "absolute",
                    bottom: 0,
                }}
            >
                <div style={{ color: "#fff", fontSize: 11, marginTop: 25 }}>
                    Phần mềm quản lý mỹ phẩm{" "}
                    <i className="fa-solid fa-copyright" /> SkinCare 2023 by
                    LuuDucQuang{" "}
                </div>
            </div>
        </div>
    );
}

export default Login;
