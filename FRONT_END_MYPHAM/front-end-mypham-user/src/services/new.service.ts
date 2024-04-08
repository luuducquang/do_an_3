import { apiClient } from "../constant/api";

export const getNew = async (data:any):Promise<any> =>{
  const res = await apiClient?.post(`/api-admin/TinTuc/search-tintuc`,data);
  return res?.data;
}

export const getNewById = async (id:any):Promise<any> =>{
  const res = await apiClient?.get('/api-admin/TinTuc/getbyid-tintuc/'+id);
  return res?.data;
}