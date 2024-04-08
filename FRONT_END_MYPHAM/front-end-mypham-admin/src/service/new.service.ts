import { apiClient } from "../constant/api";

const user = JSON.parse(localStorage.getItem("user") || "{}");

export const searchNew = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/TinTuc/search-tintuc`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const createNew = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/TinTuc/create-tintuc`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const getbyMaTinTuc = async (maTinTuc:any):Promise<any> =>{
    const res = await apiClient?.get("/api-admin/TinTuc/getbyid-tintuc/" + maTinTuc, {
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const deleteNew = async (data: any): Promise<any> => {
    const res = await apiClient?.delete(`/api-admin/TinTuc/delete-tintuc`, {
        headers: {
            "Authorization": "Bearer " + user.token,
        },
        data: data 
    });
    return res;
}