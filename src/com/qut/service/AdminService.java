package com.qut.service;

import com.qut.pojo.Admin;

public interface AdminService {

	public Admin login(Admin admin);
	
//	public int addAdmin(Admin admin);
	
//	public int delAdmin(Admin admin);
	
	public int updAdm(Admin admin);
	
	public Admin findAdminById(int adminId);
	
	
}

