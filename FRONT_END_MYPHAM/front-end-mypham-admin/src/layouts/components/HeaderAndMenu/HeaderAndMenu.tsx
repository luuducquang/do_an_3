import "./HeaderAndMenu.scss";

function HeaderAndMenu() {
    return (
        <>
            <div className="taskbar">
                <div
                    style={{
                        backgroundColor: "#FFCC00",
                        width: 50,
                        float: "right",
                        lineHeight: 55,
                        marginRight: 20,
                    }}
                >
                    <i
                        style={{
                            marginLeft: 8,
                            cursor: "pointer",
                            padding: 10,
                        }}
                        className="fa-solid fa-right-from-bracket"
                    />
                </div>
                {/* <div class="text-center float-end d-flex">
      <img class="imgUser" style="height: 55px; width: 55px; border-radius: 50%;" src="" alt="">
      <div style="margin: 0 10px;display: flex;flex-direction: column;align-items: flex-start;" class="h-55">
          <p class="text-center nameUser" style="font-size: 18px;color: #dbdad4;margin-bottom: -4px;margin-top: 2px;">profile</p>
          <p class="text-center" style="color: #dbdad4;">Chào mừng bạn quay trở lại</p>
      </div>
  </div> */}
                <div className="text-center float-end d-flex">
                    <i
                        style={{
                            color: "#fff",
                            fontSize: 30,
                            lineHeight: 15,
                            padding: 20,
                            cursor: "pointer",
                        }}
                        className="fa-solid fa-gear"
                    />
                </div>
                <div className="text-center float-end d-flex">
                    <i
                        style={{
                            color: "#fff",
                            fontSize: 30,
                            lineHeight: 15,
                            padding: "20px 0",
                            cursor: "pointer",
                        }}
                        className="fa-solid fa-bell"
                    />
                </div>
            </div>
            <div className="menuOption">
                <i
                    // onclick="hidemenu()"
                    className="fa-solid fa-circle-chevron-left "
                />
            </div>
            <div className="">
                <i
                    className="fa-solid fa-bars show_menu"
                    // onclick="showmenu()"
                />
                <div className="content-left">
                    {/* <i onclick="hidemenu()" class="fa-solid fa-xmark icon_menu"></i> */}
                    <nav className="nav-menu">
                        <div className="text-center p-4">
                            <img
                                className="imgUser"
                                style={{
                                    height: 100,
                                    width: 100,
                                    borderRadius: "50%",
                                    border: "solid 2px #fff",
                                }}
                                src=""
                                alt=""
                            />
                        </div>
                        <p
                            className="text-center nameUser"
                            style={{
                                fontSize: 24,
                                marginBottom: 5,
                                marginTop: "-25px",
                            }}
                        >
                            profile
                        </p>
                        <p className="text-center" style={{ color: "#dbdad4" }}>
                            Chào mừng bạn quay trở lại
                        </p>
                        <div
                            style={{
                                width: "100%",
                                height: 1,
                                backgroundColor: "aliceblue",
                                margin: "10px auto",
                            }}
                        />
                        <a href="#!/" className="button-item p-3">
                            <i className="fa-solid fa-house-laptop" />
                            Tổng quan
                        </a>
                        <a
                            href="#!product/1"
                            className="button-item p-3 productClick"
                        >
                            <i className="fa-solid fa-shop" />
                            Thông tin sản phẩm
                        </a>
                        <a href="#!billSell/1" className="button-item p-3">
                            <i className="fa-solid fa-file-invoice-dollar" />
                            Hoá đơn bán
                        </a>
                        <a href="#!importBill/1" className="button-item p-3">
                            <i className="fa-solid fa-file-lines" />
                            Hoá đơn nhập
                        </a>
                        <a href="#!news/1" className="button-item p-3">
                            <i className="fa-solid fa-newspaper" />
                            Tin Tức
                        </a>
                        <a href="#!feedback/1" className="button-item p-3">
                            <i className="fa-solid fa-comments" />
                            Đánh giá
                        </a>
                        <a href="#!category/1" className="button-item p-3">
                            <i className="fa-solid fa-tags" />
                            Danh Mục
                        </a>
                        <a href="#!categoryOffer/1" className="button-item p-3">
                            <i className="fa-solid fa-tag" />
                            Danh Mục Ưu Đãi
                        </a>
                        <a href="#!manufacturer/1" className="button-item p-3">
                            <i className="fa-solid fa-industry" />
                            Hãng Sản Xuất
                        </a>
                        <a href="#!distributor/1" className="button-item p-3">
                            <i className="fa-solid fa-house-chimney-user" />
                            Nhà Phân Phối
                        </a>
                        <a href="#!advertisement/1" className="button-item p-3">
                            <i className="fa-brands fa-adversal" />
                            Quảng Cáo
                        </a>
                        <a href="#!bannerslide/1" className="button-item p-3">
                            <i className="fa-solid fa-thumbtack" />
                            Banner Slide
                        </a>
                        <a href="#!typeaccount" className="button-item p-3">
                            <i className="fa-solid fa-user-tag" />
                            Loại Tài Khoản
                        </a>
                        <a href="#!account/1" className="button-item p-3">
                            <i className="fa-solid fa-users-gear" />
                            Tài Khoản
                        </a>
                    </nav>
                </div>
                <div className="container-right">
                    <div ng-view="" />
                </div>
            </div>
        </>
    );
}

export default HeaderAndMenu;
