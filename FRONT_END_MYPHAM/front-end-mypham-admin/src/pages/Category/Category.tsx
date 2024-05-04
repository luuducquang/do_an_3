import { Pagination, Table, TableColumnsType, notification } from "antd";
import { useEffect, useState } from "react";
import { IoSearch } from "react-icons/io5";
import { searchCategory } from "../../service/category.service";
import { MdEditSquare } from "react-icons/md";
import CategoryModal from "../../components/HandlerCategory/CategoryModal";
import CategoryDelete from "../../components/HandlerCategory/CategoryDelete";

interface DataType {
    key: React.Key;
    maDanhMuc: any;
    tenDanhMuc: any;
    dacBiet: any;
    noiDung: any;
}

type NotificationType = "success" | "info" | "warning" | "error";

function Category() {
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(false);
    const [totalCategory, setTotalCategory] = useState(0);
    const [selectedRowKeys, setSelectedRowKeys] = useState<React.Key[]>([]);
    const [listIdDelete, setListIdDelete] = useState([]);
    const [currentPage, setCurrentPage] = useState(1);
    const [isModalOpen, setIsModalOpen] = useState(false);
    const [maDanhMuc, setMaDanhMuc] = useState();
    const [dataRecord, setDataRecord] = useState<DataType>();
    const [isOpenDeleteModal, setIsOpenDeleteModal] = useState(false);

    const [valueSearch, setValueSearch] = useState("");

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
            dataIndex: "maDanhMuc",
        },
        {
            title: "Tên Danh Mục",
            dataIndex: "tenDanhMuc",
        },
        {
            title: "Nội Dung",
            dataIndex: "noiDung",
        },
        {
            title: "Trạng Thái",
            dataIndex: "dacBiet",
        },
        {
            title: "Tuỳ Chọn",
            align: "center",
            render: (_, record) => (
                <div
                    style={{ cursor: "pointer" }}
                    onClick={() => {
                        setIsModalOpen(true);
                        setMaDanhMuc(record.maDanhMuc);
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
                return value.maDanhMuc;
            });
            setListIdDelete(listid);
        },
        getCheckboxProps: (record: DataType) => ({
            // disabled: record.id === "Disabled User", // Column configuration not to be checked
            // name: record.name,
        }),
    };

    const fetchData = async (valueSearch: any) => {
        setLoading(true);
        let results = await searchCategory({
            page: currentPage,
            pageSize: 10,
            TenDanhMuc: valueSearch,
        });
        setData(results.data);
        setTotalCategory(results.totalItems);
        setLoading(false);
    };

    const dataSet = data.map(function (value: any, index: any) {
        return {
            key: index + 1,
            maDanhMuc: value.maDanhMuc,
            tenDanhMuc: value.tenDanhMuc,
            dacBiet: value.dacBiet === true ? "Hoạt động" : "Tắt",
            noiDung: value.noiDung,
        };
    });

    useEffect(() => {
        fetchData(valueSearch);
    }, [currentPage]);

    const handleSearch = (event: any) => {
        event.preventDefault();
        fetchData(valueSearch);
    };

    return (
        <>
            <div className="container">
                <form className="form-group" onSubmit={handleSearch}>
                    <div className="row g-2 mb-3">
                        <div className="col">
                            <div className="input-group">
                                <input
                                    className="form-control"
                                    type="text"
                                    placeholder="Nhập tên danh mục bạn cần tìm"
                                    value={valueSearch}
                                    onChange={(e) =>
                                        setValueSearch(e.target.value)
                                    }
                                />
                            </div>
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

                <div className="button">
                    <button
                        onClick={() => {
                            showModal();
                            setMaDanhMuc(undefined);
                        }}
                        type="button"
                        className="btn btn-success btn-add"
                    >
                        <i className="fa-solid fa-plus" /> Thêm Danh Mục
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
                        <i className="fa-solid fa-trash" /> Xoá danh mục
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
                <CategoryModal
                    showModal={showModal}
                    isModalOpen={isModalOpen}
                    handleCancelIUModal={handleCancelIUModal}
                    fetchData={fetchData}
                    maDanhMuc={maDanhMuc}
                    record={dataRecord}
                />
                <CategoryDelete
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

export default Category;
