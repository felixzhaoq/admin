/**
 * 基础类
 */
package com.zq.dao;

import java.io.Serializable;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.dao.DataAccessException;




/**
 * 数据库公共接口类
 * @author ysliu
 * @version [版本号:1.0, 2013-05-31]
 */
public interface BaseMapper<T ,PK extends Serializable>
{
	/**
	 * 根据主键查询对应的对象
	 * @param primaryKey 对象的主键
	 * @return 查询后的对象
	 * @throws DataAccessException DataAccessException
	 */
	T findById(PK id) throws DataAccessException;
	
	/**
	 * 根据name查询对应的对象
	 * @param loginName
	 * @return 查询后的对象
	 * @throws DataAccessException DataAccessException
	 */
	T findByKey(String key) throws DataAccessException;
	
	/**
	 * 查询无参数对象
	 * @return 查询后的对象
	 * @throws DataAccessException DataAccessException
	 */
	List<T> find() throws DataAccessException;
	
	/**
	 * 查询分页的对象
	 * @param 分页参数
	 * @return 查询后的对象
	 * @throws DataAccessException DataAccessException
	 */
	List<T> findByPage(@Param("offset")int offset, @Param("limit")int limit) throws DataAccessException;
	
	/**
	 * 查询条数
	 * @return 查询后的对象
	 * @throws DataAccessException DataAccessException
	 */
	int getCount()throws DataAccessException;
	
	/**
	 * 保存对象
	 * @param 实体对象
	 * @throws DataAccessException DataAccessException
	 */
	void insert(T entity) throws DataAccessException;
	
	/**
	 * 修改对象
	 * @param 实体对象
	 * @throws DataAccessException DataAccessException
	 */
	void update(T entity) throws DataAccessException;
	/**
	 * 根据对象主键删除对应的对象
	 * @param primaryKey 对象的
	 */
	void delete(PK id) throws DataAccessException;
	
}
