using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinessLayer.Interfaces
{
    public partial interface IHangSanXuatBUS
    {
        HangSanXuatModel Getbyid(int id);
        List<HangSanXuatModel> GetHangSanXuats();
        public bool Create(HangSanXuatModel model);
        public bool Update(HangSanXuatModel model);
        public bool Delete(int mansx);
        List<HangSanXuatModel> Search(int pageIndex, int pageSize, out long total, string TenHang);

    }
}
