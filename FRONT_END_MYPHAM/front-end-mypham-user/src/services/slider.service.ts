import { apiClient } from "../constant/api";

export const getAllImagesSlider = async ():Promise<any> =>{
  const res = await apiClient?.get("/api-user/SlideDetail/get-all-slide");
  return res?.data;
}