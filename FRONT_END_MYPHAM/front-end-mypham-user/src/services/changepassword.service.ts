import { apiClient } from "../constant/api";

const user = JSON.parse(localStorage.getItem("customer") || "{}");

export const changePasswordUser = async (data:any):Promise<any> =>{
    const res = await apiClient?.put("/api-user/TaiKhoan/doimk-taikhoan",data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const checkUser = async (id:any):Promise<any> =>{
    const res = await apiClient?.get("/api-user/TaiKhoan/getbyid-taikhoan-chitiettaikhoan/"+id,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}
