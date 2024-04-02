function AddOrEditRate() {
    return (
        <div className="product-container">
            <div className="add-product container">
                <h4 className="text-center p-2">Thông tin đánh giá</h4>
                <div className="form-group">
                    <label>Ghi chú:</label>
                    <textarea
                        ng-model="ghichu"
                        className="form-control"
                        id="exampleFormControlTextarea1"
                        rows={3}
                        defaultValue={""}
                    />
                </div>
                <button
                    ng-click="editFeedback()"
                    type="button"
                    className="btn btn-success saveEdit"
                    style={{ margin: "0 0 10px 46%" }}
                >
                    Lưu chỉnh sửa
                </button>
            </div>
        </div>
    );
}

export default AddOrEditRate;
