import { apiClient } from "../constant/api";

const user = JSON.parse(localStorage.getItem("user") || "{}");

export const searchBillSell = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/HoaDon/search-hoadonsingle`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const getAllProduct = async ():Promise<any> =>{
    const res = await apiClient?.get(`/api-admin/SanPham/get-allsanpham`,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

