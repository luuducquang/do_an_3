import { apiClient } from "../constant/api";

const user = JSON.parse(localStorage.getItem("customer") || "{}");

export const getInformationOrder = async (id:any):Promise<any> =>{
  const res = await apiClient?.get('/api-user/TaiKhoan/getbyid-taikhoan-chitiettaikhoan/'+id,{
    headers: {
        "Authorization": "Bearer " + user.token,
    }});
  return res?.data;
}

export const sendOrder = async (data:any):Promise<any> =>{
    const res = await apiClient?.post('/api-user/HoaDon/create-hoadon',data,{
      headers: {
          "Authorization": "Bearer " + user.token,
      }});
    return res?.data;
  }