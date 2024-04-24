import React, { useEffect, useState } from "react";
import type { StatisticProps } from "antd";
import { Card, Col, Row, Statistic } from "antd";
import CountUp from "react-countup";
import { getOverview } from "../../service/overview.service";

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

    async function fetchData() {
        const res = await getOverview();
        console.log(res);
        setData(res);
    }

    useEffect(() => {
        fetchData();
    }, []);

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
        </>
    );
}

export default Overview;
