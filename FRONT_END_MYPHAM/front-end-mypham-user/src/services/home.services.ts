import { apiClient } from "../constant/api";

export const getCategory = async (): Promise<any> => {
    const res = await apiClient?.get(`/api-user/DanhMuc/get-all-danhmuc`);  
    return res?.data;
};

export const getAds = async (data:any):Promise<any> =>{
  const res = await apiClient?.post(`/api-user/QuangCao/search-quangcao`,data);
  return res?.data;
}

export const getProductHome = async (data:any):Promise<any> =>{
  const res = await apiClient?.post(`/api-user/SanPham/search-sanpham`,data);
  return res?.data;
}

export const getProductFavourite = async ():Promise<any> =>{
  const res = await apiClient?.get(`/api-user/SanPham/sp-uathich`);
  return res?.data;
}


  