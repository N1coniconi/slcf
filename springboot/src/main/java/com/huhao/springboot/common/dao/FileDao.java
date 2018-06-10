package com.huhao.springboot.common.dao;

import com.huhao.springboot.common.domain.FileDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * 文件上传
 * @author
 * @email
 * @date
 */
@Mapper
public interface FileDao {

	FileDO get(Long id);
	
	List<FileDO> list(Map<String, Object> map);

	int count(Map<String, Object> map);
	
	int save(FileDO file);
	
	int update(FileDO file);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);
}
