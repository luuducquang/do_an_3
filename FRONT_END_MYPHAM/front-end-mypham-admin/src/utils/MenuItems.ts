import { FaHouse, FaShop, FaFileInvoiceDollar ,FaFileLines,FaNewspaper,FaComment,FaTags ,FaTag ,FaIndustry,FaHouseChimney ,FaAdversal 
,FaThumbtack ,FaUserTag ,FaUserGear      } from "react-icons/fa6";

import { uniqueId } from 'lodash';

const Menuitems = [
  {
    navlabel: true,
    subheader: 'Trang quản trị',
  },

  {
    id: uniqueId(),
    title: 'Tổng Quan',
    icon: FaHouse,
    href: '/',
  },
  {
    id: uniqueId(),
    title: 'Thông Tin Sản Phẩm',
    icon: FaShop,
    href: '/product',
  },
  {
    id: uniqueId(),
    title: 'Hoá Đơn Bán',
    icon: FaFileInvoiceDollar,
    href: '/billsell',
  },
  {
    id: uniqueId(),
    title: 'Hoá Đơn Nhập',
    icon: FaFileLines,
    href: '/importbill',
  },
  {
    id: uniqueId(),
    title: 'Tin Tức',
    icon: FaNewspaper ,
    href: '/new',
  },
  {
    id: uniqueId(),
    title: 'Đánh Giá',
    icon: FaComment ,
    href: '/rate',
  },
  {
    id: uniqueId(),
    title: 'Danh Mục',
    icon: FaTags ,
    href: '/category',
  },
  {
    id: uniqueId(),
    title: 'Danh Mục Ưu Đãi',
    icon: FaTag,
    href: '/categoryoffer',
  },
  {
    id: uniqueId(),
    title: 'Hãng Sản Xuất',
    icon: FaIndustry ,
    href: '/manufacter',
  },
  {
    id: uniqueId(),
    title: 'Nhà Phân Phối',
    icon: FaHouseChimney ,
    href: '/distributor',
  },
  {
    id: uniqueId(),
    title: 'Quảng Cáo',
    icon: FaAdversal ,
    href: '/advertisement',
  },
  {
    id: uniqueId(),
    title: 'Banner Slide',
    icon: FaThumbtack ,
    href: '/bannerslide',
  },
  {
    id: uniqueId(),
    title: 'Loại Tài Khoản',
    icon: FaUserTag ,
    href: '/typeaccount',
  },
  {
    id: uniqueId(),
    title: 'Tài Khoản',
    icon: FaUserGear ,
    href: '/account',
  },
];

export default Menuitems;
