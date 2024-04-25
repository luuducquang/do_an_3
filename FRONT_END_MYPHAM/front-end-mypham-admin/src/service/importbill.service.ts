import { apiClient } from "../constant/api";

const user = JSON.parse(localStorage.getItem("user") || "{}");

export const searchImportBill = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/HoaDonNhap/search-hoadonnhapsingle`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const getAllNhaPhanPhoi = async ():Promise<any> =>{
    const res = await apiClient?.get(`/api-admin/NhaPhanPhoi/get-all-nhaphanphoi`,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const getDetailImportBillById = async (id:any):Promise<any> =>{
    const res = await apiClient?.get(`/api-admin/HoaDonNhap/getbyid-mahoadon-chitiethoadonnhap/${id}`,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const createImportBill = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/HoaDonNhap/create-hoadonnhap`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const updateImportBill = async (data:any):Promise<any> =>{
    const res = await apiClient?.put(`/api-admin/HoaDonNhap/update-hoadonnhap`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const deleteImportBill = async (data: any): Promise<any> => {
    const res = await apiClient?.delete(`/api-admin/HoaDonNhap/delete-hoadonnhap`, {
        headers: {
            "Authorization": "Bearer " + user.token,
        },
        data: data 
    });
    return res;
}