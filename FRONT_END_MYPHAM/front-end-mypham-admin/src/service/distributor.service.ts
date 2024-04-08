import { apiClient } from "../constant/api";

const user = JSON.parse(localStorage.getItem("user") || "{}");

export const searchDistributor = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/NhaPhanPhoi/search-nhaphanphoi`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const createDistributor = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/NhaPhanPhoi/create-nhaphanphoi`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const updateDistributor = async (data:any):Promise<any> =>{
    const res = await apiClient?.put(`/api-admin/NhaPhanPhoi/update-nhaphanphoi`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const deleteDistributor = async (data: any): Promise<any> => {
    const res = await apiClient?.delete(`/api-admin/NhaPhanPhoi/delete-nhaphanphoi`, {
        headers: {
            "Authorization": "Bearer " + user.token,
        },
        data: data 
    });
    return res;
}