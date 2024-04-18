import { apiClient } from "../constant/api";

const user = JSON.parse(localStorage.getItem("user") || "{}");

export const searchBannerSlide = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/SlideDetail/search-slide`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const createBannerSlide = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/SlideDetail/create-slide_detail`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const updateBannerSlide = async (data:any):Promise<any> =>{
    const res = await apiClient?.put(`/api-admin/SlideDetail/update-slide_detail`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const deleteBannerSlide = async (data:any):Promise<any> =>{
    const res = await apiClient?.delete(`/api-admin/SlideDetail/delete-slide_detail`,{
        headers: {
            "Authorization": "Bearer " + user.token,
        },
        data:data});
    return res?.data;
}
