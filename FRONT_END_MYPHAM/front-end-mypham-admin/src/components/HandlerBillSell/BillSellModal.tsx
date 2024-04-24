import {
    Button,
    DatePicker,
    Divider,
    Form,
    Input,
    Modal,
    Select,
    Table,
    TableColumnsType,
    notification,
} from "antd";
import { useEffect, useState } from "react";
import { createCategory, updateCategory } from "../../service/category.service";
import moment from "moment";
import { getAllProduct } from "../../service/billsell.service";
import { RiAddBoxFill } from "react-icons/ri";
import { apiImage } from "../../constant/api";
import { MdDelete, MdEditSquare } from "react-icons/md";

type NotificationType = "success" | "info" | "warning" | "error";
const { Option } = Select;

interface DataType {
    key: React.Key;
    maDanhMuc: any;
    tenDanhMuc: any;
    dacBiet: any;
    noiDung: any;
}

interface Product {
    maSanPham: any;
    tenSanPham: any;
    giaGiam: any;
    anhDaiDien: any;
    soLuong: any;
    donGia: any;
    tongGia: any;
}

function BillSellModal(props: any) {
    const [form] = Form.useForm();
    const { TextArea } = Input;
    const [selectedRowKeys, setSelectedRowKeys] = useState<React.Key[]>([]);
    const [listIdDelete, setListIdDelete] = useState([]);

    const [loading, setLoading] = useState(false);
    const [product, setProduct] = useState<Product[]>([]);

    const [selectedProduct, setSelectedProduct] = useState<any>(null);
    const [dataSet, SetDataSet] = useState<Product[]>([]);

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

    const handleOk = () => {
        form.validateFields()
            .then(async (values: any) => {
                if (props.maHoaDon) {
                    props.handleCancelIUModal();
                    await updateCategory({
                        maHoaDon: props.maHoaDon,
                        TenDanhMuc: values.tenDanhMuc,
                        DacBiet: values.dacBiet === "Hoạt động",
                        NoiDung: values.noiDung,
                    });
                    props.fetchData();
                    openNotificationWithIcon("success", "Cập nhật thành công!");
                } else {
                    props.handleCancelIUModal();
                    await createCategory({
                        TenDanhMuc: values.tenDanhMuc,
                        DacBiet: values.dacBiet === "Hoạt động",
                        NoiDung: values.noiDung,
                    });
                    props.fetchData();
                    openNotificationWithIcon("success", "Thêm thành công!");
                }
            })
            .catch(async () => {
                openNotificationWithIcon("warning", "Thông tin chưa đủ!");
            });
    };

    const handleCancel = () => {
        props.handleCancelIUModal();
    };

    async function fetchData() {
        const resProduct = await getAllProduct();
        setProduct(resProduct);
        console.log(resProduct);
    }

    useEffect(() => {
        if (props.maHoaDon !== "" && props.maHoaDon !== undefined) {
            form.setFieldsValue(props.record);
        } else {
            form.resetFields();
        }
        fetchData();
    }, [props.maHoaDon, props.record]);

    const columns: TableColumnsType<DataType> = [
        {
            title: "STT",
            dataIndex: "key",
            align: "center",
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
            title: "Số lượng",
            dataIndex: "soLuong",
            align: "center",
        },
        {
            title: "Đơn giá",
            dataIndex: "donGia",
            align: "center",
        },
        {
            title: "Tổng giá",
            dataIndex: "tongGia",
            align: "center",
        },
        {
            title: "Tuỳ Chọn",
            align: "center",
            render: (_, record) => (
                <div
                    style={{ cursor: "pointer" }}
                    onClick={() => {
                        // setIsModalOpen(true);
                        // setMaDanhMuc(record.maDanhMuc);
                        // setDataRecord(record);
                    }}
                >
                    <MdEditSquare style={{ fontSize: "20px" }} />
                </div>
            ),
        },
    ];

    const rowSelection = {
        onChange: (selectedRowKeys: React.Key[], selectedRows: DataType[]) => {
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

    const handleProductChange = (value: any) => {
        const selectedProduct = product.find(
            (item) => item.maSanPham === value
        );
        setSelectedProduct(selectedProduct);
        form.setFieldsValue({
            donGia: selectedProduct ? selectedProduct.giaGiam : null,
            tongGia: selectedProduct ? selectedProduct.giaGiam : null,
        });
    };

    const handleQuantityChange = (value: any) => {
        const donGia = form.getFieldValue("donGia");
        form.setFieldsValue({
            tongGia: donGia * value,
        });
    };

    const handleAddItem = () => {
        form.validateFields()
            .then(async (values: any) => {
                if (selectedProduct) {
                    const existingIndex = dataSet.findIndex(
                        (item) => item.maSanPham === selectedProduct.maSanPham
                    );

                    if (existingIndex !== -1) {
                        const updatedDataSet = [...dataSet];
                        updatedDataSet[existingIndex].soLuong =
                            Number(updatedDataSet[existingIndex].soLuong) +
                            Number(values.soLuong);
                        updatedDataSet[existingIndex].tongGia =
                            Number(updatedDataSet[existingIndex].tongGia) +
                            Number(values.tongGia);
                        SetDataSet(updatedDataSet);
                    } else {
                        const dataTemp = {
                            key: dataSet.length + 1,
                            maSanPham: selectedProduct.maSanPham,
                            tenSanPham: selectedProduct.tenSanPham,
                            giaGiam: selectedProduct.giaGiam,
                            anhDaiDien: apiImage + selectedProduct.anhDaiDien,
                            soLuong: values.soLuong,
                            donGia: values.donGia,
                            tongGia: values.tongGia,
                        };

                        const newData = [...dataSet, dataTemp];
                        SetDataSet(newData);
                    }
                }
            })
            .catch(async (e) => {
                openNotificationWithIcon("warning", "Thông tin chưa đủ!");
                console.log(e);
            });
    };

    const removeItemsByMaSanPham = (maSanPhamList: any) => {
        const updatedDataSet = dataSet.filter(
            (item) => !maSanPhamList.includes(item.maSanPham)
        );
        SetDataSet(updatedDataSet);
    };

    const handleDelItem = () => {
        removeItemsByMaSanPham(listIdDelete);
    };

    return (
        <>
            {contextHolder}
            <Modal
                title="Thông tin hoá đơn"
                cancelText={"Hủy bỏ"}
                okText={"Lưu lại"}
                width={"55vw"}
                open={props.isModalOpen}
                onOk={handleOk}
                onCancel={handleCancel}
            >
                <Form
                    form={form}
                    initialValues={{
                        residence: ["zhejiang", "hangzhou", "xihu"],
                        prefix: "86",
                    }}
                    style={{ maxWidth: "100%" }}
                    scrollToFirstError
                    labelCol={{ span: 8 }}
                    wrapperCol={{ span: 16 }}
                    labelAlign="left"
                >
                    <Form.Item
                        style={{ visibility: "hidden" }}
                        name="maHoaDon"
                        label="Mã hoá đơn"
                    >
                        <Input />
                    </Form.Item>

                    <Form.Item
                        name="tenKH"
                        label="Tên khách hàng"
                        rules={[
                            {
                                required: true,
                                message: "Tên khách hàng không được để trống!",
                            },
                        ]}
                    >
                        <Input />
                    </Form.Item>

                    <Form.Item
                        name="sdt"
                        label="Số điện thoại"
                        rules={[
                            {
                                required: true,
                                message: "Số điện thoại không được để trống!",
                            },
                        ]}
                    >
                        <Input />
                    </Form.Item>

                    <Form.Item
                        name="email"
                        label="Email"
                        rules={[
                            {
                                required: true,
                                message: "Email không được để trống!",
                            },
                        ]}
                    >
                        <Input />
                    </Form.Item>

                    <Form.Item
                        name="diaChiGiaoHang"
                        label="Địa chỉ giao"
                        rules={[
                            {
                                required: true,
                                message: "Địa chỉ giao không được để trống!",
                            },
                        ]}
                    >
                        <Input />
                    </Form.Item>

                    <Form.Item
                        name="tongTien"
                        label="Tổng giá"
                        rules={[
                            {
                                required: true,
                                message: "Tổng giá không được để trống!",
                            },
                        ]}
                    >
                        <Input />
                    </Form.Item>

                    <Form.Item label="DatePicker">
                        <DatePicker />
                    </Form.Item>

                    <Form.Item
                        name="trangThai"
                        label="Trạng thái"
                        rules={[
                            {
                                required: true,
                                message: "Trạng thái không được để trống!",
                            },
                        ]}
                        initialValue={"Đang xử lý"}
                    >
                        <Select placeholder="Chọn trạng thái">
                            <Option value="" disabled>
                                Chọn trạng thái
                            </Option>
                            <Option value="Đang xử lý">Đang xử lý</Option>
                            <Option value="Đang giao hàng">
                                Đang giao hàng
                            </Option>
                            <Option value="Đã giao hàng">Đã giao hàng</Option>
                            <Option value="Đổi hàng">Đổi hàng</Option>
                            <Option value="Trả hàng">Trả hàng</Option>
                            <Option value="Hoàn tất">Hoàn tất</Option>
                            <Option value="Huỷ đơn">Huỷ đơn</Option>
                        </Select>
                    </Form.Item>

                    <div
                        style={{
                            width: "100%",
                            height: "1px",
                            borderTop: "1px solid",
                            marginBottom: "22px",
                        }}
                    ></div>

                    <Form.Item
                        name="maSanPham"
                        label="Tên sản phẩm"
                        rules={[
                            {
                                required: true,
                                message: "Sản phẩm không được để trống!",
                            },
                        ]}
                        initialValue={""}
                    >
                        <Select
                            placeholder="Chọn sản phẩm"
                            onChange={handleProductChange}
                        >
                            <Option value="" disabled>
                                {" "}
                                Chọn sản phẩm muốn mua
                            </Option>
                            {product.map(function (value: any, index: any) {
                                return (
                                    <Option key={index} value={value.maSanPham}>
                                        {value.tenSanPham}
                                    </Option>
                                );
                            })}
                        </Select>
                    </Form.Item>

                    <Form.Item
                        name="soLuong"
                        label="Số lượng"
                        rules={[
                            {
                                required: true,
                                message: "Số lượng không được để trống!",
                            },
                        ]}
                        initialValue={1}
                    >
                        <Input
                            type="number"
                            onChange={(e) =>
                                handleQuantityChange(e.target.value)
                            }
                        />
                    </Form.Item>

                    <Form.Item
                        name="donGia"
                        label="Đơn giá"
                        rules={[
                            {
                                required: true,
                                message: "Đơn giá không được để trống!",
                            },
                        ]}
                    >
                        <Input type="number" readOnly />
                    </Form.Item>

                    <Form.Item
                        name="tongGia"
                        label="Tổng tiền"
                        rules={[
                            {
                                required: true,
                                message: "Tổng giá không được để trống!",
                            },
                        ]}
                    >
                        <Input type="number" readOnly />
                    </Form.Item>

                    <div>
                        <MdDelete
                            style={{
                                float: "right",
                                fontSize: "30px",
                                cursor: "pointer",
                                color: "#e62e2e",
                            }}
                            onClick={handleDelItem}
                        />
                        <RiAddBoxFill
                            style={{
                                float: "right",
                                fontSize: "30px",
                                cursor: "pointer",
                                color: "#5acf0b",
                            }}
                            onClick={handleAddItem}
                        />
                    </div>

                    <Table
                        style={{ width: "55vw" }}
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
                </Form>
            </Modal>
        </>
    );
}

export default BillSellModal;
