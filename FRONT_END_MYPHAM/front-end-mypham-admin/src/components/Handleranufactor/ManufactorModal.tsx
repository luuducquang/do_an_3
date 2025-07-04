import {
    Button,
    Form,
    Input,
    Modal,
    Select,
    Space,
    Upload,
    UploadFile,
    UploadProps,
    notification,
} from "antd";
import { apiImage } from "../../constant/api";
import { useEffect, useState } from "react";
import { UploadOutlined } from "@ant-design/icons";
import { CKEditor } from "@ckeditor/ckeditor5-react";
import ClassicEditor from "@ckeditor/ckeditor5-build-classic";
import {
    createManufactor,
    updateManufactor,
} from "../../service/manufactor.service";

type NotificationType = "success" | "info" | "warning" | "error";

function ManufactorModal(props: any) {
    const [form] = Form.useForm();

    const [api, contextHolder] = notification.useNotification();

    const [hinhAnh, setHinhAnh] = useState<UploadFile[]>([]);

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
        setHinhAnh(fileList);
    };

    const handleOk = () => {
        form.validateFields()
            .then(async (values: any) => {
                if (!hinhAnh || hinhAnh.length === 0) {
                    openNotificationWithIcon(
                        "warning",
                        "Ảnh không được để trống!"
                    );
                    return;
                }
                if (props.maNhaSanXuat) {
                    props.handleCancelIUModal();
                    await updateManufactor({
                        MaNhaSanXuat: props.maNhaSanXuat,
                        TenHang: values.tenHang,
                        LinkWeb: values.linkWeb,
                        AnhDaiDien: `/img/${hinhAnh[0].name}`,
                    });
                    props.fetchData();
                    openNotificationWithIcon("success", "Cập nhật thành công!");
                } else {
                    props.handleCancelIUModal();
                    await createManufactor({
                        TenHang: values.tenHang,
                        LinkWeb: values.linkWeb,
                        AnhDaiDien: `/img/${hinhAnh[0].name}`,
                    });
                    props.fetchData();
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

    useEffect(() => {
        if (props.maNhaSanXuat !== "" && props.maNhaSanXuat !== undefined) {
            form.setFieldsValue(props.record);
            setHinhAnh([
                {
                    uid: "0",
                    name: props.record.anhDaiDien.slice(5),
                    status: "done",
                    url: apiImage + props.record.anhDaiDien,
                },
            ]);
        } else {
            form.resetFields();
            setHinhAnh([]);
        }
    }, [props.maNhaSanXuat]);

    return (
        <>
            {contextHolder}
            <Modal
                title="Thông tin hãng sản xuất"
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
                        name="maNhaSanXuat"
                        label="Mã nhà sản xuất"
                    >
                        <Input />
                    </Form.Item>

                    <Form.Item
                        name="tenHang"
                        label="Tên hãng sản xuất"
                        rules={[
                            {
                                required: true,
                                message:
                                    "Tên hãng sản xuất không được để trống!",
                            },
                        ]}
                    >
                        <Input />
                    </Form.Item>

                    <Form.Item
                        name="linkWeb"
                        label="Link web hãng"
                        rules={[
                            {
                                required: true,
                                message: "Link web hãng không được để trống!",
                            },
                        ]}
                    >
                        <Input />
                    </Form.Item>

                    <Form.Item
                        name="anhDaiDien"
                        label="Hình Ảnh"
                        rules={[
                            {
                                required: true,
                                message: "Ảnh không được để trống!",
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
                                fileList={hinhAnh}
                            >
                                <Button icon={<UploadOutlined />}>
                                    Upload
                                </Button>
                            </Upload>
                        </Space>
                    </Form.Item>
                </Form>
            </Modal>
        </>
    );
}

export default ManufactorModal;
