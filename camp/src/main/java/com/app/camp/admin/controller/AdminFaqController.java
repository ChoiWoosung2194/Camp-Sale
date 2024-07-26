package com.app.camp.admin.controller;

import com.app.camp.admin.service.AdminFaqService;
import com.app.camp.admin.vo.AdminFaqVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/faq")
@RequiredArgsConstructor
public class AdminFaqController {

    private final AdminFaqService service;

    @GetMapping("insert")
    public String qnaInsert(){
        return "admin/faqInsert";
    }

    @GetMapping("list")
    public String qnaList(){
        return "admin/faqList";
    }

    @GetMapping("detail")
    public String detailFaq(String no , Model model){
        int result = service.updateHit(no);

        if(result != 1){
            throw new RuntimeException();
        }

        AdminFaqVo vo = service.detailFaq(no);
        model.addAttribute("vo", vo);
        return "admin/faqDetail";
    }
}
