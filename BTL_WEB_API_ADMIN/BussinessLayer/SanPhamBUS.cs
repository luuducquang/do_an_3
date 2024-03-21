﻿using BussinessLayer.Interfaces;
using DataAccessLayer;
using DataAccessLayer.Interfaces;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinessLayer
{
    public partial class SanPhamBUS : ISanPhamBUS
    {
        public ISanPhamResponsitory _res;

        public SanPhamBUS(ISanPhamResponsitory sanPhamResponsitory)
        {
            _res = sanPhamResponsitory;
        }

        public List<SanPhamModel> Getallsanpham()
        {
            return _res.Getallsanpham();
        }

        public void Tang5()
        {
            _res.Tang5();
            return;
        }

        public void Giam5()
        {
            _res.Giam5();
            return;
        }
        public SanPhamDetailModel Getbyid(int id)
        {
            return _res.Getbyid(id);
        }
        public List<AnhSanPhamModel> GetbyidImgdetail(int id)
        {
            return _res.GetbyidImgdetail(id);
        }
        public bool Create(SanPhamModel model)
        {
            return _res.Create(model);
        }

        public bool Update(SanPhamModel model)
        {
            return _res.Update(model);
        }
        public bool Delete(int MaSanPham)
        {
            return _res.Delete(MaSanPham);
        }

        public List<SanPhamDetailModel> Search(int pageIndex, int pageSize, out long total, string TenSanPham, string TenDanhMuc, string Tendanhmucuudai, Decimal GiaMin, Decimal GiaMax, string TenHang, string TenNhaPhanPhoi, string XuatXu)
        {
            return _res.Search(pageIndex,pageSize, out total, TenSanPham,TenDanhMuc,Tendanhmucuudai, GiaMin, GiaMax, TenHang,TenNhaPhanPhoi, XuatXu);
        }

        public List<SanPhamModel> SearchSingle(int pageIndex, int pageSize, out long total, string TenSanPham, Decimal Gia)
        {
            return _res.SearchSingle(pageIndex, pageSize, out total, TenSanPham, Gia);
        }

    }
}
