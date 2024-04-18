import { Pagination, Table, TableColumnsType } from "antd";
import { useEffect, useState } from "react";
import { IoSearch } from "react-icons/io5";
import { MdEditSquare } from "react-icons/md";
import { searchDistributor } from "../../service/distributor.service";
import DistributorModal from "../../components/HandlerDistributor/DistributorModal";
import DistributorDelete from "../../components/HandlerDistributor/DistributorDelete";

interface DataType {
    key: React.Key;
    maNhaPhanPhoi: any;
    tenNhaPhanPhoi: any;
    diaChi: any;
    soDienThoai: any;
    linkWeb: any;
    moTa: any;
}

function Distributor() {
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(false);
    const [totalDistributor, setTotalDistributor] = useState(0);
    const [selectedRowKeys, setSelectedRowKeys] = useState<React.Key[]>([]);
    const [listIdDelete, setListIdDelete] = useState([]);
    const [currentPage, setCurrentPage] = useState(1);
    const [isModalOpen, setIsModalOpen] = useState(false);
    const [maNhaPhanPhoi, setMaNhaPhanPhoi] = useState();
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
            dataIndex: "maNhaPhanPhoi",
        },
        {
            title: "Tên Nhà Phân Phối",
            dataIndex: "tenNhaPhanPhoi",
            render: (text, record) => (
                <a target="_blank" href={record.linkWeb}>
                    {text}
                </a>
            ),
        },
        {
            title: "Địa Chỉ",
            dataIndex: "diaChi",
        },
        {
            title: "Số Điện Thoại",
            dataIndex: "soDienThoai",
        },
        {
            title: "Mô Tả",
            dataIndex: "moTa",
        },
        {
            title: "Tuỳ Chọn",
            align: "center",
            render: (_, record) => (
                <div
                    style={{ cursor: "pointer" }}
                    onClick={() => {
                        setIsModalOpen(true);
                        setMaNhaPhanPhoi(record.maNhaPhanPhoi);
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
                return value.maNhaPhanPhoi;
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
        let results = await searchDistributor({
            page: currentPage,
            pageSize: 10,
        });
        setData(results.data);
        setTotalDistributor(results.totalItems);
        setLoading(false);
    };

    const dataSet = data.map(function (value: any, index: any) {
        return {
            key: index + 1,
            maNhaPhanPhoi: value.maNhaPhanPhoi,
            tenNhaPhanPhoi: value.tenNhaPhanPhoi,
            diaChi: value.diaChi,
            soDienThoai: value.soDienThoai,
            linkWeb: value.linkWeb,
            moTa: value.moTa,
        };
    });

    useEffect(() => {
        fetchData();
    }, [currentPage]);

    return (
        <div className="container">
            <form className="form-group">
                <div className="row g-2 mb-3">
                    <div className="col">
                        <div className="input-group">
                            <input
                                className="form-control"
                                type="text"
                                placeholder="Nhập tên nhà phân phối bạn cần tìm"
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
                        setMaNhaPhanPhoi(undefined);
                    }}
                    type="button"
                    className="btn btn-success btn-add"
                >
                    <i className="fa-solid fa-plus" /> Thêm Nhà Phân Phối
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
                    <i className="fa-solid fa-trash" /> Xoá Nhà Phân Phối
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
                total={totalDistributor}
                pageSize={10}
                onChange={handlePageChange}
                style={{ marginTop: "16px", textAlign: "center" }}
            />
            <DistributorModal
                showModal={showModal}
                isModalOpen={isModalOpen}
                handleCancelIUModal={handleCancelIUModal}
                fetchData={fetchData}
                maNhaPhanPhoi={maNhaPhanPhoi}
                record={dataRecord}
            />
            <DistributorDelete
                isOpenDeleteModal={isOpenDeleteModal}
                fetchData={fetchData}
                handleCancelDeleteModal={handleCancelDeleteModal}
                listiddel={listIdDelete}
                onDeleteSuccess={handleClearSelection}
            />
        </div>
    );
}

export default Distributor;
