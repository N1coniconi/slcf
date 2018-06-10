package com.huhao.springboot.common.dao;

import com.huhao.springboot.common.domain.TaskDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * 
 * @author
 * @email
 * @date
 */
@Mapper
public interface TaskDao {

	TaskDO get(Long id);
	
	List<TaskDO> list(Map<String, Object> map);

	int count(Map<String, Object> map);
	
	int save(TaskDO task);
	
	int update(TaskDO task);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);
}
