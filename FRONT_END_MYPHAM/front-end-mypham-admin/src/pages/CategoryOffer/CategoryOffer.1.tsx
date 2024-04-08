import { Pagination, Table } from "antd";
import { IoSearch } from "react-icons/io5";

export function CategoryOffer() {
    const [selectedRowKeys, setSelectedRowKeys] = useState<React.Key[]>([]);
    const [listIdDelete, setListIdDelete] = useState([]);

    const rowSelection = {
        onChange: (selectedRowKeys: React.Key[], selectedRows: DataType[]) => {
            // console.log(
            //     `selectedRowKeys: ${selectedRowKeys}`,
            //     "selectedRows: ",
            //     selectedRows
            // );
            setSelectedRowKeys(selectedRowKeys);
            const listid: any = selectedRows.map(function (
                value: any,
                index: any
            ) {
                return value.maDanhMuc;
            });
            setListIdDelete(listid);
        },
        getCheckboxProps: (record: DataType) => ({
            // disabled: record.id === "Disabled User", // Column configuration not to be checked
            // name: record.name,
        }),
    };
    return (
        <>
            <div className="container">
                <form className="form-group">
                    <div className="row g-2 mb-3">
                        <div className="col">
                            <div className="input-group">
                                <input
                                    className="form-control"
                                    type="text"
                                    placeholder="Nhập tên danh mục ưu đãi bạn cần tìm"
                                />
                            </div>
                        </div>
                        <div className="col-auto">
                            <button
                                className="btn btn-primary d-flex align-items-center"
                                type="button"
                            >
                                <IoSearch className="mr-1" /> Tìm kiếm
                            </button>
                        </div>
                    </div>
                </form>
                <div className="button">
                    <button type="button" className="btn btn-success btn-add">
                        <i className="fa-solid fa-plus" /> Thêm Danh Mục Ưu Đãi
                    </button>
                    <button
                        type="button"
                        className="btn btn-danger btn-del mx-1"
                    >
                        <i className="fa-solid fa-trash" /> Xoá danh mục Ưu Đãi
                    </button>
                </div>
                <Table
                    bordered={true}
                    rowSelection={{
                        ...rowSelection,
                        selectedRowKeys: selectedRowKeys,
                    }}
                    columns={columns}
                    dataSource={dataSet}
                    loading={loading}
                    rowClassName="hover-row"
                    pagination={false}
                />
                <Pagination
                    current={currentPage}
                    total={totalCategory}
                    pageSize={10}
                    onChange={handlePageChange}
                    style={{ marginTop: "16px", textAlign: "center" }}
                />
            </div>
        </>
    );
}
