import { apiClient } from "../constant/api";

const user = JSON.parse(localStorage.getItem("user") || "{}");

export const getOverview = async ():Promise<any> =>{
    const res = await apiClient?.get(`/api-admin/Overview/tong-quan`,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const getProductByDay = async (ngay:any):Promise<any> =>{
    const res = await apiClient?.get(`/api-admin/Overview/thongkedoanhthutheosanpham?Ngay=${ngay}`,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}