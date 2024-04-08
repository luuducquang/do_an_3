import { apiClient } from "../constant/api";

const user = JSON.parse(localStorage.getItem("user") || "{}");

export const searchRate = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/DanhGia/search-danhgia`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const editRate = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/DanhGia/update-danhgia`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}


export const deleteRate = async (data: any): Promise<any> => {
    const res = await apiClient?.delete(`/api-admin/Danhgia/delete-danhgia`, {
        headers: {
            "Authorization": "Bearer " + user.token,
        },
        data: data 
    });
    return res;
}