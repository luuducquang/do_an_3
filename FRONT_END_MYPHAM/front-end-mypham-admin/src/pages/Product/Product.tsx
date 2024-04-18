import { useEffect, useState } from "react";
import { IoSearch } from "react-icons/io5";
import { searchProduct } from "../../service/product.service";
import { useParams } from "react-router-dom";
import { Table, TableColumnsType, Pagination } from "antd";
import { apiImage } from "../../constant/api";
import { FaInfoCircle } from "react-icons/fa";
import ProductModal from "../../components/HandlerProduct/ProductModal";
import ProductDelete from "../../components/HandlerProduct/ProductDelete";

interface DataType {
    key: React.Key;
    maSanPham: any;
    tenSanPham: any;
    anhDaiDien: any;
    gia: any;
    soLuong: any;
    luotBan: any;
    danhGia: any;
    trongLuong: any;
    tenDanhMuc: any;
    tendanhmucuudai: any;
    trangThai: any;
}

function Product() {
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(false);
    const [maSanPham, setMaSanPham] = useState();
    const [totalProducts, setTotalProducts] = useState(0);
    
    const [currentPage, setCurrentPage] = useState(1);

    const handlePageChange = (page: number) => {
        setCurrentPage(page);
    };

    const [isModalOpen, setIsModalOpen] = useState(false);
    const [isOpenDeleteModal, setIsOpenDeleteModal] = useState(false);

    const [listIdDelete, setListIdDelete] = useState([]);

    const [selectedRowKeys, setSelectedRowKeys] = useState<React.Key[]>([]);

    const handleClearSelection = () => {
        setSelectedRowKeys([]);
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

    const fetchData = async () => {
        setLoading(true);
        let results = await searchProduct({
            page: currentPage,
            pageSize: 10,
        });
        setData(results.data);
        setTotalProducts(results.totalItems);
        setLoading(false);
    };

    useEffect(() => {
        fetchData();
    }, [currentPage]);

    const dataSet = data.map(function (value: any, index: any) {
        return {
            key: index + 1,
            maSanPham: value.maSanPham,
            tenSanPham: value.tenSanPham,
            anhDaiDien: apiImage + value.anhDaiDien,
            gia: value.gia,
            soLuong: value.soLuong,
            luotBan: value.luotBan,
            danhGia: value.danhGia,
            trongLuong: value.trongLuong,
            tenDanhMuc: value.tenDanhMuc,
            tendanhmucuudai: value.tendanhmucuudai,
            trangThai: value.trangThai ? "Hoạt Động" : "Đã Ẩn",
        };
    });

    const columns: TableColumnsType<DataType> = [
        {
            title: "ID",
            dataIndex: "maSanPham",
        },
        {
            title: "Tên Sản Phẩm",
            dataIndex: "tenSanPham",
        },
        {
            title: "Hình Ảnh",
            dataIndex: "anhDaiDien",
            render: (anhDaiDien: string) => (
                <img
                    src={anhDaiDien}
                    alt="Hình Ảnh"
                    style={{ width: "100px" }}
                />
            ),
        },
        {
            title: "Giá Bán",
            dataIndex: "gia",
        },
        {
            title: "Số Lượng",
            dataIndex: "soLuong",
        },
        {
            title: "Đã Bán",
            dataIndex: "luotBan",
        },
        {
            title: "Đánh Giá",
            dataIndex: "danhGia",
        },
        {
            title: "Trọng Lượng",
            dataIndex: "trongLuong",
        },
        {
            title: "Danh mục",
            dataIndex: "tenDanhMuc",
        },
        {
            title: "Danh mục ưu đãi",
            dataIndex: "tendanhmucuudai",
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
                        setMaSanPham(record.maSanPham);
                    }}
                >
                    <FaInfoCircle style={{ fontSize: "20px" }} />
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
                return value.maSanPham;
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
            <form className="form-group">
                <div className="row g-2 align-items-center mb-3">
                    <div className="col">
                        <input
                            type="text"
                            className="form-control"
                            placeholder="Nhập từ khoá cần tìm"
                        />
                    </div>
                    <div className="col-auto">
                        <select
                            className="form-select"
                            aria-label="Default select example"
                        >
                            <option value="">Tìm kiếm theo</option>
                            <option value="TenSanPham">Tên Sản Phẩm</option>
                            <option value="TenDanhMuc">Tên Danh Mục</option>
                            <option value="Tendanhmucuudai">
                                Tên Danh Mục Ưu Đãi
                            </option>
                            <option value="TenNhaPhanPhoi">
                                Tên Nhà Phân Phối
                            </option>
                            <option value="TenHang">Tên Hãng Sản Xuất</option>
                            <option value="XuatXu">Xuất Xứ</option>
                        </select>
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
                <div className="row" style={{ width: "50%", marginLeft: 3 }}>
                    <div className="range-container col">
                        <label className="range-label" htmlFor="giaMin">
                            Giá Min:
                        </label>
                        <input
                            type="range"
                            className="form-range"
                            id="giaMin"
                            min={0}
                            max={4999999}
                            step={1}
                            defaultValue={0}
                        />
                        <span className="range-value" id="giaMinValue">
                            0
                        </span>
                    </div>
                    <div className="range-container col">
                        <label className="range-label" htmlFor="giaMax">
                            Giá Max:
                        </label>
                        <input
                            type="range"
                            className="form-range"
                            id="giaMax"
                            min={0}
                            max={4999999}
                            step={1}
                            defaultValue={4999999}
                        />
                        <span className="range-value" id="giaMaxValue">
                            4999999
                        </span>
                    </div>
                </div>
            </form>

            <div className="button mb-3">
                <button
                    onClick={() => {
                        showModal();
                        setMaSanPham(undefined);
                    }}
                    type="button"
                    className="btn btn-success btn-add"
                >
                    <i className="fa-solid fa-plus" /> Thêm sản phẩm
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
                    <i className="fa-solid fa-trash" /> Xoá sản phẩm
                </button>
                <button type="button" className="btn btn-primary btn-up5 mx-1">
                    <i className="fa-solid fa-circle-up" /> Tăng 5% giá bán
                </button>
                <button type="button" className="btn btn-secondary btn-down5">
                    <i className="fa-solid fa-circle-down" /> Giảm 5% giá bán
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
                total={totalProducts}
                pageSize={10}
                onChange={handlePageChange}
                style={{ marginTop: "16px", textAlign: "center" }}
            />
            <ProductModal
                showModal={showModal}
                isModalOpen={isModalOpen}
                handleCancelIUModal={handleCancelIUModal}
                refreshData={fetchData}
                maSanPham={maSanPham}
            />
            <ProductDelete
                isOpenDeleteModal={isOpenDeleteModal}
                fetchData={fetchData}
                handleCancelDeleteModal={handleCancelDeleteModal}
                listiddel={listIdDelete}
                onDeleteSuccess={handleClearSelection}
            />
        </div>
    );
}

export default Product;
