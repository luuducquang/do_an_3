import { apiClient } from "../constant/api";


const user = JSON.parse(localStorage.getItem("customer") || "{}");

export const checkBuyProduct = async (id:any):Promise<any> =>{
    const res = await apiClient?.get(`/api-user/HoaDon/getbytaikhoan-mahoadon-chitiethoadon-product/`+id,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const searchRatingUser = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-user/DanhGia/search-danhgia`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }});
    return res?.data;
}

export const createRating = async (data: any): Promise<any> => {
    const res = await apiClient?.post("/api-user/DanhGia/create-danhgia", data, {
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}