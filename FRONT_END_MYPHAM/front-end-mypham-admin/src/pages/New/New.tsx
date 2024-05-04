import { Pagination, Table, TableColumnsType, notification } from "antd";
import { useEffect, useState } from "react";
import { IoSearch } from "react-icons/io5";
import { MdEditSquare } from "react-icons/md";
import { searchNew } from "../../service/new.service";
import { apiImage } from "../../constant/api";
import NewModal from "../../components/HandlerNew/NewModal";
import NewDelete from "../../components/HandlerNew/NewDelete";

interface DataType {
    key: React.Key;
    maTinTuc: any;
    tieuDe: any;
    noiDung: any;
    hinhAnh: any;
    maTaiKhoan: any;
    luotXem: any;
    hoTen: any;
    trangThai: any;
}

type NotificationType = "success" | "info" | "warning" | "error";

function New() {
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(false);
    const [totalNews, setTotalNews] = useState(0);

    const [isOpenDeleteModal, setIsOpenDeleteModal] = useState(false);

    const [currentPage, setCurrentPage] = useState(1);

    const [isModalOpen, setIsModalOpen] = useState(false);
    const [maTinTuc, setMaTinTuc] = useState();
    const [dataRecord, setDataRecord] = useState<DataType>();

    const [selectedRowKeys, setSelectedRowKeys] = useState<React.Key[]>([]);
    const [listIdDelete, setListIdDelete] = useState([]);

    const [keySearch, setKeySearch] = useState("TieuDe");

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

    const handleCancelDeleteModal = () => {
        setIsOpenDeleteModal(false);
    };

    const handleClearSelection = () => {
        setSelectedRowKeys([]);
    };

    const showModal = () => {
        setIsModalOpen(true);
    };

    const handleCancelIUModal = () => {
        setIsModalOpen(false);
    };

    const columns: TableColumnsType<DataType> = [
        {
            title: "ID",
            dataIndex: "maTinTuc",
        },
        {
            title: "Hình Ảnh",
            dataIndex: "hinhAnh",
            render: (hinhAnh: string) => (
                <img
                    src={apiImage + hinhAnh}
                    alt="Hình Ảnh"
                    style={{ width: "100px" }}
                />
            ),
        },
        {
            title: "Tiêu đề",
            dataIndex: "tieuDe",
        },
        {
            title: "Người Đăng",
            dataIndex: "hoTen",
        },
        {
            title: "Lượt Xem",
            dataIndex: "luotXem",
        },
        {
            title: "Trạng Thái",
            dataIndex: "trangThai",
        },
        {
            title: "Tuỳ Chọn",
            align: "center",
            render: (_, record) => (
                <div
                    style={{ cursor: "pointer" }}
                    onClick={() => {
                        setIsModalOpen(true);
                        setMaTinTuc(record.maTinTuc);
                        setDataRecord(record);
                    }}
                >
                    <MdEditSquare style={{ fontSize: "20px" }} />
                </div>
            ),
        },
    ];

    const fetchData = async (keySearch: string, valueSearch: any) => {
        setLoading(true);
        let results = await searchNew({
            page: currentPage,
            pageSize: 10,
            [keySearch]: valueSearch,
        });
        setData(results.data);
        setTotalNews(results.totalItems);
        setLoading(false);
    };

    useEffect(() => {
        fetchData(keySearch, valueSearch);
    }, [currentPage]);

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
            maTinTuc: value.maTinTuc,
            tieuDe: value.tieuDe,
            noiDung: value.noiDung,
            hinhAnh: value.hinhAnh,
            maTaiKhoan: value.maTaiKhoan,
            luotXem: value.luotXem,
            hoTen: value.hoTen,
            trangThai: value.trangThai,
        };
    });

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
                return value.maTinTuc;
            });
            setListIdDelete(listid);
        },
        getCheckboxProps: (record: DataType) => ({
            // disabled: record.id === "Disabled User", // Column configuration not to be checked
            // name: record.name,
        }),
    };
    return (
        <div className="container">
            <form className="form-group" onSubmit={handleSearch}>
                <div className="row g-2 align-items-center mb-3">
                    <div className="col">
                        <input
                            className="form-control"
                            type="text"
                            placeholder="Nhập tiêu đề bạn cần tìm"
                            value={valueSearch}
                                onChange={(e) => setValueSearch(e.target.value)}
                        />
                    </div>
                    <div className="col-auto">
                        <button
                            className="btn btn-primary d-flex align-items-center"
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
                        setMaTinTuc(undefined);
                    }}
                    type="button"
                    className="btn btn-success btn-add"
                >
                    <i className="fa-solid fa-plus" />
                    Thêm Tin Tức
                </button>
                <button
                    onClick={() => {
                        if (listIdDelete.length > 0) {
                            setIsOpenDeleteModal(true);
                        }
                    }}
                    type="button"
                    className="btn btn-danger btn-del mx-1"
                >
                    <i className="fa-solid fa-trash" />
                    Xoá Tin Tức
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
                total={totalNews}
                pageSize={10}
                onChange={handlePageChange}
                style={{ marginTop: "16px", textAlign: "center" }}
            />
            <NewModal
                showModal={showModal}
                isModalOpen={isModalOpen}
                handleCancelIUModal={handleCancelIUModal}
                fetchData={fetchData}
                maTinTuc={maTinTuc}
                record={dataRecord}
            />
            <NewDelete
                isOpenDeleteModal={isOpenDeleteModal}
                fetchData={fetchData}
                handleCancelDeleteModal={handleCancelDeleteModal}
                listiddel={listIdDelete}
                onDeleteSuccess={handleClearSelection}
            />
        </div>
    );
}

export default New;
