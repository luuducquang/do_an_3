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
    updateProduct,
} from "../../service/product.service";

type NotificationType = "success" | "info" | "warning" | "error";
const { Option } = Select;

type Product = {
    anhDaiDien: any;
    linkAnh: any;
    maChiTietSanPham: any;
    madanhmucuudai: any;
    maDanhMuc: any;
    maNhaSanXuat: any;
    maNhaPhanPhoi: any;
};
function ProductModal(props: any) {
    const [form] = Form.useForm();
    const { TextArea } = Input;

    const [dataCkEditor, setDataCkEditor] = useState("");

    const [anhdaidien, setAnhDaiDien] = useState<UploadFile[]>([]);
    const [anhchitiet, setAnhChiTiet] = useState<UploadFile[]>([]);
    const [category, setCategory] = useState<Product[]>([]);
    const [categoryOffer, setCategoryOffer] = useState<Product[]>([]);
    const [manufactor, setManufactor] = useState<Product[]>([]);
    const [distributor, setDistributor] = useState<Product[]>([]);

    const [dataFetchById, setDataFetchById] = useState<Product>();

    const [dataImgDetail, setDataImgDetail] = useState<Product[]>([]);

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

    const handleUploadChange = ({ fileList }: { fileList: any }) => {
        setAnhDaiDien(fileList);
    };

    const handleUploadChangeImageDetail = ({ fileList }: { fileList: any }) => {
        const uploadingFiles = fileList.filter(
            (file: any) => file.lastModified
        );
        if (props.maSanPham && uploadingFiles.length > 0) {
            const listImgDetailAdd = uploadingFiles.map(function (value: any) {
                return { LinkAnh: `/img/${value.name}`, status: 1 };
            });
            addImgDetailNow(listImgDetailAdd);
        } else {
            // if (anhchitiet.length > 1) {
            setAnhChiTiet(fileList);
            // }
        }
    };

    const onRemove = async (file: UploadFile) => {
        form.validateFields()
            .then(async (values: any) => {
                if (anhchitiet && anhchitiet.length > 1) {
                    setAnhChiTiet((prevAnhChiTiet) =>
                        prevAnhChiTiet.filter((item) => item.uid !== file.uid)
                    );
                    await updateProduct({
                        MaSanPham: props.maSanPham,
                        MaDanhMuc: values.maDanhMuc,
                        Madanhmucuudai: values.madanhmucuudai,
                        TenSanPham: values.tenSanPham,
                        AnhDaiDien: `/img/${anhdaidien[0].name}`,
                        Gia: values.gia,
                        GiaGiam: values.giaGiam,
                        SoLuong: values.soLuong,
                        TrongLuong: values.trongLuong,
                        TrangThai: values.trangThai,
                        XuatXu: values.xuatXu,
                        list_json_chitiet_sanpham: [
                            {
                                MaChiTietSanPham:
                                    dataFetchById?.maChiTietSanPham,
                                MaNhaSanXuat: values.maNhaSanXuat,
                                MoTa: values.moTa,
                                ChiTiet: dataCkEditor,
                                status: 2,
                            },
                        ],
                        list_json_sanpham_nhaphanphoi: [
                            {
                                MaSanPham: props.maSanPham,
                                MaNhaPhanPhoi: values.maNhaPhanPhoi,
                                status: 2,
                            },
                        ],
                        list_json_anhsanpham: [
                            {
                                Id: file.uid,
                                status: 3,
                            },
                        ],
                    });
                    openNotificationWithIcon("success", "Xoá thành công!");
                } else {
                    openNotificationWithIcon(
                        "warning",
                        "Không thể xoá ảnh cuối cùng!"
                    );
                }
            })
            .catch(async (e) => {
                openNotificationWithIcon("warning", "Lỗi!");
                console.log(e);
            });
    };

    const addImgDetailNow = (listImgDetailAdd: any) => {
        form.validateFields()
            .then(async (values: any) => {
                if (
                    !anhdaidien ||
                    anhdaidien.length === 0 ||
                    !anhchitiet ||
                    anhchitiet.length === 0
                ) {
                    openNotificationWithIcon(
                        "warning",
                        "Ảnh không được để trống!"
                    );
                    return;
                }

                await updateProduct({
                    MaSanPham: props.maSanPham,
                    MaDanhMuc: values.maDanhMuc,
                    Madanhmucuudai: values.madanhmucuudai,
                    TenSanPham: values.tenSanPham,
                    AnhDaiDien: `/img/${anhdaidien[0].name}`,
                    Gia: values.gia,
                    GiaGiam: values.giaGiam,
                    SoLuong: values.soLuong,
                    TrongLuong: values.trongLuong,
                    TrangThai: values.trangThai,
                    XuatXu: values.xuatXu,
                    list_json_chitiet_sanpham: [
                        {
                            MaChiTietSanPham: dataFetchById?.maChiTietSanPham,
                            MaNhaSanXuat: values.maNhaSanXuat,
                            MoTa: values.moTa,
                            ChiTiet: dataCkEditor,
                            status: 2,
                        },
                    ],
                    list_json_sanpham_nhaphanphoi: [
                        {
                            MaSanPham: props.maSanPham,
                            MaNhaPhanPhoi: values.maNhaPhanPhoi,
                            status: 2,
                        },
                    ],
                    list_json_anhsanpham: listImgDetailAdd,
                });
                await fetchData(props.maSanPham);
                openNotificationWithIcon("success", "Cập nhật thành công!");
            })
            .catch(async (e) => {
                openNotificationWithIcon("warning", "Thông tin chưa đủ!");
            });
    };

    const handleOk = () => {
        form.validateFields()
            .then(async (values: any) => {
                const listImgDetail = anhchitiet.map(function (item: any) {
                    return { LinkAnh: `/img/${item.name}` };
                });

                if (
                    !anhdaidien ||
                    anhdaidien.length === 0 ||
                    !anhchitiet ||
                    anhchitiet.length === 0
                ) {
                    openNotificationWithIcon(
                        "warning",
                        "Ảnh không được để trống!"
                    );
                    return;
                }
                if (props.maSanPham) {
                    props.handleCancelIUModal();
                    await updateProduct({
                        MaSanPham: props.maSanPham,
                        MaDanhMuc: values.maDanhMuc,
                        Madanhmucuudai: values.madanhmucuudai,
                        TenSanPham: values.tenSanPham,
                        AnhDaiDien: `/img/${anhdaidien[0].name}`,
                        Gia: values.gia,
                        GiaGiam: values.giaGiam,
                        SoLuong: values.soLuong,
                        TrongLuong: values.trongLuong,
                        TrangThai: values.trangThai,
                        XuatXu: values.xuatXu,
                        list_json_chitiet_sanpham: [
                            {
                                MaChiTietSanPham:
                                    dataFetchById?.maChiTietSanPham,
                                MaNhaSanXuat: values.maNhaSanXuat,
                                MoTa: values.moTa,
                                ChiTiet: dataCkEditor,
                                status: 2,
                            },
                        ],
                        list_json_sanpham_nhaphanphoi: [
                            {
                                MaSanPham: props.maSanPham,
                                MaNhaPhanPhoi: values.maNhaPhanPhoi,
                                status: 2,
                            },
                        ],
                        list_json_anhsanpham: listImgDetail,
                    });
                    props.refreshData();
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
            .catch(async (e) => {
                openNotificationWithIcon("warning", "Thông tin chưa đủ!");
                console.log(e);
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
        setAnhDaiDien([
            {
                uid: "0",
                name: data.anhDaiDien.slice(5),
                status: "done",
                url: apiImage + data.anhDaiDien,
            },
        ]);

        const listPreviewImgDetail = dataImgDetail.map(function (value: any) {
            return {
                uid: value.id,
                name: value.linkAnh.slice(5),
                status: "done",
                url: apiImage + value.linkAnh,
            };
        });
        setAnhChiTiet(listPreviewImgDetail);
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
                setAnhDaiDien([]);
                setAnhChiTiet([]);
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
                        <Select placeholder="Chọn danh mục" defaultValue={""}>
                            <Option value={""} disabled>
                                Chọn danh mục
                            </Option>
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
                        <Select
                            placeholder="Chọn danh mục ưu đãi"
                            defaultValue={""}
                        >
                            <Option value={""} disabled>
                                Chọn danh mục ưu đãi
                            </Option>
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
                                fileList={anhdaidien}
                            >
                                <Button icon={<UploadOutlined />}>
                                    Upload
                                </Button>
                            </Upload>
                        </Space>
                    </Form.Item>

                    <Form.Item
                        name="anhChiTiet"
                        label="Ảnh Chi Tiết Sản Phẩm"
                        rules={[
                            {
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
                                onRemove={onRemove}
                            >
                                <Button icon={<UploadOutlined />}>
                                    Upload
                                </Button>
                            </Upload>
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
                        <Select
                            placeholder="Chọn nhà sản xuất"
                            defaultValue={""}
                        >
                            <Option value={""} disabled>
                                Chọn nhà sản xuất
                            </Option>
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
                        <Select
                            placeholder="Chọn nhà phân phối"
                            defaultValue={""}
                        >
                            <Option value={""} disabled>
                                Chọn nhà phân phối
                            </Option>
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
