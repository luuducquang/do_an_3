import { apiClient } from "../constant/api";

const user = JSON.parse(localStorage.getItem("user") || "{}");

export const searchImportBill = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/HoaDonNhap/search-hoadonnhapsingle`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}