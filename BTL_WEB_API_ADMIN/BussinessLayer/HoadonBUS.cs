﻿using BussinessLayer.Interfaces;
using DataAccessLayer;
using DataAccessLayer.Interfaces;
using Model;
using System;
using System.Collections.Generic;
using System.Diagnostics.SymbolStore;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinessLayer
{
    public partial class HoaDonBUS : IHoaDonBUS
    {
        public IHoaDonResponsitory _res;

        public HoaDonBUS(IHoaDonResponsitory IHoaDonResponsitory)
        {
            _res = IHoaDonResponsitory;
        }

        public List<ChiTietHoaDonModelTWO> Getbyids(int id)
        {
            return _res.Getbyids(id);
        }
        public bool Create(HoaDonModel model)
        {
            return _res.Create(model);
        }

        public bool Update(HoaDonModel model)
        {
            return _res.Update(model);
        }

        public bool Delete(int MaHoaDon)
        {
            return _res.Delete(MaHoaDon);
        }

        public List<ThongkeHoaDonModel> Search(int pageIndex, int pageSize, out long total, string TenKH, string TrangThai, DateTime? fr_NgayTao, DateTime? to_NgayTao, string SDT)
        {
            return _res.Search(pageIndex, pageSize, out total, TenKH, TrangThai, fr_NgayTao, to_NgayTao, SDT);
        }

        public List<HoaDonModelTWO> SearchSingle(int pageIndex, int pageSize, out long total, string TenKH, string TrangThai, DateTime? fr_NgayTao, DateTime? to_NgayTao, string SDT)
        {
            return _res.SearchSingle(pageIndex, pageSize, out total, TenKH, TrangThai, fr_NgayTao, to_NgayTao, SDT);
        }
    }
}
