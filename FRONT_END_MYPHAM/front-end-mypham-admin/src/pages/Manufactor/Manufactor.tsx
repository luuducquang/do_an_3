import { Pagination, Table, TableColumnsType } from "antd";
import { useEffect, useState } from "react";
import { IoSearch } from "react-icons/io5";
import { apiImage } from "../../constant/api";
import { MdEditSquare } from "react-icons/md";
import { searchManufactor } from "../../service/manufactor.service";
import ManufactorModal from "../../components/Handleranufactor/ManufactorModal";
import ManufactorDelete from "../../components/Handleranufactor/ManufactorDelete";

interface DataType {
    key: React.Key;
    maNhaSanXuat: any;
    tenHang: any;
    linkWeb: any;
    anhDaiDien: any;
}

function Manufactor() {
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(false);
    const [totalManufactor, setTotalManufactor] = useState(0);

    const [isOpenDeleteModal, setIsOpenDeleteModal] = useState(false);

    const [currentPage, setCurrentPage] = useState(1);

    const [isModalOpen, setIsModalOpen] = useState(false);
    const [maNhaSanXuat, setMaNhaSanXuat] = useState();
    const [dataRecord, setDataRecord] = useState<DataType>();
    const [selectedRowKeys, setSelectedRowKeys] = useState<React.Key[]>([]);
    const [listIdDelete, setListIdDelete] = useState([]);

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
                return value.maNhaSanXuat;
            });
            setListIdDelete(listid);
        },
        getCheckboxProps: (record: DataType) => ({
            // disabled: record.id === "Disabled User", // Column configuration not to be checked
            // name: record.name,
        }),
    };

    const columns: TableColumnsType<DataType> = [
        {
            title: "STT",
            dataIndex: "key",
        },
        {
            title: "Hình Ảnh",
            dataIndex: "anhDaiDien",
            render: (anhDaiDien: string) => (
                <img
                    src={apiImage + anhDaiDien}
                    alt="Hình Ảnh"
                    style={{ width: "100px" }}
                />
            ),
        },
        {
            title: "Tên Hãng",
            dataIndex: "tenHang",
            render: (text, record) => (
                <a target="_blank" href={record.linkWeb}>
                    {text}
                </a>
            ),
        },
        {
            title: "Tuỳ Chọn",
            align: "center",
            render: (_, record) => (
                <div
                    style={{ cursor: "pointer" }}
                    onClick={() => {
                        setIsModalOpen(true);
                        setMaNhaSanXuat(record.maNhaSanXuat);
                        setDataRecord(record);
                    }}
                >
                    <MdEditSquare style={{ fontSize: "20px" }} />
                </div>
            ),
        },
    ];

    const fetchData = async () => {
        setLoading(true);
        let results = await searchManufactor({
            page: currentPage,
            pageSize: 10,
        });
        setData(results.data);
        setTotalManufactor(results.totalItems);
        setLoading(false);
    };

    useEffect(() => {
        fetchData();
    }, [currentPage]);

    const dataSet = data.map(function (value: any, index: any) {
        return {
            key: index + 1,
            maNhaSanXuat: value.maNhaSanXuat,
            tenHang: value.tenHang,
            linkWeb: value.linkWeb,
            anhDaiDien: value.anhDaiDien,
        };
    });

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
                                    placeholder="Nhập tên hãng sản xuất bạn cần tìm"
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
                    <button
                        onClick={() => {
                            showModal();
                            setMaNhaSanXuat(undefined);
                        }}
                        type="button"
                        className="btn btn-success btn-add"
                    >
                        <i className="fa-solid fa-plus" /> Thêm Hãng Sản Xuất
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
                        <i className="fa-solid fa-trash" /> Xoá Hãng Sản Xuất
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
                    total={totalManufactor}
                    pageSize={10}
                    onChange={handlePageChange}
                    style={{ marginTop: "16px", textAlign: "center" }}
                />
                <ManufactorModal
                    showModal={showModal}
                    isModalOpen={isModalOpen}
                    handleCancelIUModal={handleCancelIUModal}
                    fetchData={fetchData}
                    maNhaSanXuat={maNhaSanXuat}
                    record={dataRecord}
                />
                <ManufactorDelete
                    isOpenDeleteModal={isOpenDeleteModal}
                    fetchData={fetchData}
                    handleCancelDeleteModal={handleCancelDeleteModal}
                    listiddel={listIdDelete}
                    onDeleteSuccess={handleClearSelection}
                />
            </div>
        </>
    );
}

export default Manufactor;
