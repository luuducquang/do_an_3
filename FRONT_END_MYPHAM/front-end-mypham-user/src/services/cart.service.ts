import { apiClient } from "../constant/api";

export const getProductRecomend = async (data:any):Promise<any> =>{
  const res = await apiClient?.post(`/api-user/SanPham/search-sanpham`,data);
  return res?.data;
}