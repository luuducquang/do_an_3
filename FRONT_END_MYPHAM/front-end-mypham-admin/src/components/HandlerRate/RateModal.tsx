import { Button, Form, Input, Modal, Select, notification } from "antd";
import { useEffect, useState } from "react";
import { editRate } from "../../service/rate.service";

type NotificationType = "success" | "info" | "warning" | "error";

type User = {
    mataikhoan: any;
};

function RateModal(props: any) {
    const [form] = Form.useForm();

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
                if (props.maDanhGia) {
                    props.handleCancelIUModal();
                    await editRate({
                        MaDanhGia: values.maDanhGia,
                        GhiChu: values.ghiChu,
                        AnhDanhGia: "",
                        NoiDung: "",
                    });
                    props.fetchData();
                    openNotificationWithIcon("success", "Cập nhật thành công!");
                } else {
                    openNotificationWithIcon("warning", "Chưa có mã đánh giá!");
                }
            })
            .catch(async (error) => {
                openNotificationWithIcon("warning", "Thông tin chưa đủ!");
            });
    };

    const handleCancel = () => {
        props.handleCancelIUModal();
    };

    useEffect(() => {
        if (props.maDanhGia !== "" && props.maDanhGia !== undefined) {
            form.setFieldsValue(props.record);
        } else {
            form.resetFields();
        }
    }, [props.maDanhGia, props.record]);

    return (
        <>
            {contextHolder}
            <Modal
                title="Chỉnh sửa đánh giá"
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
                        name="maDanhGia"
                        label="Mã đánh giá"
                    >
                        <Input />
                    </Form.Item>

                    <Form.Item
                        name="ghiChu"
                        label="Ghi Chú"
                        rules={[
                            {
                                required: true,
                                message: "Ghi chú không được để trống!",
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

export default RateModal;
