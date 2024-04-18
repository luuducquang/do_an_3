import { apiClient } from "../constant/api";

const user = JSON.parse(localStorage.getItem("user") || "{}");

export const searchManufactor = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/HangSanXuat/search-hangsanxuat`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const createManufactor  = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/HangSanXuat/create-hangsanxuat`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const updateManufactor  = async (data:any):Promise<any> =>{
    const res = await apiClient?.put(`/api-admin/HangSanXuat/update-hangsanxuat`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const deleteManufactor = async (data: any): Promise<any> => {
    const res = await apiClient?.delete(`/api-admin/HangSanXuat/delete-hangsanxuat`, {
        headers: {
            "Authorization": "Bearer " + user.token,
        },
        data: data 
    });
    return res;
}