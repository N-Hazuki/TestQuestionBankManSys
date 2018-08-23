package com.qut.mapper;

import org.springframework.stereotype.Repository;

import com.qut.pojo.Admin;


@Repository
public interface AdminMapper {

	public Admin findAdmin(Admin admin);
	
//	public int addAdmin(Admin admin);
	
//	public int delAdmin(Admin admin);

	public int updAdm(Admin admin);

	public Admin findAdminById(int adminId);
	
}
