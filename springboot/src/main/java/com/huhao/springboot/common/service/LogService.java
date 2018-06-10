package com.huhao.springboot.common.service;

import com.huhao.springboot.common.domain.LogDO;
import com.huhao.springboot.common.domain.PageDO;
import com.huhao.springboot.common.utils.Query;
import org.springframework.stereotype.Service;

@Service
public interface LogService {
	void save(LogDO logDO);
	PageDO<LogDO> queryList(Query query);
	int remove(Long id);
	int batchRemove(Long[] ids);
}
