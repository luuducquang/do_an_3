import { apiClient } from "../constant/api";

const user = JSON.parse(localStorage.getItem("user") || "{}");

export const searchAdvertisement = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/QuangCao/search-quangcao`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const createAdvertisement = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/QuangCao/create-quangcao`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const updateAdvertisement = async (data:any):Promise<any> =>{
    const res = await apiClient?.put(`/api-admin/QuangCao/update-quangcao`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const deleteAdvertisement = async (data:any):Promise<any> =>{
    const res = await apiClient?.delete(`/api-admin/QuangCao/delete-quangcao2`,{
        headers: {
            "Authorization": "Bearer " + user.token,
        },
        data:data});
    return res?.data;
}
