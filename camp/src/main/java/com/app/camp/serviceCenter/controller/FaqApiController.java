package com.app.camp.serviceCenter.controller;

import com.app.camp.serviceCenter.service.FaqService;
import com.app.camp.serviceCenter.vo.FaqVo;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("faq/api")
@RequiredArgsConstructor
public class FaqApiController {

    private final FaqService service;

    @GetMapping
    public List<FaqVo> faqList(){
        List<FaqVo> voList = service.faqList();

        return voList;
    }


}
