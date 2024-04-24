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

export const getDetailBillById = async (id:any):Promise<any> =>{
    const res = await apiClient?.get(`/api-admin/HoaDon/getbyid-mahoadon-chitiethoadon/${id}`,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const createBillSell = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/HoaDon/create-hoadon`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const updateBillSell = async (data:any):Promise<any> =>{
    const res = await apiClient?.put(`/api-admin/HoaDon/update-hoadon`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const deleteBillSell = async (data: any): Promise<any> => {
    const res = await apiClient?.delete(`/api-admin/HoaDon/delete-hoadon`, {
        headers: {
            "Authorization": "Bearer " + user.token,
        },
        data: data 
    });
    return res;
}
