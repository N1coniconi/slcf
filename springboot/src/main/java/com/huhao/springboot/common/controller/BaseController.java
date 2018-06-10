package com.huhao.springboot.common.controller;

import com.huhao.springboot.common.utils.ShiroUtils;
import com.huhao.springboot.system.domain.UserDO;
import org.springframework.stereotype.Controller;

@Controller
public class BaseController {
	public UserDO getUser() {
		return ShiroUtils.getUser();
	}

	public Long getUserId() {
		return getUser().getUserId();
	}

	public String getUsername() {
		return getUser().getUsername();
	}
}