package org.jeecg.modules.jmreport.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/test")
public class TestController {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;


	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void queryPageList(HttpServletRequest req) {
		System.out.println("getMaxRows="+jdbcTemplate.getMaxRows());
		System.out.println("getCacheLimit="+namedParameterJdbcTemplate.getCacheLimit());
	}

}
