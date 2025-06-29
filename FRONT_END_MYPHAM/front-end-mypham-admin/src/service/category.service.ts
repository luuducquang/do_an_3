import { apiClient } from "../constant/api";

const user = JSON.parse(localStorage.getItem("user") || "{}");

export const searchCategory = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/DanhMuc/search-danhmuc`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const createCategory = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/DanhMuc/create-danhmuc`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const updateCategory = async (data:any):Promise<any> =>{
    const res = await apiClient?.put(`/api-admin/DanhMuc/update-danhmuc`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const deleteCategory = async (data: any): Promise<any> => {
    const res = await apiClient?.delete(`/api-admin/DanhMuc/delete-danhmuc`, {
        headers: {
            "Authorization": "Bearer " + user.token,
        },
        data: data 
    });
    return res;
}