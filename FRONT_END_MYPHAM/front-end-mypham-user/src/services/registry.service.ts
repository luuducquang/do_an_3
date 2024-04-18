import { apiClient } from "../constant/api";

export const checkUserNameIsEmpty = async ():Promise<any> =>{
    const res = await apiClient?.get("/api-user/TaiKhoan/get-alltaikhoan");
    return res?.data;
}   

export const registryUser = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-user/TaiKhoan/create-taikhoan`,data);
    return res?.data;
}
