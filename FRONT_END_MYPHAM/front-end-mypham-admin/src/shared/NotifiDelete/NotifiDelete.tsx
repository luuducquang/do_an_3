import classNames from "classnames/bind";
import styles from "./NotifiDelete.module.scss";

const cx = classNames.bind(styles);

function NotifiDelete() {
    return (
        <div className={cx("notifi")}>
            <div className={cx("notifi-btn")}>
                <p className="text-center p-3" style={{ marginBottom: 0 }}>
                    Bạn có chắc chắn muốn xoá không ?
                </p>
                <div className="text-center">
                    <button type="button" className="yes-btn btn btn-success">
                        Đồng ý
                    </button>
                    <button type="button" className="no-btn btn btn-secondary">
                        Quay lại
                    </button>
                </div>
            </div>
        </div>
    );
}

export default NotifiDelete;
