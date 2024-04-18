import { Pagination, Table, TableColumnsType } from "antd";
import { useEffect, useState } from "react";
import { apiImage } from "../../constant/api";
import { MdEditSquare } from "react-icons/md";
import { searchBannerSlide } from "../../service/bannerSlide.service";
import BannerSlideModal from "../../components/HandlerBannerSlide/BannerSlideModal";
import BannerSlideDelete from "../../components/HandlerBannerSlide/BannerSlideDelete";

interface DataType {
    maAnh: any;
    linkAnh: any;
    tieuDe: any;
    moTa: any;
}

function BannerSlide() {
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(false);
    const [totalAdvertisement, setTotalAdvertisement] = useState(0);

    const [isOpenDeleteModal, setIsOpenDeleteModal] = useState(false);

    const [currentPage, setCurrentPage] = useState(1);

    const [isModalOpen, setIsModalOpen] = useState(false);
    const [maAnh, setMaAnh] = useState();
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
                return value.maAnh;
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
            dataIndex: "maAnh",
        },
        {
            title: "Hình Ảnh",
            dataIndex: "linkAnh",
            render: (linkAnh: string) => (
                <img
                    src={apiImage + linkAnh}
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
                        setMaAnh(record.maAnh);
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
        let results = await searchBannerSlide({
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
            maAnh: value.maAnh,
            linkAnh: value.linkAnh,
            tieuDe: value.tieuDe,
            moTa: value.moTa,
        };
    });

    return (
        <div className="container">
            <div className="button">
                <button
                    onClick={() => {
                        showModal();
                        setMaAnh(undefined);
                    }}
                    type="button"
                    className="btn btn-success btn-add"
                >
                    <i className="fa-solid fa-plus" /> Thêm Slide
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
                    <i className="fa-solid fa-trash" /> Xoá Slide
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
            <BannerSlideModal
                showModal={showModal}
                isModalOpen={isModalOpen}
                handleCancelIUModal={handleCancelIUModal}
                fetchData={fetchData}
                maAnh={maAnh}
                record={dataRecord}
            />
            <BannerSlideDelete
                isOpenDeleteModal={isOpenDeleteModal}
                fetchData={fetchData}
                handleCancelDeleteModal={handleCancelDeleteModal}
                listiddel={listIdDelete}
                onDeleteSuccess={handleClearSelection}
            />
        </div>
    );
}

export default BannerSlide;
