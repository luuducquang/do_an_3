import React, { createContext, useEffect, useState } from "react";
import { FaBars } from "react-icons/fa";
import { FaMagnifyingGlass } from "react-icons/fa6";
import { FaShoppingCart } from "react-icons/fa";
import { Link } from "react-router-dom";
import { useRecoilValue, useSetRecoilState } from "recoil";

import MenuHeder from "../MenuHeder";
import "./Header.scss";
import logo from "../../../assets/images/logo1.png";
import { cartState } from "../../../constant/recoil";

export const isMenuContext = createContext<{
    isMenu: boolean;
    setIsMenu: any;
}>({
    isMenu: false,
    setIsMenu: () => {},
});

function Header() {
    const valueCart: any = useRecoilValue(cartState);

    const [isMenu, setIsMenu] = useState(false);

    const handleMenu = () => {
        setIsMenu(!isMenu);
    };

    const setCartValue = useSetRecoilState(cartState);

    useEffect(() => {
        let productListString = localStorage.getItem("productList");
        let listProduct = productListString
            ? JSON.parse(productListString)
            : [];
        setCartValue(listProduct);
    }, []);

    return (
        <isMenuContext.Provider value={{ isMenu, setIsMenu }}>
            <div id="header">
                <div onClick={handleMenu} className="ti-menu list">
                    {" "}
                    <FaBars />
                </div>
                <div className="banner">
                    <Link to="/">
                        <img src={logo} alt="" />
                    </Link>
                </div>
                {/* --------------Search------------------- */}
                <div className="wrap">
                    <form className="search" method="post" id="searchForm">
                        <input
                            type="text"
                            className="searchTerm"
                            placeholder="Bạn muốn tìm gì?"
                        />
                        <button
                            type="submit"
                            className="searchButton"
                            id="searchButton"
                        >
                            <FaMagnifyingGlass />
                        </button>
                    </form>
                    <span className="suggest">
                        <a href="/searchProduct/1/Sữa rửa mặt">Sữa rửa mặt</a>
                        <a href="/searchProduct/1/Serum">Serum</a>
                        <a href="/searchProduct/1/Kem chống nắng">
                            Kem chống nắng
                        </a>
                        <a href="/searchProduct/1/Tẩy trang">Tẩy trang</a>
                        <a href="/searchProduct/1/Xịt khoáng">Xịt khoáng</a>
                    </span>
                    <span className="home-search">
                        <div className="content-search">
                            {/* <a href="">
                      <div class="products-search">
                          <img src="./assets/img/Cleanser/cerave-renewing-sa-face-cleanser-for-normal-skin.png" alt="">
                          <div class="info">
                              <div class="name-search">Sữa rửa mặt Cerave Renewing SA Face Cleaner 473ml</div>
                              <div class="price-search">
                                  <span>399.000</span><sup>đ</sup>
                              </div>
                          </div>
                      </div>
                  </a> */}
                        </div>
                    </span>
                </div>
                {/* ---------------------Shop--------------- */}
                <div className="shopping">
                    <Link to="/cart" className="cartItem">
                        <FaShoppingCart className="fa-cart-shopping shop" />
                        <span className="value-cart">{valueCart.length}</span>
                    </Link>
                </div>
                {/* <div style="display: flex;height: 100%;justify-content: center;align-items: center;">
          <i style="font-size: 25px;" class="fa-solid fa-bell"></i>
      </div> */}
                {/*---------------- Login, Registry -----------*/}
                <div className="User">
                    <ul className="Login">
                        <li style={{ display: "flex" }}>
                            <a href="/login">Đăng nhập</a>
                        </li>
                    </ul>
                    <ul className="Registry">
                        <li style={{ display: "flex" }}>
                            <a href="/registry">Đăng ký</a>
                        </li>
                    </ul>
                    {/* <div className="imgUser">
                            <i title="Thông báo" className="fa-regular fa-bell" />
                            <div>
                                <img
                                className="imgCustomer"
                                title="{{customer.taikhoan}}"
                                src="{{customer.anhdaidien}}"
                                alt=""
                                />
                                <ul className="OptionUser">
                                <li>
                                    <a href="/invoice">Đơn hàng của bạn</a>
                                </li>
                                <li>
                                    <a href="/information">Thông tin tài khoản</a>
                                </li>
                                <li>
                                    <a href="/changepassword">Đổi mật khẩu</a>
                                </li>
                                <li>
                                    <a href="./login.html">
                                    Đăng xuất
                                    </a>
                                </li>
                                </ul>
                            </div>
                            <div className="helloUser">
                                <p>Xin chào,</p>
                                <p>
                                {"{"}
                                {"{"}customer.hoten{"}"}
                                {"}"}
                                </p>
                            </div>
                            </div> */}
                </div>
            </div>
            <MenuHeder />
        </isMenuContext.Provider>
    );
}

export default Header;
