import { apiClient } from "../constant/api";

const user = JSON.parse(localStorage.getItem("user") || "{}");

export const getListTypeAccount = async ():Promise<any> =>{
    const res = await apiClient?.get(`/api-admin/LoaiTaiKhoan/get_all_loaitaikhoan`,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const checkUserNameIsEmpty = async ():Promise<any> =>{
    const res = await apiClient?.get("/api-user/TaiKhoan/get-alltaikhoan");
    return res?.data;
}

export const getDetailAccount = async (id:any):Promise<any> =>{
    const res = await apiClient?.get(`/api-admin/TaiKhoan/getbyid-taikhoan-chitiettaikhoan/`+id,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}


export const searchAccount = async (data:any):Promise<any> =>{
    const res = await apiClient?.post('/api-admin/TaiKhoan/search-taikhoan',data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}


export const createAccount = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/TaiKhoan/create-taikhoan`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const updateAccount = async (data:any):Promise<any> =>{
    const res = await apiClient?.put(`/api-admin/TaiKhoan/update-taikhoan`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const deleteAccount = async (data: any): Promise<any> => {
    const res = await apiClient?.delete(`/api-admin/TaiKhoan/delete-taikhoan`, {
        headers: {
            "Authorization": "Bearer " + user.token,
        },
        data: data 
    });
    return res;
}
