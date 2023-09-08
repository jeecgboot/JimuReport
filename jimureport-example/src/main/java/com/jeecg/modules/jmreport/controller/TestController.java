package com.jeecg.modules.jmreport.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@RestController
@RequestMapping
public class TestController {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;


	@RequestMapping(value = "/test/list", method = RequestMethod.GET)
	public void queryPageList(HttpServletRequest req) {
		System.out.println("getMaxRows="+jdbcTemplate.getMaxRows());
		System.out.println("getCacheLimit="+namedParameterJdbcTemplate.getCacheLimit());
	}

	@RequestMapping(value = "/jimureport/test/getOne", method = RequestMethod.GET)
	public Map getOne(HttpServletRequest req) {
		return null;
	}

	/**
	 * API示例接口
	 * 
	 * @param req
	 * @return
	 */
	@RequestMapping(value = "/jimureport/test/getList", method = RequestMethod.GET)
	public String getList(HttpServletRequest req) {
		String json = "{\n" +
				"\t\"data\": [{\n" +
				"\t\t\"ctotal\": \"125箱\",\n" +
				"\t\t\"cname\": \"牛奶0\",\n" +
				"\t\t\"cprice\": \"56\",\n" +
				"\t\t\"riqi\": \"2021年08月11日\",\n" +
				"\t\t\"id\": 100,\n" +
				"\t\t\"dtotal\": \"1256箱\",\n" +
				"\t\t\"tp\": \"7000\",\n" +
				"\t\t\"ztotal\": \"589箱\",\n" +
				"\t\t\"cnum\": \"每箱12瓶\",\n" +
				"\t\t\"dId\": \"1\"\n" +
				"\t}]\n" +
				"}";
		return json;
	}

}
