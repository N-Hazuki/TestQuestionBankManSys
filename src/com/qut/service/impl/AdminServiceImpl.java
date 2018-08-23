package com.qut.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qut.mapper.AdminMapper;
import com.qut.pojo.Admin;
import com.qut.service.AdminService;

@Service
@Transactional(rollbackFor=Exception.class)
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminMapper adminMapper;
	
	//管理员登录验证
	public Admin login(Admin admin) {
		return adminMapper.findAdmin(admin);
	}
	
	//添加其他管理员信息
//	public int addAdmin(Admin admin) {
//		return adminMapper.addAdmin(admin);
//	}
	
//	public int delAdmin(Admin admin) {
//		return adminMapper.delAdmin(admin);
//	}
	
	public int updAdm(Admin admin) {
		return adminMapper.updAdm(admin);
	}
	
	public Admin findAdminById(int adminId){
		return adminMapper.findAdminById(adminId);
	}

}
