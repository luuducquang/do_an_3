import React, { useEffect, useState } from "react";
import type { StatisticProps } from "antd";
import { Card, Col, Flex, Row, Select, Statistic } from "antd";
import CountUp from "react-countup";
import { getOverview, getProductByDay } from "../../service/overview.service";
import {
    LineChart,
    Line,
    CartesianGrid,
    XAxis,
    YAxis,
    Tooltip,
    ResponsiveContainer,
} from "recharts";

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

function Overview() {
    const [data, setData] = useState<DataType>();

    const [dataProductByDay, setDataProductByDay] = useState([]);

    async function fetchData() {
        const res = await getOverview();
        // console.log(res);
        setData(res);
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
