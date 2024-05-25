import React, { useEffect, useState } from "react";
import type { StatisticProps, TableColumnsType } from "antd";
import { Card, Col, Flex, Row, Select, Statistic, Table } from "antd";
import CountUp from "react-countup";
import {
    getOverview,
    getProductByDay,
    getProductRunOut,
} from "../../service/overview.service";
import {
    LineChart,
    Line,
    CartesianGrid,
    XAxis,
    YAxis,
    Tooltip,
    ResponsiveContainer,
} from "recharts";
import { FaStar } from "react-icons/fa";
import { apiImage } from "../../constant/api";

const { Option } = Select;

const formatter: StatisticProps["formatter"] = (value) => (
    <CountUp end={value as number} separator="," />
);

const formatterVND: StatisticProps["formatter"] = (value: any) => {
    return (
        <>
            <CountUp end={parseFloat(value)} separator="," />
            <span style={{ marginLeft: "3px" }}>đ</span>
        </>
    );
};

interface DataType {
    soluongHoaDonNhap: any;
    soluongHoaDonBan: any;
    khachHangMua: any;
    khachHangMoi: any;
    luotXem: any;
    soLuongHoaDonHuy: any;
    soLuongHoaDonCho: any;
    soLuongHoaDonDangGiao: any;
    soLuongHoaDonDaGiao: any;
    soLuongHoaDonDoiTra: any;
    tienChi: any;
    doanhThu: any;
}

interface DataTypeProduct {
    key: React.Key;
    maSanPham: any;
    tenSanPham: any;
    anhDaiDien: any;
    giaGiam: any;
    soLuong: any;
    luotBan: any;
    danhGia: any;
    trongLuong: any;
}

function Overview() {
    const [data, setData] = useState<DataType>();
    const [dataProductRunOut, setDataRunOut] = useState([]);

    const [dataProductByDay, setDataProductByDay] = useState([]);

    async function fetchData() {
        const res = await getOverview();
        const resProductRunout = await getProductRunOut();
        setData(res);
        setDataRunOut(resProductRunout);
    }

    async function ChartDataByDay(day: any) {
        const resByDay = await getProductByDay(day);
        const dataByDay = resByDay.map(function (value: any, index: any) {
            return {
                name: value.tenSanPham,
                doanhthu: value.doanhThu,
                soluong: value.soLuong,
            };
        });
        setDataProductByDay(dataByDay);
        // console.log(resByDay);
    }

    useEffect(() => {
        fetchData();
        ChartDataByDay(360);
    }, []);

    const handleChangeDay = (e: any) => {
        ChartDataByDay(e);
    };

    const dataSet = dataProductRunOut.map(function (value: any, index: any) {
        return {
            key: index + 1,
            maSanPham: value.maSanPham,
            tenSanPham: value.tenSanPham,
            anhDaiDien: apiImage + value.anhDaiDien,
            giaGiam: value.giaGiam,
            soLuong: value.soLuong,
            luotBan: value.luotBan,
            danhGia: value.danhGia,
            trongLuong: value.trongLuong,
        };
    });

    const columns: TableColumnsType<DataTypeProduct> = [
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
            dataIndex: "giaGiam",
            render: (text: string) => parseInt(text).toLocaleString("en-US"),
        },
        {
            title: "Đã Bán",
            dataIndex: "luotBan",
        },
        {
            title: "Đánh Giá",
            dataIndex: "danhGia",
            render: (danhGia: string) => {
                return (
                    <Flex justify="center" align="center">
                        <span>{danhGia}</span>
                        <FaStar
                            style={{
                                marginTop: "-3px",
                                color: "#ff9c1a",
                                marginLeft: "2px",
                            }}
                        />
                    </Flex>
                );
            },
        },
        {
            title: "Trọng Lượng",
            dataIndex: "trongLuong",
        },
        {
            title: "Còn lại",
            dataIndex: "soLuong",
        },
    ];

    return (
        <>
            <Row gutter={16} style={{ display: "flex" }}>
                <Col span={4}>
                    <Card
                        style={{ backgroundColor: "#f0f2f5", height: "100%" }}
                    >
                        <Statistic
                            title="Tổng đơn hàng nhập"
                            value={data?.soluongHoaDonNhap}
                            formatter={formatter}
                        />
                    </Card>
                </Col>
                <Col span={4}>
                    <Card
                        style={{ backgroundColor: "#f0f2f5", height: "100%" }}
                    >
                        <Statistic
                            title="Tổng đơn hàng bán"
                            value={data?.soluongHoaDonBan}
                            formatter={formatter}
                        />
                    </Card>
                </Col>
                <Col span={4}>
                    <Card
                        style={{ backgroundColor: "#f0f2f5", height: "100%" }}
                    >
                        <Statistic
                            title="Tổng khách hàng"
                            value={data?.khachHangMua}
                            formatter={formatter}
                        />
                    </Card>
                </Col>
                <Col span={4}>
                    <Card
                        style={{ backgroundColor: "#f0f2f5", height: "100%" }}
                    >
                        <Statistic
                            title="Khách hàng mới trong tháng"
                            value={data?.khachHangMoi}
                            formatter={formatter}
                        />
                    </Card>
                </Col>
                <Col span={4}>
                    <Card
                        style={{ backgroundColor: "#f0f2f5", height: "100%" }}
                    >
                        <Statistic
                            title="Tỉ lệ ra đơn"
                            value={
                                (data?.soluongHoaDonBan / data?.luotXem) * 100
                            }
                            formatter={(value: any) =>
                                `${Math.round(value * 100) / 100}%`
                            }
                        />
                    </Card>
                </Col>
                <Col span={4}>
                    <Card
                        style={{ backgroundColor: "#f0f2f5", height: "100%" }}
                    >
                        <Statistic
                            title="Tỉ lệ huỷ đơn"
                            value={
                                Math.round(
                                    (data?.soLuongHoaDonHuy /
                                        data?.soluongHoaDonBan) *
                                        10000
                                ) / 100
                            }
                            formatter={(value) => `${value}%`}
                        />
                    </Card>
                </Col>
            </Row>

            <Row gutter={16} style={{ display: "flex", marginTop: "15px" }}>
                <Col span={4}>
                    <Card
                        style={{ backgroundColor: "#f0f2f5", height: "100%" }}
                    >
                        <Statistic
                            title="Đơn hàng bị huỷ"
                            value={data?.soLuongHoaDonHuy}
                            formatter={formatter}
                        />
                    </Card>
                </Col>
                <Col span={4}>
                    <Card
                        style={{ backgroundColor: "#f0f2f5", height: "100%" }}
                    >
                        <Statistic
                            title="Đơn hàng chờ"
                            value={data?.soLuongHoaDonCho}
                            formatter={formatter}
                        />
                    </Card>
                </Col>
                <Col span={6}>
                    <Card
                        style={{ backgroundColor: "#f0f2f5", height: "100%" }}
                    >
                        <Statistic
                            title="Đơn hàng đang giao"
                            value={data?.soLuongHoaDonDangGiao}
                            formatter={formatter}
                        />
                    </Card>
                </Col>
                <Col span={6}>
                    <Card
                        style={{ backgroundColor: "#f0f2f5", height: "100%" }}
                    >
                        <Statistic
                            title="Đơn hàng hoàn tất"
                            value={data?.soLuongHoaDonDaGiao}
                            formatter={formatter}
                        />
                    </Card>
                </Col>
                <Col span={4}>
                    <Card
                        style={{ backgroundColor: "#f0f2f5", height: "100%" }}
                    >
                        <Statistic
                            title="Đơn hàng đổi trả"
                            value={data?.soLuongHoaDonDoiTra}
                            formatter={formatter}
                        />
                    </Card>
                </Col>
            </Row>

            <Row gutter={16} style={{ display: "flex", marginTop: "15px" }}>
                <Col span={8}>
                    <Card
                        style={{ backgroundColor: "#f0f2f5", height: "100%" }}
                    >
                        <Statistic
                            title="Tổng lượt xem sản phẩm"
                            value={data?.luotXem}
                            formatter={formatter}
                        />
                    </Card>
                </Col>
                <Col span={8}>
                    <Card
                        style={{ backgroundColor: "#f0f2f5", height: "100%" }}
                    >
                        <Statistic
                            title="Tổng tiền chi"
                            value={data?.tienChi}
                            formatter={formatterVND}
                        />
                    </Card>
                </Col>
                <Col span={8}>
                    <Card
                        style={{ backgroundColor: "#f0f2f5", height: "100%" }}
                    >
                        <Statistic
                            title="Tổng doanh thu"
                            value={data?.doanhThu}
                            formatter={formatterVND}
                        />
                    </Card>
                </Col>
            </Row>

            <p
                style={{
                    fontSize: "20px",
                    height: "10px",
                    marginTop: "20px",
                    marginLeft: "2px",
                    color: "#ed0505",
                }}
            >
                Sản phẩm sắp hết
            </p>

            <Table
                bordered={true}
                columns={columns}
                dataSource={dataSet}
                rowClassName="hover-row"
                pagination={false}
            />

            <Flex justify="center" align="center" style={{ marginTop: "25px" }}>
                <p
                    style={{
                        height: "7px",
                        fontSize: "20px",
                        marginRight: "10px",
                        color: "#33437",
                    }}
                >
                    Thống kê sản phẩm đã bán trong
                </p>
                <Select
                    defaultValue={"360"}
                    onChange={handleChangeDay}
                    style={{ width: "120px" }}
                >
                    <Option value="" disabled>
                        Chọn ngày muốn thống kê
                    </Option>
                    <Option value="1">1 ngày</Option>
                    <Option value="7">7 ngày</Option>
                    <Option value="14">14 ngày</Option>
                    <Option value="30">30 ngày</Option>
                    <Option value="60">60 ngày</Option>
                    <Option value="90">90 ngày</Option>
                    <Option value="360">360 ngày</Option>
                </Select>
            </Flex>

            <div style={{ width: "100%", height: 400 }}>
                <ResponsiveContainer width="100%" height="100%">
                    <LineChart
                        data={dataProductByDay}
                        margin={{ top: 5, right: 20, bottom: 5, left: 0 }}
                    >
                        <Line
                            type="monotone"
                            dataKey="doanhthu"
                            stroke="#8884d8"
                        />
                        <CartesianGrid stroke="#ccc" strokeDasharray="5 5" />
                        <XAxis dataKey="name" style={{ display: "none" }} />
                        <YAxis
                            style={{ fontSize: "8px" }}
                            tickFormatter={(value) =>
                                `${value.toLocaleString()}đ`
                            }
                        />
                        <Tooltip content={<CustomTooltipByDay />} />
                    </LineChart>
                </ResponsiveContainer>
            </div>
        </>
    );
}

export default Overview;

export const CustomTooltipByDay = ({ active, payload, label }: any) => {
    if (active && payload && payload.length) {
        const data = payload[0].payload;
        return (
            <div
                className="custom-tooltip"
                style={{
                    backgroundColor: "#fff",
                    padding: "10px",
                    border: "1px solid #ccc",
                }}
            >
                <p className="label">{`Tên sản phẩm: ${data.name}`}</p>
                <p className="intro">
                    {`Doanh thu: ${
                        data.doanhthu
                            ? data.doanhthu.toLocaleString("De-de")
                            : 0
                    }`}
                    đ
                </p>
                <p className="desc">{`Số lượng: ${
                    data.soluong ? data.soluong.toLocaleString("De-de") : 0
                }`}</p>
            </div>
        );
    }

    return null;
};
