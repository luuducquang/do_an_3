import { Pagination, Table, TableColumnsType } from "antd";
import { useEffect, useState } from "react";
import { MdEditSquare } from "react-icons/md";
import { apiImage } from "../../constant/api";
import { searchAdvertisement } from "../../service/advertisement.service";
import AdvertisementModal from "../../components/HandlerAdvertisement/AdvertisementModal";
import AdvertisementDelete from "../../components/HandlerAdvertisement/AdvertisementDelete";

interface DataType {
    id: any;
    anhDaiDien: any;
    linkQuangCao: any;
    moTa: any;
}

function Advertisement() {
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(false);
    const [totalAdvertisement, setTotalAdvertisement] = useState(0);

    const [isOpenDeleteModal, setIsOpenDeleteModal] = useState(false);

    const [currentPage, setCurrentPage] = useState(1);

    const [isModalOpen, setIsModalOpen] = useState(false);
    const [maQuangCao, setMaQuangCao] = useState();
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
                return value.id;
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
            dataIndex: "id",
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
            title: "Link",
            dataIndex: "linkQuangCao",
            render: (linkQuangCao: string) => (
                <a target="_blank" href={linkQuangCao}>
                    Link
                </a>
            ),
        },
        {
            title: "Trạng Thái",
            dataIndex: "moTa",
            render: (moTa: string) => (
                <p>{moTa === "true" ? "Bên phải" : "Bên trái"}</p>
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
                        setMaQuangCao(record.id);
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
        let results = await searchAdvertisement({
            page: currentPage,
            pageSize: 10,
        });
        setData(results.data);
        setTotalAdvertisement(results.totalItems);
        setLoading(false);
    };

    useEffect(() => {
        fetchData();
    }, [currentPage]);

    const dataSet = data.map(function (value: any, index: any) {
        return {
            key: index,
            id: value.id,
            anhDaiDien: value.anhDaiDien,
            linkQuangCao: value.linkQuangCao,
            moTa: value.moTa,
        };
    });

    return (
        <div className="container">
            <div className="button">
                <button
                    onClick={() => {
                        showModal();
                        setMaQuangCao(undefined);
                    }}
                    type="button"
                    className="btn btn-success btn-add"
                >
                    <i className="fa-solid fa-plus" /> Thêm Quảng Cáo
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
                    <i className="fa-solid fa-trash" /> Xoá Quảng Cáo
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
                total={totalAdvertisement}
                pageSize={10}
                onChange={handlePageChange}
                style={{ marginTop: "16px", textAlign: "center" }}
            />
            <AdvertisementModal
                showModal={showModal}
                isModalOpen={isModalOpen}
                handleCancelIUModal={handleCancelIUModal}
                fetchData={fetchData}
                maQuangCao={maQuangCao}
                record={dataRecord}
            />
            <AdvertisementDelete
                isOpenDeleteModal={isOpenDeleteModal}
                fetchData={fetchData}
                handleCancelDeleteModal={handleCancelDeleteModal}
                listiddel={listIdDelete}
                onDeleteSuccess={handleClearSelection}
            />
        </div>
    );
}

export default Advertisement;
