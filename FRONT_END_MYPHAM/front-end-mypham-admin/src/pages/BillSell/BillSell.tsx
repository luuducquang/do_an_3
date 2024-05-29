import {
    Pagination,
    Segmented,
    Table,
    TableColumnsType,
    notification,
} from "antd";
import { useEffect, useState } from "react";
import { IoSearch } from "react-icons/io5";
import { MdEditSquare } from "react-icons/md";
import { searchBillSell } from "../../service/billsell.service";
import BillSellModal from "../../components/HandlerBillSell/BillSellModal";
import BillSellDelete from "../../components/HandlerBillSell/BillSellDelete";
import InvoiceModal from "../../components/HandlerBillSell/InvoiceModal";
import { FaFileExport } from "react-icons/fa";

interface DataType {
    key: React.Key;
    maHoaDon: any;
    tenTaiKhoan: any;
    trangThai: any;
    ngayTao: any;
    tongTien: any;
    tenKH: any;
    diaChi: any;
    email: any;
    sdt: any;
    diaChiGiaoHang: any;
}

type NotificationType = "success" | "info" | "warning" | "error";

function BillSell() {
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(false);
    const [totalBillSell, setTotalBillSell] = useState(0);
    const [selectedRowKeys, setSelectedRowKeys] = useState<React.Key[]>([]);
    const [listIdDelete, setListIdDelete] = useState([]);
    const [currentPage, setCurrentPage] = useState(1);
    const [isModalOpen, setIsModalOpen] = useState(false);
    const [isModalOpenInvoice, setIsModalOpenInvoice] = useState(false);
    const [maHoaDon, setMaHoaDon] = useState();
    const [dataRecord, setDataRecord] = useState<DataType>();
    const [isOpenDeleteModal, setIsOpenDeleteModal] = useState(false);

    const [keySearch, setKeySearch] = useState("TenKH");

    const [valueSearch, setValueSearch] = useState("");

    const [state, setState] = useState("Đang xử lý");

    const [api, contextHolder] = notification.useNotification();

    const openNotificationWithIcon = (
        type: NotificationType,
        content: string
    ) => {
        api[type]({
            message: "Thông báo",
            description: content,
        });
    };

    const handlePageChange = (page: number) => {
        setCurrentPage(page);
    };

    const showModal = () => {
        setIsModalOpen(true);
    };

    const handleCancelIUModal = () => {
        setIsModalOpen(false);
    };

    const handleCancelIUModalInvoice = () => {
        setIsModalOpenInvoice(false);
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
            title: "Tên Khách Hàng",
            dataIndex: "tenKH",
        },
        {
            title: "Tài Khoản Tạo",
            dataIndex: "tenTaiKhoan",
        },
        {
            title: "Tổng Giá",
            dataIndex: "tongTien",
            render: (text: string) => parseInt(text).toLocaleString("en-US"),
        },
        {
            title: "Địa Chỉ Giao",
            dataIndex: "diaChiGiaoHang",
        },
        {
            title: "Số Điện Thoại",
            dataIndex: "sdt",
        },
        {
            title: "Ngày Tạo",
            dataIndex: "ngayTao",
        },
        {
            title: "Trạng Thái",
            dataIndex: "trangThai",
            render: (text: string) => (
                <div style={{ color: text === "Huỷ đơn" ? "#EE0000" : "#33CC00" }}>
                    {text}
                </div>
            ),
        },
        {
            title: "Tuỳ Chọn",
            align: "center",
            render: (_, record) => (
                <div
                    style={{
                        cursor: "pointer",
                        display: "flex",
                        justifyContent: "space-between",
                    }}
                >
                    <MdEditSquare
                        onClick={() => {
                            if (record.trangThai === "Huỷ đơn") {
                                openNotificationWithIcon(
                                    "warning",
                                    "Đơn đã huỷ không thế xem!"
                                );
                            } else {
                                setIsModalOpen(true);
                                setMaHoaDon(record.maHoaDon);
                                setDataRecord(record);
                            }
                        }}
                        style={{ fontSize: "20px" }}
                    />
                    <FaFileExport
                        onClick={() => {
                            setIsModalOpenInvoice(true);
                            setMaHoaDon(record.maHoaDon);
                            setDataRecord(record);
                        }}
                        style={{ fontSize: "20px" }}
                    />
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

    const fetchData = async (keySearch: string, valueSearch: any) => {
        setLoading(true);
        let results = await searchBillSell({
            page: currentPage,
            pageSize: 10,
            TrangThai: state,
            [keySearch]: valueSearch,
        });
        setData(results.data);
        setTotalBillSell(results.totalItems);
        setLoading(false);
    };

    const handleSearch = (event: any) => {
        event.preventDefault();
        if (keySearch != "") {
            fetchData(keySearch, valueSearch);
        } else {
            openNotificationWithIcon("warning", "Vui lòng chọn loại tìm kiếm!");
        }
    };

    const dataSet = data.map(function (value: any, index: any) {
        return {
            key: index + 1,
            maHoaDon: value.maHoaDon,
            tenTaiKhoan: value.tenTaiKhoan,
            trangThai: value.trangThai,
            ngayTao: value.ngayTao,
            tongTien: value.tongGia,
            tenKH: value.tenKH,
            diaChi: value.diaChi,
            email: value.email,
            sdt: value.sdt,
            diaChiGiaoHang: value.diaChiGiaoHang,
        };
    });

    useEffect(() => {
        fetchData(keySearch, valueSearch);
    }, [currentPage, state]);

    return (
        <>
            {contextHolder}
            <div className="container">
                <form className="form-group" onSubmit={handleSearch}>
                    <div className="row g-2 align-items-center mb-3">
                        <div className="col">
                            <input
                                className="form-control"
                                type="text"
                                placeholder="Nhập từ khoá cần tìm"
                                value={valueSearch}
                                onChange={(e) => setValueSearch(e.target.value)}
                            />
                        </div>
                        <div className="col-auto">
                            <select
                                className="form-select"
                                aria-label="Default select example"
                                value={keySearch}
                                onChange={(e) => setKeySearch(e.target.value)}
                            >
                                <option value="" disabled>
                                    Tìm kiếm theo
                                </option>
                                <option value="TenKH">Tên Khách Hàng</option>
                                <option value="SDT">Số Điện Thoại</option>
                            </select>
                        </div>
                        <div className="col-auto">
                            <button
                                className="btn btn-primary d-flex align-items-center w-100"
                                type="button"
                                onClick={handleSearch}
                            >
                                <IoSearch className="mr-1" /> Tìm kiếm
                            </button>
                        </div>
                    </div>
                </form>

                <div className="button mt-3">
                    <button
                        onClick={() => {
                            showModal();
                            setMaHoaDon(undefined);
                        }}
                        className="btn btn-success btn-add "
                    >
                        <i className="fa-solid fa-plus" />
                        Thêm Hoá Đơn Bán
                    </button>
                    <button
                        onClick={() => {
                            if (listIdDelete.length > 0) {
                                setIsOpenDeleteModal(true);
                            }
                        }}
                        className="btn btn-danger btn-del mx-1"
                    >
                        <i className="fa-solid fa-trash" />
                        Xoá Hoá Đơn Bán
                    </button>
                </div>

                <Segmented
                    style={{ margin: "15px 0" }}
                    options={[
                        "Đang xử lý",
                        "Đang giao hàng",
                        "Đã giao hàng",
                        "Đổi hàng",
                        "Trả hàng",
                        "Hoàn tất",
                        "Huỷ đơn",
                    ]}
                    block
                    onChange={(e) => {
                        setState(e);
                        setCurrentPage(1);
                    }}
                />

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
                    total={totalBillSell}
                    pageSize={10}
                    onChange={handlePageChange}
                    style={{ marginTop: "16px", textAlign: "center" }}
                />
                <BillSellModal
                    showModal={showModal}
                    isModalOpen={isModalOpen}
                    handleCancelIUModal={handleCancelIUModal}
                    fetchData={fetchData}
                    maHoaDon={maHoaDon}
                    record={dataRecord}
                />
                <BillSellDelete
                    isOpenDeleteModal={isOpenDeleteModal}
                    fetchData={fetchData}
                    handleCancelDeleteModal={handleCancelDeleteModal}
                    listiddel={listIdDelete}
                    onDeleteSuccess={handleClearSelection}
                />

                <InvoiceModal
                    isModalOpen={isModalOpenInvoice}
                    handleCancelIUModal={handleCancelIUModalInvoice}
                    maHoaDon={maHoaDon}
                    record={dataRecord}
                />
            </div>
        </>
    );
}

export default BillSell;
