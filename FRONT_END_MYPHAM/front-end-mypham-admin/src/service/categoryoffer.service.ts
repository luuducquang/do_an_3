import { apiClient } from "../constant/api";

const user = JSON.parse(localStorage.getItem("user") || "{}");

export const searchCategoryOffer = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/DanhMucUuDai/search-danhmucuudai`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const createCategoryOffer = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/DanhMucUuDai/create-danhmucuudai`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const updateCategoryOffer = async (data:any):Promise<any> =>{
    const res = await apiClient?.put(`/api-admin/DanhMucUuDai/update-danhmucuudai`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const deleteCategoryOffer = async (data: any): Promise<any> => {
    const res = await apiClient?.delete(`/api-admin/DanhMucUuDai/delete-danhmucuudai`, {
        headers: {
            "Authorization": "Bearer " + user.token,
        },
        data: data 
    });
    return res;
}