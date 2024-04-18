import { apiClient } from "../constant/api";

const user = JSON.parse(localStorage.getItem("user") || "{}");

export const searchProduct = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-user/SanPham/search-sanpham`,data);
    return res?.data;
}

export const getCategory = async ():Promise<any> =>{
    const res = await apiClient?.get("/api-admin/DanhMuc/get-all-danhmuc");
    return res?.data;
}

export const getCategoryOffer = async ():Promise<any> =>{
    const res = await apiClient?.get("/api-admin/DanhMucUuDai/get-all-danhmucuudai");
    return res?.data;
}

export const getManufactor = async ():Promise<any> =>{
    const res = await apiClient?.get("/api-admin/HangSanXuat/get-all-hangsanxuat");
    return res?.data;
}

export const getDistributor = async ():Promise<any> =>{
    const res = await apiClient?.get("/api-admin/NhaPhanPhoi/get-all-nhaphanphoi");
    return res?.data;
}

export const createProduct = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-admin/SanPham/create-sanpham`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const updateProduct = async (data:any):Promise<any> =>{
    const res = await apiClient?.put(`/api-admin/SanPham/update-sanpham`,data,{
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const getbyMaSanPham = async (maSanPham:any):Promise<any> =>{
    const res = await apiClient?.get("/api-admin/SanPham/getbyid-sanpham/" + maSanPham, {
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}


export const getbyAnhChiTietSanPham = async (maSanPham:any):Promise<any> =>{
    const res = await apiClient?.get("/api-admin/SanPham/getbyid-anhsanphamdetail/" + maSanPham, {
        headers: {
            "Authorization": "Bearer " + user.token,
        }
    });
    return res?.data;
}

export const deleteProduct = async (data: any): Promise<any> => {
    const res = await apiClient?.delete(`/api-admin/SanPham/delete-sanpham`, {
        headers: {
            "Authorization": "Bearer " + user.token,
        },
        data: data 
    });
    return res;
}
