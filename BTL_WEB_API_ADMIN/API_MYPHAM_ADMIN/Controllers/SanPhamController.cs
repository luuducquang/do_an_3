﻿using BussinessLayer;
using BussinessLayer.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Model;

namespace API_MYPHAM.Controllers
{
    [Authorize(Roles = "1,8")]
    [Route("api/[controller]")]
    [ApiController]
    public class SanPhamController : ControllerBase
    {
        private ISanPhamBUS _sanPhamBUS;

        public SanPhamController(ISanPhamBUS sanPhamBUS)
        {
            _sanPhamBUS = sanPhamBUS;
        }

        [AllowAnonymous]
        [Route("get-allsanpham")]
        [HttpGet]
        public IEnumerable<SanPhamModel> GetDataAll()
        {
            return _sanPhamBUS.Getallsanpham();
        }

        [Route("tang-5-persen")]
        [HttpGet]
        public void Tang5()
        {
            _sanPhamBUS.Tang5();
        }
        
        [Route("giam-5-persen")]
        [HttpGet]
        public void Giam5()
        {
            _sanPhamBUS.Giam5();
        }

        [AllowAnonymous]
        [Route("getbyid-sanpham/{id}")]
        [HttpGet]
        public SanPhamDetailModel GetByID(int id)
        {
            return _sanPhamBUS.Getbyid(id);
        }

        [AllowAnonymous]
        [Route("getbyid-anhsanphamdetail/{id}")]
        [HttpGet]
        public List<AnhSanPhamModel> GetByIdimgdetail(int id)
        {
            return _sanPhamBUS.GetbyidImgdetail(id);
        }

        [Route("create-sanpham")]
        [HttpPost]
        public SanPhamModel CreateSanpham([FromBody] SanPhamModel model)
        {
            _sanPhamBUS.Create(model);
            return model;
        }

        [Route("update-sanpham")]
        [HttpPut]
        public SanPhamModel UpdateSanpham([FromBody] SanPhamModel model)
        {
            _sanPhamBUS.Update(model);
            return model;
        }

        [Route("delete-sanpham")]
        [HttpDelete]
        public bool DeleteSanPham([FromBody] List<int> formdata)
        {
            foreach (int id in formdata)
            {
                _sanPhamBUS.Delete(id);
            }
            return true;
        }

        [Route("search-sanpham")]
        [HttpPost]
        public IActionResult Search([FromBody] Dictionary<string, object> formData)
        {
            try
            {
                var page = int.Parse(formData["page"].ToString());
                var pageSize = int.Parse(formData["pageSize"].ToString());
                string TenSanPham = "";
                if (formData.Keys.Contains("TenSanPham") && !string.IsNullOrEmpty(Convert.ToString(formData["TenSanPham"]))) { TenSanPham = Convert.ToString(formData["TenSanPham"]); }
                string TenDanhMuc = "";
                if (formData.Keys.Contains("TenDanhMuc") && !string.IsNullOrEmpty(Convert.ToString(formData["TenDanhMuc"]))) { TenDanhMuc = Convert.ToString(formData["TenDanhMuc"]); }
                string Tendanhmucuudai = "";
                if (formData.Keys.Contains("Tendanhmucuudai") && !string.IsNullOrEmpty(Convert.ToString(formData["Tendanhmucuudai"]))) { Tendanhmucuudai = Convert.ToString(formData["Tendanhmucuudai"]); }
                //Decimal GiaMin = 0;
                //if (formData.Keys.Contains("GiaMin") && !string.IsNullOrEmpty(Convert.ToString(formData["GiaMin"]))) { GiaMin = Convert.ToDecimal(formData["GiaMin"]); }
                //Decimal GiaMax = 0;
                //if (formData.Keys.Contains("GiaMax") && !string.IsNullOrEmpty(Convert.ToString(formData["GiaMax"]))) { GiaMax = Convert.ToDecimal(formData["GiaMax"]); }
                decimal GiaMin = 0;
                if (formData.ContainsKey("GiaMin") && !string.IsNullOrEmpty(formData["GiaMin"].ToString()))
                {
                    if (decimal.TryParse(formData["GiaMin"].ToString(), out decimal giaMinValue))
                    {
                        GiaMin = giaMinValue;
                    }
                }

                decimal GiaMax = 0;
                if (formData.ContainsKey("GiaMax") && !string.IsNullOrEmpty(formData["GiaMax"].ToString()))
                {
                    if (decimal.TryParse(formData["GiaMax"].ToString(), out decimal giaMaxValue))
                    {
                        GiaMax = giaMaxValue;
                    }
                }
                string TenHang = "";
                if (formData.Keys.Contains("TenHang") && !string.IsNullOrEmpty(Convert.ToString(formData["TenHang"]))) { TenHang = Convert.ToString(formData["TenHang"]); }
                string TenNhaPhanPhoi = "";
                if (formData.Keys.Contains("TenNhaPhanPhoi") && !string.IsNullOrEmpty(Convert.ToString(formData["TenNhaPhanPhoi"]))) { TenNhaPhanPhoi = Convert.ToString(formData["TenNhaPhanPhoi"]); }
                string XuatXu = "";
                if (formData.Keys.Contains("XuatXu") && !string.IsNullOrEmpty(Convert.ToString(formData["XuatXu"]))) { XuatXu = Convert.ToString(formData["XuatXu"]); }
                long total = 0;
                var data = _sanPhamBUS.Search(page, pageSize, out total, TenSanPham,TenDanhMuc,Tendanhmucuudai,GiaMin,GiaMax,TenHang,TenNhaPhanPhoi,XuatXu);
                return Ok(
                   new
                   {
                       TotalItems = total,
                       Data = data,
                       Page = page,
                       PageSize = pageSize
                   }
                   );
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        [Route("search-sanphamsingle")]
        [HttpPost]
        public IActionResult SearchSingle([FromBody] Dictionary<string, object> formData)
        {
            try
            {
                var page = int.Parse(formData["page"].ToString());
                var pageSize = int.Parse(formData["pageSize"].ToString());
                string TenSanPham = "";
                if (formData.Keys.Contains("TenSanPham") && !string.IsNullOrEmpty(Convert.ToString(formData["TenSanPham"]))) { TenSanPham = Convert.ToString(formData["TenSanPham"]); }
                Decimal Gia = 0;
                if (formData.Keys.Contains("Gia") && !string.IsNullOrEmpty(Convert.ToString(formData["Gia"]))) { Gia = Convert.ToDecimal(formData["Gia"]); }
                long total = 0;
                var data = _sanPhamBUS.SearchSingle(page, pageSize, out total, TenSanPham, Gia);
                return Ok(
                   new
                   {
                       TotalItems = total,
                       Data = data,
                       Page = page,
                       PageSize = pageSize
                   }
                   );
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
