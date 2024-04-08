import { Button, Form, Input, Modal, Select, notification } from "antd";
import { useEffect, useState } from "react";
import { createCategory, updateCategory } from "../../service/category.service";
import {
    createCategoryOffer,
    updateCategoryOffer,
} from "../../service/categoryoffer.service";

type NotificationType = "success" | "info" | "warning" | "error";
const { Option } = Select;

function CategoryofferModal(props: any) {
    const [form] = Form.useForm();
    const { TextArea } = Input;

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
                if (props.madanhmucuudai) {
                    props.handleCancelIUModal();
                    await updateCategoryOffer({
                        madanhmucuudai: props.madanhmucuudai,
                        tendanhmucuudai: values.tendanhmucuudai,
                        DacBiet: values.dacBiet === "Hoạt động",
                        NoiDung: values.noiDung,
                    });
                    props.fetchData();
                    openNotificationWithIcon("success", "Cập nhật thành công!");
                } else {
                    props.handleCancelIUModal();
                    await createCategoryOffer({
                        tendanhmucuudai: values.tendanhmucuudai,
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

    useEffect(() => {
        if (props.madanhmucuudai !== "" && props.madanhmucuudai !== undefined) {
            form.setFieldsValue(props.record);
        } else {
            form.resetFields();
        }
    }, [props.madanhmucuudai, props.record]);

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
                        name="madanhmucuudai"
                        label="Mã danh mục ưu đãi"
                    >
                        <Input />
                    </Form.Item>

                    <Form.Item
                        name="tendanhmucuudai"
                        label="Tên danh mục ưu đãi"
                        rules={[
                            {
                                required: true,
                                message:
                                    "Tên danh mục ưu đãi không được để trống!",
                            },
                        ]}
                    >
                        <Input />
                    </Form.Item>

                    <Form.Item
                        name="dacBiet"
                        label="Trạng thái"
                        rules={[
                            {
                                required: true,
                                message: "Trạng thái không được để trống!",
                            },
                        ]}
                        initialValue="Hoạt động"
                    >
                        <Select placeholder="Chọn trạng thái">
                            <Option value="Hoạt động">Hoạt động</Option>
                            <Option value="Tắt">Tắt</Option>
                        </Select>
                    </Form.Item>
                    <Form.Item
                        name="noiDung"
                        label="Mô tả"
                        rules={[
                            {
                                required: true,
                                message: "Mô tả không được để trống!",
                            },
                        ]}
                    >
                        <Input />
                    </Form.Item>
                </Form>
            </Modal>
        </>
    );
}

export default CategoryofferModal;
