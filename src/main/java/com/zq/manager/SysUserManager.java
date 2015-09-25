package com.zq.manager;

import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zq.dao.SysUserMapper;
import com.zq.entity.SysUser;

@Service
public class SysUserManager {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private SysUserMapper dao;

	@Transactional
	public void saveUser(SysUser user){
		try{
			dao.insert(user);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("保存失败");
		}
	}
	@Transactional
	public void save(SysUser user) throws SQLException{
		try{
			dao.insert(user);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("保存失败");
		}
	}
}
