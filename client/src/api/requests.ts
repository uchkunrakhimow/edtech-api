import api from './axios';

export const loginRequest = async (data: { email: string; password: string }) =>
  api.post('/auth/login', data);
