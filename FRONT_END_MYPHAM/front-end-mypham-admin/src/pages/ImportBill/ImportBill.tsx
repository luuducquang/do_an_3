import { Pagination, Table, TableColumnsType } from "antd";
import { useEffect, useState } from "react";
import { IoSearch } from "react-icons/io5";
import { MdEditSquare } from "react-icons/md";
import { searchImportBill } from "../../service/importbill.service";

interface DataType {
    key: React.Key;
    maHoaDon: any;
    maNhaPhanPhoi: any;
    tenNhaPhanPhoi: any;
    ngayTao: any;
    kieuThanhToan: any;
    tongTien: any;
    tenTaiKhoan: any;
}

function ImportBill() {
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(false);
    const [totalImportBill, setTotalImportBill] = useState(0);
    const [selectedRowKeys, setSelectedRowKeys] = useState<React.Key[]>([]);
    const [listIdDelete, setListIdDelete] = useState([]);
    const [currentPage, setCurrentPage] = useState(1);
    const [isModalOpen, setIsModalOpen] = useState(false);
    const [maHoaDon, setMaHoaDon] = useState();
    const [dataRecord, setDataRecord] = useState<DataType>();
    const [isOpenDeleteModal, setIsOpenDeleteModal] = useState(false);

    const handlePageChange = (page: number) => {
        setCurrentPage(page);
    };

    const showModal = () => {
        setIsModalOpen(true);
    };

    const handleCancelIUModal = () => {
        setIsModalOpen(false);
    };

    const handleCancelDeleteModal = () => {
        setIsOpenDeleteModal(false);
    };

    const handleClearSelection = () => {
        setSelectedRowKeys([]);
    };

    const columns: TableColumnsType<DataType> = [
        {
            title: "ID",
            dataIndex: "maHoaDon",
        },
        {
            title: "Tên Nhà Phân Phối",
            dataIndex: "tenNhaPhanPhoi",
        },
        {
            title: "Tài Khoản Nhập",
            dataIndex: "tenTaiKhoan",
        },
        {
            title: "Ngày Tạo",
            dataIndex: "ngayTao",
        },
        {
            title: "Kiểu Thanh Toán",
            dataIndex: "kieuThanhToan",
        },
        {
            title: "Tổng Tiền",
            dataIndex: "tongTien",
        },
        {
            title: "Tuỳ Chọn",
            align: "center",
            render: (_, record) => (
                <div
                    style={{ cursor: "pointer" }}
                    onClick={() => {
                        setIsModalOpen(true);
                        setMaHoaDon(record.maHoaDon);
                        setDataRecord(record);
                    }}
                >
                    <MdEditSquare style={{ fontSize: "20px" }} />
                </div>
            ),
        },
    ];

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
                return value.maHoaDon;
            });
            setListIdDelete(listid);
        },
        getCheckboxProps: (record: DataType) => ({
            // disabled: record.id === "Disabled User", // Column configuration not to be checked
            // name: record.name,
        }),
    };

    const fetchData = async () => {
        setLoading(true);
        let results = await searchImportBill({
            page: currentPage,
            pageSize: 10,
        });
        console.log(results.data);
        setData(results.data);
        setTotalImportBill(results.totalItems);
        setLoading(false);
    };

    const dataSet = data.map(function (value: any, index: any) {
        return {
            key: index + 1,
            maHoaDon: value.maHoaDon,
            maNhaPhanPhoi: value.maNhaPhanPhoi,
            tenNhaPhanPhoi: value.tenNhaPhanPhoi,
            ngayTao: value.ngayTao,
            kieuThanhToan: value.kieuThanhToan,
            tongTien: value.tongTien,
            tenTaiKhoan: value.tenTaiKhoan,
        };
    });

    useEffect(() => {
        fetchData();
    }, [currentPage]);

    return (
        <div className="container">
            <form className="form-group">
                <div className="row g-2 align-items-center mb-3">
                    <div className="col">
                        <input
                            className="form-control"
                            type="text"
                            placeholder="Nhập tên nhà phân phối cần tìm"
                        />
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

                <div className="row g-3 align-items-center mb-3">
                    <div className="col-auto">Từ ngày</div>
                    <div className="col">
                        <input
                            type="datetime-local"
                            name="start"
                            id="startdate"
                            className="form-control"
                        />
                    </div>
                    <div className="col">
                        <input
                            type="datetime-local"
                            name="end"
                            id="enddate"
                            className="form-control"
                        />
                    </div>
                </div>
            </form>
            <div className="button mt-3">
                <button className="btn btn-success btn-add">
                    <i className="fa-solid fa-plus" />
                    Thêm Hoá Đơn Nhập
                </button>
                <button className="btn btn-danger btn-del mx-1">
                    <i className="fa-solid fa-trash" />
                    Xoá Hoá Đơn Nhập
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
                total={totalImportBill}
                pageSize={10}
                onChange={handlePageChange}
                style={{ marginTop: "16px", textAlign: "center" }}
            />
        </div>
    );
}

export default ImportBill;
