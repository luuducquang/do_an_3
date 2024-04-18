import { Pagination, Table, TableColumnsType } from "antd";
import { useEffect, useState } from "react";
import { IoSearch } from "react-icons/io5";
import { MdEditSquare } from "react-icons/md";
import { searchAccount } from "../../service/account.service";
import AccountModal from "../../components/HandlerAccount/AccountModal";
import AccountDelete from "../../components/HandlerAccount/AccountDelete";

interface DataType {
    key: React.Key;
    maTaiKhoan: any;
    tenTaiKhoan: any;
    email: any;
    matKhau: any;
}

function Account() {
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(false);
    const [totalAccount, setTotalAccount] = useState(0);
    const [selectedRowKeys, setSelectedRowKeys] = useState<React.Key[]>([]);
    const [listIdDelete, setListIdDelete] = useState([]);
    const [currentPage, setCurrentPage] = useState(1);
    const [isModalOpen, setIsModalOpen] = useState(false);
    const [maTaiKhoan, setMaTaiKhoan] = useState();
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
            dataIndex: "maTaiKhoan",
        },
        {
            title: "Tên Tài Khoản",
            dataIndex: "tenTaiKhoan",
        },
        {
            title: "Email",
            dataIndex: "email",
        },
        {
            title: "Tuỳ Chọn",
            align: "center",
            render: (_, record) => (
                <div
                    style={{ cursor: "pointer" }}
                    onClick={() => {
                        setIsModalOpen(true);
                        setMaTaiKhoan(record.maTaiKhoan);
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
                return value.maTaiKhoan;
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
        let results = await searchAccount({
            page: currentPage,
            pageSize: 10,
        });
        setData(results.data);
        setTotalAccount(results.totalItems);
        setLoading(false);
    };

    const dataSet = data.map(function (value: any, index: any) {
        return {
            key: index + 1,
            maTaiKhoan: value.maTaiKhoan,
            tenTaiKhoan: value.tenTaiKhoan,
            email: value.email,
            matKhau: value.matKhau,
        };
    });

    useEffect(() => {
        fetchData();
    }, [currentPage]);
    return (
        <div className="container">
            <form className="row g-2 align-items-center">
                <div className="col">
                    <input
                        className="form-control"
                        type="text"
                        placeholder="Nhập từ khoá cần tìm"
                    />
                </div>
                <div className="col-auto">
                    <select
                        className="form-select"
                        aria-label="Default select example"
                        defaultValue=""
                    >
                        <option disabled value="">
                            Tìm kiếm theo
                        </option>
                        <option value="TenTaiKhoan">Tên Tài Khoản</option>
                        <option value="Email">Email</option>
                        <option value="HoTen">Họ Tên</option>
                        <option value="SoDienThoai">Số Điện Thoại</option>
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
            </form>

            <div className="button mt-3">
                <button
                    onClick={() => {
                        showModal();
                        setMaTaiKhoan(undefined);
                    }}
                    type="button"
                    className="btn btn-success btn-add"
                >
                    <i className="fa-solid fa-plus" />
                    Thêm Tài Khoản
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
                    Xoá Tài Khoản
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
                total={totalAccount}
                pageSize={10}
                onChange={handlePageChange}
                style={{ marginTop: "16px", textAlign: "center" }}
            />
            <AccountModal
                showModal={showModal}
                isModalOpen={isModalOpen}
                handleCancelIUModal={handleCancelIUModal}
                fetchData={fetchData}
                maTaiKhoan={maTaiKhoan}
                record={dataRecord}
            />
            <AccountDelete
                isOpenDeleteModal={isOpenDeleteModal}
                fetchData={fetchData}
                handleCancelDeleteModal={handleCancelDeleteModal}
                listiddel={listIdDelete}
                onDeleteSuccess={handleClearSelection}
            />
        </div>
    );
}

export default Account;
