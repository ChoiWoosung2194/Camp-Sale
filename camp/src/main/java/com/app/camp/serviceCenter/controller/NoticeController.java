package com.app.camp.serviceCenter.controller;

import com.app.camp.serviceCenter.service.NoticeService;
import com.app.camp.serviceCenter.vo.NoticeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("notice")
@RequiredArgsConstructor
public class NoticeController {

    private final NoticeService service;

    @GetMapping("list")
    public String noticeList(){
        return "servicecenter/notice/listNotice";
    }



    @GetMapping("detail")
    public String noticeDetail(String no, Model model){
        int result = service.updateHit(no);
        NoticeVo vo = service.noticeDetail(no);
        model.addAttribute("vo", vo);
        return "servicecenter/notice/detailNotice";
    }
}
