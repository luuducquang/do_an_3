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
    public partial class DanhGiaBUS : IDanhGiaBUS
    {
        public IDanhGiaResponsitory _res;

        public DanhGiaBUS(IDanhGiaResponsitory danhgiaResponsitory)
        {
            _res = danhgiaResponsitory;
        }

        public DanhGiaModel Getbyid(int id)
        {
            return _res.Getbyid(id);
        }
        public List<DanhGiaModel> Getbyids(int pageIndex, int pageSize, out long total, int MaSanPham, int ChatLuong, string NoiDung, DateTime? fr_NgayTao, DateTime? to_NgayTao)
        {
            return _res.Getbyids(pageIndex, pageSize, out total, MaSanPham,ChatLuong,NoiDung,fr_NgayTao,to_NgayTao);
        }
        public bool Create(DanhGiaModel model)
        {
            return _res.Create(model);
        }
        public bool Update(DanhGiaModel model)
        {
            return _res.Update(model);
        }
        public bool Delete(int madanhgia)
        {
            return _res.Delete(madanhgia);
        }
    }
}
