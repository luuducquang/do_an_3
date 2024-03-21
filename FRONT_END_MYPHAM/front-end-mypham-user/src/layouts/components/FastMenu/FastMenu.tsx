function FastMenu() {
    
    return (
        <div className="fast">
            <div className="fast-sale">
                <i
                    data-scroll={360}
                    className="fa-solid fa-fire fast-icon fast-color"
                >
                    <ul className="fast-title">
                        <span className="fast-arrow" />
                        Sản phẩm đang sale
                    </ul>
                </i>
            </div>
            <div className="fast-favourite">
                <i
                    data-scroll={1400}
                    className="fa-solid fa-heart fast-icon fast-color"
                >
                    <ul className="fast-title">
                        <span className="fast-arrow" />
                        Sản phẩm yêu thích
                    </ul>
                </i>
            </div>
            <div className="fast-serum">
                <i
                    data-scroll={2325}
                    className="fa-solid fa-wine-bottle fast-icon fast-color"
                >
                    <ul className="fast-title">
                        <span className="fast-arrow" />
                        Serum
                    </ul>
                </i>
            </div>
            <div className="fast-cleaser fast-icon">
                <i
                    data-scroll={2790}
                    className="fa-solid fa-face-grin-hearts fast-color"
                >
                    <ul className="fast-title">
                        <span className="fast-arrow" />
                        Sữa rửa mặt
                    </ul>
                </i>
            </div>
        </div>
    );
}

export default FastMenu;
