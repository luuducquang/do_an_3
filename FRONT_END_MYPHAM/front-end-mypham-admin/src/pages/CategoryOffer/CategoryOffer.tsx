import { Pagination, Table, TableColumnsType, notification } from "antd";
import { useEffect, useState } from "react";
import { IoSearch } from "react-icons/io5";
import { MdEditSquare } from "react-icons/md";
import { searchCategoryOffer } from "../../service/categoryoffer.service";
import CategoryofferModal from "../../components/HandlerCategoryOffer/CategoryofferModal";
import CategoryOfferDelete from "../../components/HandlerCategoryOffer/CategoryOfferDelete";

interface DataType {
    key: React.Key;
    madanhmucuudai: any;
    tendanhmucuudai: any;
    dacBiet: any;
    noiDung: any;
}

type NotificationType = "success" | "info" | "warning" | "error";

function CategoryOffer() {
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(false);
    const [currentPage, setCurrentPage] = useState(1);
    const [totalCategoryOffer, setTotalCategoryOffer] = useState(0);
    const [selectedRowKeys, setSelectedRowKeys] = useState<React.Key[]>([]);
    const [listIdDelete, setListIdDelete] = useState([]);
    const [isModalOpen, setIsModalOpen] = useState(false);
    const [maDanhMucUuDai, setMaDanhMucUuDai] = useState();
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
                return value.madanhmucuudai;
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
            title: "ID",
            dataIndex: "madanhmucuudai",
        },
        {
            title: "Tên Danh Mục Ưu Đãi",
            dataIndex: "tendanhmucuudai",
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
                        setMaDanhMucUuDai(record.madanhmucuudai);
                        setDataRecord(record);
                    }}
                >
                    <MdEditSquare style={{ fontSize: "20px" }} />
                </div>
            ),
        },
    ];

    const fetchData = async (valueSearch: any) => {
        setLoading(true);
        let results = await searchCategoryOffer({
            page: currentPage,
            pageSize: 10,
            Tendanhmucuudai: valueSearch,
        });
        setData(results.data);
        setTotalCategoryOffer(results.totalItems);
        setLoading(false);
    };

    const dataSet = data.map(function (value: any, index: any) {
        return {
            key: index + 1,
            madanhmucuudai: value.madanhmucuudai,
            tendanhmucuudai: value.tendanhmucuudai,
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
            <div className="container" onSubmit={handleSearch}>
                <form className="form-group">
                    <div className="row g-2 mb-3">
                        <div className="col">
                            <div className="input-group">
                                <input
                                    className="form-control"
                                    type="text"
                                    placeholder="Nhập tên danh mục ưu đãi bạn cần tìm"
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
                            setMaDanhMucUuDai(undefined);
                        }}
                        type="button"
                        className="btn btn-success btn-add"
                    >
                        <i className="fa-solid fa-plus" /> Thêm Danh Mục Ưu Đãi
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
                    total={totalCategoryOffer}
                    pageSize={10}
                    onChange={handlePageChange}
                    style={{ marginTop: "16px", textAlign: "center" }}
                />
                <CategoryofferModal
                    showModal={showModal}
                    isModalOpen={isModalOpen}
                    handleCancelIUModal={handleCancelIUModal}
                    fetchData={fetchData}
                    madanhmucuudai={maDanhMucUuDai}
                    record={dataRecord}
                />
                <CategoryOfferDelete
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

export default CategoryOffer;
