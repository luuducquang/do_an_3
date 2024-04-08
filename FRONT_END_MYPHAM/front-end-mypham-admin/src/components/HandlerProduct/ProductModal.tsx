import {
    Button,
    Form,
    Input,
    Modal,
    Select,
    Upload,
    notification,
    UploadProps,
    Space,
    UploadFile,
} from "antd";

import { UploadOutlined } from "@ant-design/icons";
import { apiImage } from "../../constant/api";
import { CKEditor } from "@ckeditor/ckeditor5-react";
import ClassicEditor from "@ckeditor/ckeditor5-build-classic";
import { useEffect, useState } from "react";
import {
    createProduct,
    getCategory,
    getCategoryOffer,
    getDistributor,
    getManufactor,
    getbyAnhChiTietSanPham,
    getbyMaSanPham,
} from "../../service/product.service";

type NotificationType = "success" | "info" | "warning" | "error";
const { Option } = Select;

type Img = {
    name: any;
};

type Product = {
    anhDaiDien: any;
    linkAnh: any;
};
function ProductModal(props: any) {
    const [form] = Form.useForm();
    const { TextArea } = Input;

    const [dataCkEditor, setDataCkEditor] = useState("");

    const [anhdaidien, setAnhDaiDien] = useState<Img[]>([]);
    const [anhchitiet, setAnhChiTiet] = useState([]);
    const [category, setCategory] = useState([]);
    const [categoryOffer, setCategoryOffer] = useState([]);
    const [manufactor, setManufactor] = useState([]);
    const [distributor, setDistributor] = useState([]);

    const [dataFetchById, setDataFetchById] = useState<Product>();

    const [dataImgDetail, setDataImgDetail] = useState<Product[]>([]);

    const [api, contextHolder] = notification.useNotification();

    const mapImgToUploadFile = (imgs: Img[]): UploadFile<any>[] => {
        return imgs.map((img, index) => ({
            uid: String(index),
            name: img.name,
            status: "done",
            url: `${apiImage}/img/${img.name}`,
        }));
    };

    const fileListAnhDaiDien = mapImgToUploadFile(anhdaidien);

    const openNotificationWithIcon = (
        type: NotificationType,
        content: string
    ) => {
        api[type]({
            message: "Thông báo",
            description: content,
        });
    };

    const handleUploadChange = ({ fileList }: { fileList: any }) => {
        const fileNames = fileList.map((file: any) => file.name);
        setAnhDaiDien(fileList);
    };

    const handleUploadChangeImageDetail = ({ fileList }: { fileList: any }) => {
        const fileNames = fileList.map((file: any) => file.name);
        setAnhChiTiet(fileList);
    };

    const handleOk = () => {
        form.validateFields()
            .then(async (values: any) => {
                const listImgDetail = anhchitiet.map(function (item: any) {
                    return { LinkAnh: `/img/${item.name}` };
                });

                if (props.maSanPham) {
                    props.handleCancelIUModal();
                    debugger;
                    props.fetchData();
                    openNotificationWithIcon("success", "Cập nhật thành công!");
                } else {
                    props.handleCancelIUModal();
                    await createProduct({
                        MaDanhMuc: values.maDanhMuc,
                        Madanhmucuudai: values.madanhmucuudai,
                        TenSanPham: values.tenSanPham,
                        AnhDaiDien: `/img/${anhdaidien[0].name}`,
                        Gia: 0,
                        GiaGiam: 0,
                        SoLuong: 0,
                        TrongLuong: values.trongLuong,
                        TrangThai: values.trangThai,
                        XuatXu: values.xuatXu,
                        list_json_chitiet_sanpham: [
                            {
                                MaNhaSanXuat: values.maNhaSanXuat,
                                MoTa: values.moTa,
                                ChiTiet: dataCkEditor,
                            },
                        ],
                        list_json_sanpham_nhaphanphoi: [
                            {
                                MaNhaPhanPhoi: values.maNhaPhanPhoi,
                            },
                        ],
                        list_json_anhsanpham: listImgDetail,
                    });
                    props.refreshData();
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

    const user = JSON.parse(localStorage.getItem("user") || "{}");
    const upload_props: UploadProps = {
        name: "file",
        action: apiImage + "/api-admin/Image/upload",
        headers: {
            authorization: "Bearer " + user.token,
        },
        onChange(info) {
            if (info.file.status === "done") {
                form.setFieldValue(
                    "image_url",
                    info.fileList[0].response.filePath
                );
            }
        },
    };

    const upload_props_multiple: UploadProps = {
        name: "file",
        action: apiImage + "/api-admin/Image/upload",
        headers: {
            authorization: "Bearer " + user.token,
        },
        multiple: true,
        onChange(info) {
            if (info.file.status === "done") {
                console.log("File uploaded successfully:", info.file);
            }
        },
    };

    const fetchData = async (maSanPham: any) => {
        let data = await getbyMaSanPham(maSanPham);
        let dataImgDetail = await getbyAnhChiTietSanPham(maSanPham);
        form.setFieldsValue(data);
        setDataCkEditor(data.chiTiet);
        setDataFetchById(data);
        setDataImgDetail(dataImgDetail);
    };

    useEffect(() => {
        async function loaddata() {
            const resCategory = await getCategory();
            setCategory(resCategory);
            const resCategoryOffer = await getCategoryOffer();
            setCategoryOffer(resCategoryOffer);
            const resManufactor = await getManufactor();
            setManufactor(resManufactor);
            const resDistributor = await getDistributor();
            setDistributor(resDistributor);

            // Thiết lập giá trị mặc định cho các trường trong form
            if (props.maSanPham !== "" && props.maSanPham !== undefined) {
                fetchData(props.maSanPham);
            } else {
                form.resetFields();
                form.setFieldsValue({
                    gia: 0,
                    giaGiam: 0,
                    soLuong: 0,
                });
                setDataCkEditor("");
            }
        }
        loaddata();
    }, [props.maSanPham]);

    return (
        <>
            {contextHolder}
            <Modal
                title="Thông tin sản phẩm"
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
                        name="maSanPham"
                        label="Mã sản phẩm"
                    >
                        <Input />
                    </Form.Item>

                    <Form.Item
                        name="maDanhMuc"
                        label="Tên Danh Mục"
                        rules={[
                            {
                                required: true,
                                message: "Danh mục không được để trống!",
                            },
                        ]}
                    >
                        <Select placeholder="Chọn danh mục ưu đãi">
                            {category.map(function (value: any, index: any) {
                                return (
                                    <Option key={index} value={value.maDanhMuc}>
                                        {value.tenDanhMuc}
                                    </Option>
                                );
                            })}
                        </Select>
                    </Form.Item>

                    <Form.Item
                        name="madanhmucuudai"
                        label="Tên Danh Mục Ưu Đãi"
                        rules={[
                            {
                                required: true,
                                message: "Danh mục ưu đãi không được để trống!",
                            },
                        ]}
                    >
                        <Select placeholder="Chọn danh mục ưu đãi">
                            {categoryOffer.map(function (
                                value: any,
                                index: any
                            ) {
                                return (
                                    <Option
                                        key={index}
                                        value={value.madanhmucuudai}
                                    >
                                        {value.tendanhmucuudai}
                                    </Option>
                                );
                            })}
                        </Select>
                    </Form.Item>

                    <Form.Item
                        name="tenSanPham"
                        label="Tên Sản Phẩm"
                        rules={[
                            {
                                required: true,
                                message: "Tên sản phẩm không được để trống!",
                            },
                        ]}
                    >
                        <TextArea rows={3} />
                    </Form.Item>

                    <Form.Item
                        name="anhDaiDien"
                        label="Ảnh Sản Phẩm"
                        rules={[
                            {
                                required: true,
                                message: "Ảnh sản phẩm không được để trống!",
                            },
                        ]}
                    >
                        <Space
                            direction="vertical"
                            style={{ width: "100%" }}
                            size="large"
                        >
                            <Upload
                                // action="https://run.mocky.io/v3/435e224c-44fb-4773-9faf-380c5e6a2188"
                                {...upload_props}
                                listType="picture"
                                maxCount={1}
                                onChange={handleUploadChange}
                                fileList={fileListAnhDaiDien}
                            >
                                <Button icon={<UploadOutlined />}>
                                    Upload
                                </Button>
                            </Upload>
                            <div>
                                {dataFetchById && (
                                    <img
                                        key={1}
                                        src={
                                            apiImage + dataFetchById.anhDaiDien
                                        }
                                        style={{
                                            width: "100px",
                                            height: "100px",
                                        }}
                                    />
                                )}
                            </div>
                        </Space>
                    </Form.Item>

                    <Form.Item
                        name="anhChiTiet"
                        label="Ảnh Chi Tiết Sản Phẩm"
                        rules={[
                            {
                                required: true,
                                message:
                                    "Ảnh chi tiết sản phẩm không được để trống!",
                            },
                        ]}
                    >
                        <Space
                            direction="vertical"
                            style={{ width: "100%" }}
                            size="large"
                        >
                            <Upload
                                // action="https://run.mocky.io/v3/435e224c-44fb-4773-9faf-380c5e6a2188"
                                {...upload_props_multiple}
                                listType="picture"
                                multiple
                                fileList={anhchitiet}
                                onChange={handleUploadChangeImageDetail}
                            >
                                <Button icon={<UploadOutlined />}>
                                    Upload
                                </Button>
                            </Upload>
                            {dataImgDetail &&
                                dataImgDetail.map(
                                    (product: Product, index: number) => (
                                        <img
                                            key={index}
                                            src={`${apiImage}${product.linkAnh}`}
                                            style={{
                                                width: "100px",
                                                height: "100px",
                                            }}
                                        />
                                    )
                                )}
                        </Space>
                    </Form.Item>

                    <Form.Item name="gia" label="Giá (Giá Nhập)">
                        <Input type="number" disabled />
                    </Form.Item>

                    <Form.Item name="giaGiam" label="Giá Giảm">
                        <Input type="number" defaultValue={Number(0)} />
                    </Form.Item>

                    <Form.Item name="soLuong" label="Số Lượng">
                        <Input
                            type="number"
                            disabled
                            defaultValue={Number(0)}
                        />
                    </Form.Item>
                    <Form.Item
                        name="trongLuong"
                        label="Trọng Lượng"
                        rules={[
                            {
                                required: true,
                                message: "Trọng lượng không được để trống!",
                            },
                        ]}
                    >
                        <Input />
                    </Form.Item>
                    <Form.Item
                        name="trangThai"
                        label="Trạng Thái"
                        rules={[
                            {
                                required: true,
                                message: "Trạng thái không được để trống!",
                            },
                        ]}
                        initialValue={true}
                    >
                        <Select placeholder="Chọn trạng thái">
                            <Option value={true}>Hoạt Động</Option>
                            <Option value={false}>Tắt</Option>
                        </Select>
                    </Form.Item>
                    <Form.Item
                        name="maNhaSanXuat"
                        label="Tên Nhà Sản Xuất"
                        rules={[
                            {
                                required: true,
                                message: "Nhà sản xuất không được để trống!",
                            },
                        ]}
                    >
                        <Select placeholder="Chọn nhà sản xuất">
                            {manufactor.map(function (value: any, index: any) {
                                return (
                                    <Option
                                        key={index}
                                        value={value.maNhaSanXuat}
                                    >
                                        {value.tenHang}
                                    </Option>
                                );
                            })}
                        </Select>
                    </Form.Item>
                    <Form.Item
                        name="maNhaPhanPhoi"
                        label="Tên Nhà Phân Phối"
                        rules={[
                            {
                                required: true,
                                message: "Nhà phân phối không được để trống!",
                            },
                        ]}
                    >
                        <Select placeholder="Chọn nhà phân phối">
                            {distributor.map(function (value: any, index: any) {
                                return (
                                    <Option
                                        key={index}
                                        value={value.maNhaPhanPhoi}
                                    >
                                        {value.tenNhaPhanPhoi}
                                    </Option>
                                );
                            })}
                        </Select>
                    </Form.Item>
                    <Form.Item
                        name="xuatXu"
                        label="Xuất Xứ"
                        rules={[
                            {
                                required: true,
                                message: "Xuất xứ không được để trống!",
                            },
                        ]}
                    >
                        <Input />
                    </Form.Item>
                    <Form.Item
                        name="moTa"
                        label="Mô Tả"
                        rules={[
                            {
                                required: true,
                                message: "Mô Tả không được để trống!",
                            },
                        ]}
                    >
                        <Input />
                    </Form.Item>
                    <Form.Item
                        name="chiTiet"
                        label="Chi Tiết"
                        rules={[
                            {
                                required: true,
                                message: "Chi tiết không được để trống!",
                            },
                        ]}
                    >
                        <CKEditor
                            editor={ClassicEditor}
                            data={dataCkEditor}
                            onReady={(editor) => {
                                const rootEditableElement =
                                    editor.editing.view.document.getRoot();
                                if (rootEditableElement !== null) {
                                    editor.editing.view.change((write) => {
                                        write.setStyle(
                                            "height",
                                            "200px",
                                            rootEditableElement
                                        );
                                    });
                                }
                                // console.log("Editor is ready to use!", editor);
                            }}
                            onChange={(event, editor) => {
                                setDataCkEditor(editor.getData());
                                // console.log(dataCkEditor);
                            }}
                            onBlur={(event, editor) => {
                                // console.log("Blur.", editor);
                            }}
                            onFocus={(event, editor) => {
                                // console.log("Focus.", editor);
                            }}
                        />
                    </Form.Item>
                </Form>
            </Modal>
        </>
    );
}

export default ProductModal;
