package com.jeecg.modules.jmreport.testdb;

import lombok.extern.slf4j.Slf4j;
import org.jeecg.modules.jmreport.common.util.OkConvertUtils;
import org.jeecg.modules.jmreport.desreport.model.JmPage;
import org.jeecg.modules.jmreport.api.data.IDataSetFactory;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author qinfeng
 */
@Slf4j
@Component("testDataJavaBean")
public class TestRpSpringBean implements IDataSetFactory {

    /**
     * 不分页时返回list
     * @param param 参数 包括浏览器地址栏 和 查询条件
     * @return
     */
    @Override
    public List<Map<String, Object>> createData(Map<String, Object> param) {
        log.info(" 自定义javabean，无分页 :" + param);
        List<Map<String, Object>> ls = new ArrayList<>();
        Map<String, Object> obj2 = new HashMap<>();
        obj2.put("name", "张三");
        obj2.put("age", "14");
        ls.add(obj2);

        Map<String, Object> obj3 = new HashMap<>();
        obj3.put("name", "李四");
        obj3.put("age", "15");
        ls.add(obj3);

        Map<String, Object> obj4 = new HashMap<>();
        obj4.put("name", "王五");
        obj4.put("age", "16");
        ls.add(obj4);

        return ls;
    }

    /**
     * 分页时返回 JmPage 并且参数param里会传入pageNo, pageSize
     * @param param 参数 包括浏览器地址栏 和 查询条件
     * @return
     */
    @Override
    public JmPage createPageData(Map<String, Object> param) {
        //默认必须有分页参数 pageSize
        if(!param.containsKey("pageSize")){
            param.put("pageSize",1);
        }

        log.info(" 自定义javabean，有分页 :" + param);

        JmPage page = new JmPage();
        List<Map<String, Object>> ls = new ArrayList<>();
        int pageSize =  OkConvertUtils.getInt(param.get("pageSize").toString(),1);

        Map<String, Object> obj2 = new HashMap<>();
        obj2.put("name", "张三");
        obj2.put("age", "14");
        obj2.put("sex", "1");
        ls.add(obj2);

        Map<String, Object> obj3 = new HashMap<>();
        obj3.put("name", "李四");
        obj3.put("age", "15");
        obj2.put("sex", "2");
        ls.add(obj3);

        Map<String, Object> obj4 = new HashMap<>();
        obj4.put("name", "王五");
        obj4.put("age", "16");
        obj2.put("sex", "2");
        ls.add(obj4);

        //以下参数均需设置
        page.setPageSize(pageSize);
        page.setTotal(20);
        page.setRecords(ls);
        return page;
    }
}