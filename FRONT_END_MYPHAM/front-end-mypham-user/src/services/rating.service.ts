import axios from "axios";
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

export const getCountry = async (): Promise<any> => {
    const res = await axios('https://vapi.vnappmob.com/api/province');
    return res?.data;
}

export const getDistrict = async (province_id:any): Promise<any> => {
    const res = await axios(`https://vapi.vnappmob.com/api/province/district/${province_id}`);
    return res?.data;
}

export const getWard = async (district_id:any): Promise<any> => {
    const res = await axios(`https://vapi.vnappmob.com/api/province/ward/${district_id}`);
    return res?.data;
}