import { apiClient } from "../constant/api";

export const getProductCategory = async (data:any):Promise<any> =>{
  const res = await apiClient?.post(`/api-user/SanPham/search-sanpham`,data);
  return res?.data;
}

export const getProductSelling = async (data:any):Promise<any> =>{
  const res = await apiClient?.post(`/api-user/SanPham/search-sanpham-ban-chay`,data);
  return res?.data;
}


export const getProductViewMost = async (data:any):Promise<any> =>{
  const res = await apiClient?.post(`/api-user/SanPham/search-sanpham-luot-xem-nhieu`,data);
  return res?.data;
}


export const GetProductUp = async (data:any):Promise<any> =>{
  const res = await apiClient?.post(`/api-user/SanPham/search-sanpham-gia-tang`,data);
  return res?.data;
}

export const GetProductDown = async (data:any):Promise<any> =>{
  const res = await apiClient?.post(`/api-user/SanPham/search-sanpham-gia-giam`,data);
  return res?.data;
}