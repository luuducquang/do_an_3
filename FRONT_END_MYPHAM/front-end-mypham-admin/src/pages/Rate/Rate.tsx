import { Pagination, Table, TableColumnsType, notification } from "antd";
import { useEffect, useState } from "react";
import { IoSearch } from "react-icons/io5";
import { apiImage } from "../../constant/api";
import { MdEditSquare } from "react-icons/md";
import { searchRate } from "../../service/rate.service";
import { FaStar } from "react-icons/fa";
import RateModal from "../../components/HandlerRate/RateModal";
import RateDelete from "../../components/HandlerRate/RateDelete";

interface DataType {
    key: React.Key;
    maDanhGia: any;
    maSanPham: any;
    maTaiKhoan: any;
    anhDanhGia: any;
    chatLuong: any;
    noiDung: any;
    trangThai: any;
    thoiGian: any;
    ghiChu: any;
    tenSanPham: any;
    hoTen: any;
    tenTaiKhoan: any;
    soDienThoai: any;
}

type NotificationType = "success" | "info" | "warning" | "error";

function Rate() {
    const [selectedRowKeys, setSelectedRowKeys] = useState<React.Key[]>([]);
    const [listIdDelete, setListIdDelete] = useState([]);
    const [isModalOpen, setIsModalOpen] = useState(false);
    const [maDanhGia, setMaDanhGia] = useState();
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(false);
    const [totalRate, setTotalRate] = useState(0);
    const [currentPage, setCurrentPage] = useState(1);
    const [record, setRecord] = useState<DataType>();
    const [isOpenDeleteModal, setIsOpenDeleteModal] = useState(false);

    const [keySearch, setKeySearch] = useState(0);

    const [valueSearch, setValueSearch] = useState("");

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

    const handleCancelDeleteModal = () => {
        setIsOpenDeleteModal(false);
    };

    const handleClearSelection = () => {
        setSelectedRowKeys([]);
    };

    const columns: TableColumnsType<DataType> = [
        {
            title: "ID",
            dataIndex: "maDanhGia",
        },
        {
            title: "Tên Người Dùng",
            dataIndex: "hoTen",
        },
        {
            title: "Tên Đăng Nhập",
            dataIndex: "tenTaiKhoan",
        },
        {
            title: "Số Điện Thoại",
            dataIndex: "soDienThoai",
        },
        {
            title: "Tên Sản Phẩm",
            dataIndex: "tenSanPham",
        },
        {
            title: "Chất Lượng",
            dataIndex: "chatLuong",
            render: (chatLuong: string) => {
                return (
                    <div>
                        <span>{chatLuong}</span>
                        <FaStar
                            style={{
                                marginTop: "-3px",
                                color: "#ff9c1a",
                                marginLeft: "2px",
                            }}
                        />
                    </div>
                );
            },
        },
        {
            title: "Nội Dung",
            dataIndex: "noiDung",
        },
        {
            title: "Ảnh Đánh Giá",
            dataIndex: "anhDanhGia",
            render: (anhDanhGia: string) => (
                <img
                    src={apiImage + anhDanhGia}
                    alt="Hình Ảnh"
                    style={{ width: "100px" }}
                />
            ),
        },
        {
            title: "Thời Gian",
            dataIndex: "thoiGian",
        },
        {
            title: "Trạng Thái",
            dataIndex: "trangThai",
        },
        {
            title: "Ghi Chú",
            dataIndex: "ghiChu",
        },
        {
            title: "Tuỳ Chọn",
            align: "center",
            render: (_, record) => (
                <div
                    style={{ cursor: "pointer" }}
                    onClick={() => {
                        setIsModalOpen(true);
                        setMaDanhGia(record.maDanhGia);
                        setRecord(record);
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
                return value.maDanhGia;
            });
            setListIdDelete(listid);
        },
        getCheckboxProps: (record: DataType) => ({
            // disabled: record.id === "Disabled User", // Column configuration not to be checked
            // name: record.name,
        }),
    };

    const fetchData = async (keySearch: number, valueSearch: any) => {
        setLoading(true);
        let results = await searchRate({
            page: currentPage,
            pageSize: 10,
            ChatLuong: keySearch,
            NoiDung: valueSearch,
        });
        setData(results.data);
        setTotalRate(results.totalItems);
        setLoading(false);
    };

    useEffect(() => {
        fetchData(keySearch, valueSearch);
    }, [currentPage]);

    const handleSearch = (event: any) => {
        event.preventDefault();
        fetchData(keySearch, valueSearch);
    };

    const dataSet = data.map(function (value: any, index: any) {
        const thoiGianDate = value.thoiGian ? new Date(value.thoiGian) : null;

        const formattedThoiGian = thoiGianDate
            ? thoiGianDate.toLocaleString()
            : null;

        return {
            key: index + 1,
            maDanhGia: value.maDanhGia || null,
            maSanPham: value.maSanPham || null,
            maTaiKhoan: value.maTaiKhoan || null,
            anhDanhGia: value.anhDanhGia || null,
            chatLuong: value.chatLuong || null,
            noiDung: value.noiDung || null,
            trangThai: value.trangThai ? "Đã mua hàng" : "Chưa mua hàng",
            thoiGian: formattedThoiGian || null,
            ghiChu: value.ghiChu || null,
            tenSanPham: value.tenSanPham || null,
            hoTen: value.hoTen || null,
            tenTaiKhoan: value.tenTaiKhoan || null,
            soDienThoai: value.soDienThoai || null,
        };
    });

    return (
        <div className="container">
            <form className="form-group" onSubmit={handleSearch}>
                <div className="row g-2 align-items-center mb-3">
                    <div className="col">
                        <input
                            className="form-control"
                            type="text"
                            placeholder="Nhập nội dung cần tìm"
                            value={valueSearch}
                            onChange={(e) => setValueSearch(e.target.value)}
                        />
                    </div>
                    <div className="col-auto">
                        <select
                            className="form-select mr-2"
                            aria-label="Default select example"
                            defaultValue=""
                            value={keySearch}
                            onChange={(e: any) => setKeySearch(e.target.value)}
                        >
                            <option disabled selected>
                                Chất lượng
                            </option>
                            <option value={0}>Không</option>
                            <option value={1}>1 Sao</option>
                            <option value={2}>2 Sao</option>
                            <option value={3}>3 Sao</option>
                            <option value={4}>4 Sao</option>
                            <option value={5}>5 Sao</option>
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

            <div className="button">
                <button
                    onClick={() => {
                        if (listIdDelete.length > 0) {
                            setIsOpenDeleteModal(true);
                        }
                    }}
                    type="button"
                    className="btn btn-danger btn-del"
                >
                    <i className="fa-solid fa-trash" />
                    Xoá Đánh Giá
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
                total={totalRate}
                pageSize={10}
                onChange={handlePageChange}
                style={{ marginTop: "16px", textAlign: "center" }}
            />
            <RateModal
                showModal={showModal}
                isModalOpen={isModalOpen}
                handleCancelIUModal={handleCancelIUModal}
                fetchData={fetchData}
                maDanhGia={maDanhGia}
                record={record}
            />
            <RateDelete
                isOpenDeleteModal={isOpenDeleteModal}
                fetchData={fetchData}
                handleCancelDeleteModal={handleCancelDeleteModal}
                listiddel={listIdDelete}
                onDeleteSuccess={handleClearSelection}
            />
        </div>
    );
}

export default Rate;
