package com.app.camp.admin.controller;

import com.app.camp.admin.service.AdminNoticeService;
import com.app.camp.admin.vo.AdminNoticeVo;
import com.app.camp.admin.vo.AdminVo;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("admin/api/notice")
@RequiredArgsConstructor
public class AdminNoticeApiController {

    private final AdminNoticeService service;

    @GetMapping
    public List<AdminNoticeVo> noticeList(){
        List<AdminNoticeVo> voList = service.noticeList();
        return voList;
    }

    @PostMapping
    public ResponseEntity<String> noticeInsert(AdminNoticeVo vo, HttpSession session){
        AdminVo loginAdminVo = (AdminVo) session.getAttribute("loginAdminVo");
        String no = loginAdminVo.getNo();
        vo.setWriter(no);
        int result = service.noticeInsert(vo);

        if(result != 1){
            return ResponseEntity.internalServerError().body("등록에 실패하였습니다.");
        }else {
            return ResponseEntity.ok("등록 되었습니다.");
        }

    }
}
