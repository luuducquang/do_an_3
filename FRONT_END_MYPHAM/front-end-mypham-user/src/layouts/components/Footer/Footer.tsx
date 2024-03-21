import { FaCcMastercard, FaCcPaypal, FaCcVisa, FaCreditCard, FaFacebook, FaInstagram } from "react-icons/fa6";
import { TfiTruck } from "react-icons/tfi";
import { GoGift } from "react-icons/go";
import { IoHomeOutline } from "react-icons/io5";
import { IoSettingsOutline } from "react-icons/io5";

import './Footer.scss'
import logo from '../../../assets/images/fapage.png'

function Footer() {
    return ( 
        <>
                <div id="footer">
                    <div className="footer-transport">
                        <div className="transport">
                            <div className="policy">
                                <TfiTruck className="truck"/>
                                <h3 className="policy-name">
                                    CHÍNH SÁCH HỖ TRỢ
                                </h3>
                                <div className="policy-content">
                                    Giảm 50% phí vận chuyển ngoại tỉnh
                                </div>
                            </div>
                            <div className="policy">
                                <GoGift className="truck"/>
                                <h3 className="policy-name">GIÁ CẠNH TRANH</h3>
                                <div className="policy-content">
                                    Cạnh tranh, chi phí phát sinh thấp
                                </div>
                            </div>
                            <div className="policy">
                                <IoHomeOutline className="truck" />
                                <h3 className="policy-name">
                                    MIỄN PHÍ KHẢO SÁT
                                </h3>
                                <div className="policy-content">
                                    Tư vấn khảo sát tại nhà không cần đặt cọc
                                    (Duy nhất)
                                </div>
                            </div>
                            <div className="policy">
                                <IoSettingsOutline className="truck"/>
                                <h3 className="policy-name">
                                    BẢO HÀNH VƯỢT TRỘI
                                </h3>
                                <div className="policy-content">
                                    Hỗ trợ 1 năm bảo hành kèm gói bảo trì 6
                                    tháng/1 lần
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="footer-suport">
                        <div className="suport">
                            <table>
                                <tbody>
                                    <tr>
                                        <td className="title-footer">
                                            HỖ TRỢ KHÁCH HÀNG
                                        </td>
                                        <td className="title-footer">
                                            VỀ CHÚNG TÔI
                                        </td>
                                        <td className="title-footer">
                                            MẠNG XÃ HỘI
                                        </td>
                                        <td className="title-footer">
                                            FANPAGE
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span className="fa-sharp fa-solid fa-play" />
                                            <span>
                                                <a href="">
                                                    Hướng dẫn mua hàng
                                                </a>
                                            </span>
                                        </td>
                                        <td>
                                            <span className="fa-sharp fa-solid fa-play" />
                                            <span>
                                                <a href="">
                                                    Sứ mệnh và tầm nhìn
                                                </a>
                                            </span>
                                        </td>
                                        <td rowSpan={2}>
                                            <a href="https://www.facebook.com/luuducquang">
                                                <FaFacebook className="fa-brands fa-square-facebook"/>
                                            </a>
                                            <a href="https://www.instagram.com/kuanq_ne/">
                                                <FaInstagram className="fa-brands fa-instagram" />
                                            </a>
                                        </td>
                                        <td className="img-fanpage" rowSpan={5}>
                                            <a
                                                target="_blank"
                                                href="https://www.facebook.com/luuducquang"
                                            >
                                                <img
                                                    src={logo}
                                                    alt=""
                                                />
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span className="fa-sharp fa-solid fa-play" />
                                            <span>
                                                <a href="">
                                                    Chính sách vận chuyển
                                                </a>
                                            </span>
                                        </td>
                                        <td>
                                            <span className="fa-sharp fa-solid fa-play" />
                                            <span>
                                                <a href="">
                                                    Giới thiệu công ty
                                                </a>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span className="fa-sharp fa-solid fa-play" />
                                            <span>
                                                <a href="">
                                                    Chính sách bảo hành
                                                </a>
                                            </span>
                                        </td>
                                        <td>
                                            <span className="fa-sharp fa-solid fa-play" />
                                            <span>
                                                <a href="">Blog</a>
                                            </span>
                                        </td>
                                        <td className="title-footer">
                                            THANH TOÁN
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span className="fa-sharp fa-solid fa-play" />
                                            <span>
                                                <a href="">
                                                    Chính sách bảo mật thông tin
                                                </a>
                                            </span>
                                        </td>
                                        <td>
                                            <span className="fa-sharp fa-solid fa-play" />
                                            <span>
                                                <a href="">Liên hệ</a>
                                            </span>
                                        </td>
                                        <td rowSpan={2}>
                                            <FaCcVisa className="fa-brands fa-cc-visa" />
                                            <FaCcPaypal className="fa-brands fa-cc-paypal" />
                                            <FaCreditCard className="fa-regular fa-credit-card" />
                                            <FaCcMastercard className="fa-brands fa-cc-mastercard" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span className="fa-sharp fa-solid fa-play" />
                                            <span>
                                                <a href="">
                                                    Chính sách đổi trả
                                                </a>
                                            </span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div className="footer">
                        <div className="footer-contact">
                            <div className="copyright">
                                Copyright © SkinCare
                            </div>
                            {/* <div className="socials-list">
                                <a href="/">
                                    <i className="ti-facebook social-color"></i>
                                </a>
                                <a href="/">
                                    <i className="ti-instagram social-color"></i>
                                </a>
                                <a href="/">
                                    <i className="ti-youtube social-color"></i>
                                </a>
                                <a href="/">
                                    <i className="ti-pinterest social-color"></i>
                                </a>
                                <a href="/">
                                    <i className="ti-twitter social-color"></i>
                                </a>
                                <a href="/">
                                    <i className="ti-linkedin social-color"></i>
                                </a>
                            </div> */}
                        </div>
                    </div>
                </div>
            </>
     );
}

export default Footer;