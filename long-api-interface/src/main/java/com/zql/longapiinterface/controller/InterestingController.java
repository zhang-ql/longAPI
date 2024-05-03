package com.zql.longapiinterface.controller;

import cn.hutool.core.util.CharsetUtil;
import cn.hutool.core.util.URLUtil;
import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpResponse;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.servlet.http.HttpServletRequest;

/**
 * 有意思的接口
 *
 * @author csw
 */
@RestController
public class InterestingController {

    @PostMapping("/api/rand.avatar")
    public String randAvatar(HttpServletRequest request) {
        String url = "https://api.uomg.com/api/rand.avatar";
        String body = URLUtil.decode(request.getHeader("body"), CharsetUtil.CHARSET_UTF_8);
        HttpResponse httpResponse = HttpRequest.get(url + "?" + body)
                .execute();
        return httpResponse.body();
    }

    @PostMapping("/sjbz/api.php")
    public String randImages(HttpServletRequest request) {
        String url = "http://api.btstu.cn/sjbz/api.php";
        String body = URLUtil.decode(request.getHeader("body"), CharsetUtil.CHARSET_UTF_8);
        HttpResponse httpResponse = HttpRequest.get(url + "?" + body)
                .execute();
        return httpResponse.body();
    }

    @PostMapping("/one")
    public String stringContent(HttpServletRequest request) {
        String url = "https://api.xygeng.cn/one";
        String body = URLUtil.decode(request.getHeader("body"), CharsetUtil.CHARSET_UTF_8);
        System.out.println(body+"//");
        HttpResponse httpResponse = HttpRequest.get(url + "?" + body)
                .execute();
        System.out.println(httpResponse.body());
        // 使用 Hutool 解析 JSON
        JSONObject jsonObject = JSONUtil.parseObj(httpResponse.body());
        // 获取 "content" 字段对应的内容
        String content = jsonObject.getJSONObject("data").getStr("content");

        return content;
    }

    @PostMapping("/yan/api.php")
    public String poisonChicken(HttpServletRequest request) {
        String url = "http://api.btstu.cn/yan/api.php";
        String body = URLUtil.decode(request.getHeader("body"), CharsetUtil.CHARSET_UTF_8);
        HttpResponse httpResponse = HttpRequest.get(url + "?" + body)
                .execute();
        return httpResponse.body();
    }


    @PostMapping("/api/long2dwz")
    public String long2dwz(HttpServletRequest request) {
        String url = "https://api.uomg.com/api/long2dwz";
        String body = URLUtil.decode(request.getHeader("body"), CharsetUtil.CHARSET_UTF_8);
        HttpResponse httpResponse = HttpRequest.get(url + "?" + body)
                .execute();
        return httpResponse.body();
    }


}
