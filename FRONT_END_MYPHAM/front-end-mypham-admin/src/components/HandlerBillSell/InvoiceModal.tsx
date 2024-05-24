import { Modal } from "antd";
import { usePDF } from "react-to-pdf";
import "./invoice.scss";
import { format } from "date-fns";
import { useEffect, useState } from "react";
import { getDetailBillById } from "../../service/billsell.service";

const InvoiceModal = (props: any) => {
    const { toPDF, targetRef } = usePDF({ filename: "page.pdf" });

    const handleOk = () => {
        props.handleCancelIUModal();
        toPDF();
    };

    const handleCancel = () => {
        props.handleCancelIUModal();
    };

    const currentDate = new Date();
    const formattedDate = format(currentDate, "dd/MM/yyyy-HH:mm");
    const [data, setData] = useState<any>();

    async function fetchDetail(maHoaDon: any) {
        const resDetailBill = await getDetailBillById(maHoaDon);
        // console.log(resDetailBill);
        setData(resDetailBill);
    }

    useEffect(() => {
        fetchDetail(props.maHoaDon);
    }, [props.maHoaDon]);

    return (
        <>
            <Modal
                cancelText={"Hủy bỏ"}
                okText={"Download PDF"}
                width={"55vw"}
                open={props.isModalOpen}
                onOk={handleOk}
                onCancel={handleCancel}
            >
                <div>
                    <div ref={targetRef} id="contentPDF">
                        <h1
                            style={{
                                textAlign: "center",
                                fontWeight: 700,
                                fontSize: 30,
                            }}
                        >
                            Hoá đơn bán hàng
                        </h1>
                        <div className="py-4">
                            <div className="px-14">
                                <table className="w-full border-collapse border-spacing-0">
                                    <tbody>
                                        <tr>
                                            <td className="align-top">
                                                <div className="text-sm">
                                                    <table className="border-collapse border-spacing-0">
                                                        <tbody>
                                                            <tr>
                                                                <td className="border-r pr-4">
                                                                    <div>
                                                                        <p className="whitespace-nowrap text-slate-400 text-right">
                                                                            Ngày
                                                                            mua
                                                                        </p>
                                                                        <p className="whitespace-nowrap font-bold text-main text-right">
                                                                            {
                                                                                formattedDate
                                                                            }
                                                                        </p>
                                                                    </div>
                                                                </td>
                                                                <td className="pl-4">
                                                                    <div>
                                                                        <p className="whitespace-nowrap text-slate-400 text-right">
                                                                            Hoá
                                                                            đơn
                                                                            #
                                                                        </p>
                                                                        <p className="whitespace-nowrap font-bold text-main text-center">
                                                                            {
                                                                                props.maHoaDon
                                                                            }
                                                                        </p>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div className="bg-slate-100 px-14 py-6 text-sm">
                                <table className="w-full border-collapse border-spacing-0">
                                    <tbody>
                                        <tr>
                                            <td className="w-1/2 align-top">
                                                <div className="text-sm text-neutral-600">
                                                    <p className="font-bold">
                                                        Cửa hàng: SkinCare
                                                        Comestic
                                                    </p>
                                                    <p>Phone: 0123.456.789</p>
                                                    <p>
                                                        Địa chỉ: Hưng Đạo - Tiên
                                                        Lữ - Hưng Yên
                                                    </p>
                                                </div>
                                            </td>
                                            <td className="w-1/2 align-top text-right">
                                                <div className="text-sm text-neutral-600">
                                                    <p className="font-bold">
                                                        Khách hàng:{" "}
                                                        {props.record?.tenKH}
                                                    </p>
                                                    <p>
                                                        Điện thoại:{" "}
                                                        {props.record?.sdt}
                                                    </p>
                                                    <p>
                                                        Địa chỉ 1:{" "}
                                                        {
                                                            props.record
                                                                ?.diaChiGiaoHang
                                                        }
                                                    </p>
                                                    <p>
                                                        Địa chỉ 2:{" "}
                                                        {
                                                            props.record
                                                                ?.diaChiGiaoHang
                                                        }
                                                    </p>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div className="px-14 py-10 text-sm text-neutral-700">
                                <table className="w-full border-collapse border-spacing-0">
                                    <thead>
                                        <tr>
                                            <td className="border-b-2 border-main pb-3 pl-3 font-bold text-main">
                                                #
                                            </td>
                                            <td
                                                style={{ width: "55%" }}
                                                className="border-b-2 border-main pb-3 pl-2 font-bold text-main"
                                            >
                                                Sản Phẩm
                                            </td>
                                            <td className="border-b-2 border-main pb-3 pl-2 text-center font-bold text-main">
                                                Số Lượng
                                            </td>
                                            <td className="border-b-2 border-main pb-3 pl-2 text-center font-bold text-main">
                                                Giá bán
                                            </td>
                                            <td className="border-b-2 border-main pb-3 pl-2 text-center font-bold text-main">
                                                Tổng Tiền
                                            </td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {data
                                            ? data.map(function (
                                                  value: any,
                                                  index: any
                                              ) {
                                                  return (
                                                      <tr
                                                          key={index}
                                                          ng-repeat="x in listDetailInvoice"
                                                      >
                                                          <td className="border-b py-3 pl-3">
                                                              {index + 1}
                                                          </td>
                                                          <td className="border-b py-3 pl-2">
                                                              {value.tenSanPham}
                                                          </td>
                                                          <td className="border-b py-3 pl-2 text-center">
                                                              {value.soLuong
                                                                  ? value.soLuong.toLocaleString(
                                                                        "De-de"
                                                                    )
                                                                  : 0}
                                                          </td>
                                                          <td className="border-b py-3 pl-2 text-center">
                                                              {value.donGia
                                                                  ? value.donGia.toLocaleString(
                                                                        "De-de"
                                                                    )
                                                                  : 0}
                                                              <sup>đ</sup>
                                                          </td>
                                                          <td className="border-b py-3 pl-2 text-center">
                                                              {value.tongGia
                                                                  ? value.tongGia.toLocaleString(
                                                                        "De-de"
                                                                    )
                                                                  : 0}
                                                              <sup>đ</sup>
                                                          </td>
                                                      </tr>
                                                  );
                                              })
                                            : ""}
                                        <tr>
                                            <td colSpan={6}>
                                                <table className="w-full border-collapse border-spacing-0">
                                                    <tbody>
                                                        <tr>
                                                            <td className="w-full" />
                                                            <td>
                                                                <table className="w-full border-collapse border-spacing-0">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td className="border-b p-3">
                                                                                <div className="whitespace-nowrap text-slate-400">
                                                                                    Tổng
                                                                                    tiền
                                                                                    tạm
                                                                                    tính:
                                                                                </div>
                                                                            </td>
                                                                            <td className="border-b p-3 text-right">
                                                                                <div className="whitespace-nowrap font-bold text-main">
                                                                                    {props
                                                                                        .record
                                                                                        ?.tongTien
                                                                                        ? props.record?.tongTien.toLocaleString(
                                                                                              "De-de"
                                                                                          )
                                                                                        : 0}
                                                                                    <sup>
                                                                                        đ
                                                                                    </sup>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                        <tr></tr>
                                                                        <tr>
                                                                            <td className="border-b p-3">
                                                                                <div className="whitespace-nowrap text-slate-400">
                                                                                    VAT:
                                                                                </div>
                                                                            </td>
                                                                            <td className="border-b p-3 text-right">
                                                                                <div className="whitespace-nowrap font-bold text-main">
                                                                                    0
                                                                                    <sup>
                                                                                        đ
                                                                                    </sup>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                        <tr></tr>
                                                                        <tr>
                                                                            <td className="border-b p-3">
                                                                                <div className="whitespace-nowrap text-slate-400">
                                                                                    Phí
                                                                                    vận
                                                                                    chuyển:
                                                                                </div>
                                                                            </td>
                                                                            <td className="border-b p-3 text-right">
                                                                                <div className="whitespace-nowrap font-bold text-main">
                                                                                    30.000
                                                                                    <sup>
                                                                                        đ
                                                                                    </sup>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td className="bg-main p-3">
                                                                                <div className="whitespace-nowrap font-bold text-white">
                                                                                    Tổng
                                                                                    thanh
                                                                                    toán:
                                                                                </div>
                                                                            </td>
                                                                            <td className="bg-main p-3 text-right">
                                                                                <div className="whitespace-nowrap font-bold text-white">
                                                                                    {props
                                                                                        .record
                                                                                        ?.tongTien
                                                                                        ? (
                                                                                              props
                                                                                                  .record
                                                                                                  ?.tongTien +
                                                                                              30000
                                                                                          ).toLocaleString(
                                                                                              "De-de"
                                                                                          )
                                                                                        : 0}
                                                                                    <sup>
                                                                                        đ
                                                                                    </sup>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </Modal>
        </>
    );
};

export default InvoiceModal;
