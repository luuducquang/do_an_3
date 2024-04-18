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
import { createNew, getbyMaTinTuc, updateNew } from "../../service/new.service";

type NotificationType = "success" | "info" | "warning" | "error";
const { Option } = Select;

type User = {
    mataikhoan: any;
};

function NewModal(props: any) {
    const [form] = Form.useForm();
    const { TextArea } = Input;

    const [dataUser, setDataUser] = useState<User>({ mataikhoan: "" });

    const [api, contextHolder] = notification.useNotification();

    const [hinhAnh, setHinhAnh] = useState<UploadFile[]>([]);

    const [dataCkEditor, setDataCkEditor] = useState("");

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
                if (props.maTinTuc) {
                    props.handleCancelIUModal();
                    await updateNew({
                        MaTinTuc: props.maTinTuc,
                        TieuDe: values.tieuDe,
                        NoiDung: dataCkEditor,
                        HinhAnh: `/img/${hinhAnh[0].name}`,
                        MaTaiKhoan: dataUser.mataikhoan,
                        TrangThai: values.trangThai,
                    });
                    props.fetchData();
                    openNotificationWithIcon("success", "Cập nhật thành công!");
                } else {
                    props.handleCancelIUModal();
                    await createNew({
                        TieuDe: values.tieuDe,
                        NoiDung: dataCkEditor,
                        HinhAnh: `/img/${hinhAnh[0].name}`,
                        MaTaiKhoan: dataUser.mataikhoan,
                        TrangThai: values.trangThai,
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

    const fetchData = async (maTinTuc: any) => {
        let data = await getbyMaTinTuc(maTinTuc);
        form.setFieldsValue(data);
        setDataCkEditor(data.noiDung);
    };

    useEffect(() => {
        const user = JSON.parse(localStorage.getItem("user") || "{}");
        setDataUser(user);
        if (props.maTinTuc !== "" && props.maTinTuc !== undefined) {
            fetchData(props.maTinTuc);
            setHinhAnh([
                {
                    uid: "0",
                    name: props.record.hinhAnh.slice(5),
                    status: "done",
                    url: apiImage + props.record.hinhAnh,
                },
            ]);
        } else {
            form.resetFields();
            setHinhAnh([]);
            setDataCkEditor("");
        }
    }, [props.maTinTuc]);

    return (
        <>
            {contextHolder}
            <Modal
                title="Thông tin tin tức"
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
                        name="maTinTuc"
                        label="Mã tin tức"
                    >
                        <Input />
                    </Form.Item>

                    <Form.Item
                        name="tieuDe"
                        label="Tiêu Đề"
                        rules={[
                            {
                                required: true,
                                message: "Tiêu Đề không được để trống!",
                            },
                        ]}
                    >
                        <Input />
                    </Form.Item>

                    <Form.Item
                        name="hinhAnh"
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

                    <Form.Item
                        name="trangThai"
                        label="Trạng Thái"
                        rules={[
                            {
                                required: true,
                                message: "Trạng thái không được để trống!",
                            },
                        ]}
                        initialValue="Hiện"
                    >
                        <Select placeholder="Chọn trạng thái">
                            <Option value="Hiện">Hiện</Option>
                            <Option value="Ẩn">Ẩn</Option>
                        </Select>
                    </Form.Item>
                    <Form.Item
                        name="noiDung"
                        label="Nội Dung"
                        rules={[
                            {
                                required: true,
                                message: "Nội dung không được để trống!",
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

export default NewModal;
