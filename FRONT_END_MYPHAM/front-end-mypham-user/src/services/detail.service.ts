import { apiClient } from "../constant/api";

export const getProductById = async (id:any):Promise<any> =>{
    const res = await apiClient?.get(`/api-user/SanPham/getbyid-sanpham/`+id);
    return res?.data;
}

export const getImgProductDetail = async (maSanPham:any):Promise<any> =>{
  const res = await apiClient?.get(`/api-user/SanPham/getbyid-anhsanphamdetail/`+maSanPham);
  return res?.data;
}

export const getProductRecomend = async (data:any):Promise<any> =>{
  const res = await apiClient?.post(`/api-user/SanPham/search-sanpham`,data);
  return res?.data;
}

export const getRatingProduct = async (data:any):Promise<any> =>{
  const res = await apiClient?.post(`/api-user/DanhGia/search-danhgia`,data);
  return res?.data;
}
