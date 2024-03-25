import axios from "axios";
export const apiClient = axios.create({ 
    baseURL: 'http://localhost:23668',
    timeout: 1000 * 60 * 30 * 3, // 90 minutes
  });

export const apiImage = 'http://localhost:23668';
