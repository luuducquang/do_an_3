import { apiClient } from "../constant/api";

export const login = async (data:any):Promise<any> =>{
    const res = await apiClient?.post(`/api-user/User/login`,data);
    return res?.data;
}
