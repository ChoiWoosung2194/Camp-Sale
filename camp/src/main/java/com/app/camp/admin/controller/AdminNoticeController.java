package com.app.camp.admin.controller;

import com.app.camp.admin.service.AdminNoticeService;
import com.app.camp.admin.vo.AdminNoticeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/notice")
@RequiredArgsConstructor
public class AdminNoticeController {

    private final AdminNoticeService service;

    @GetMapping("list")
    public String noticeList(){
        return "admin/noticeList";
    }

    @GetMapping("insert")
    public String insertNotice(){
        return "admin/noticeInsert";
    }
    @GetMapping("detail")
    public String detailNotice(String no , Model model){
        int result = service.updateHit(no);
        AdminNoticeVo vo = service.detailNotice(no);
        model.addAttribute("vo", vo);
        return "admin/noticeDetail";
    }
}
