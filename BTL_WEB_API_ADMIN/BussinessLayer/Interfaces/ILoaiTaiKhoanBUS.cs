using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinessLayer.Interfaces
{
    public partial interface ILoaiTaiKhoanBUS
    {
        LoaiTaiKhoanModel Getbyid(int id);
        List<LoaiTaiKhoanModel> GettAllLoaiTaiKhoan();
        public bool Create(LoaiTaiKhoanModel model);
        public bool Update(LoaiTaiKhoanModel model);
        public bool Delete(int maloaitaikhoan);


    }
}
