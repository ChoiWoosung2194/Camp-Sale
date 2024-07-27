package com.app.camp.owner.controller;

import com.app.camp.owner.service.CampNoticeService;
import com.app.camp.owner.vo.CampNoticeVo;
import com.app.camp.owner.vo.OwnerVo;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("owner/api/notice")
@RequiredArgsConstructor
public class CampNoticeApiController {

    private final CampNoticeService service;

    @GetMapping("list")
    public List<CampNoticeVo> getNoticeList(HttpSession session){
        OwnerVo loginOwnerVo = (OwnerVo) session.getAttribute("loginOwnerVo");
        String no = loginOwnerVo.getNo();
        List<CampNoticeVo> campNoticeList = service.getCampNotice(no);

        return campNoticeList;
    }

    //캠핑장 공지사항 작성하기 (처리)
    @PostMapping
    public ResponseEntity<String> insertNotice(HttpSession session , CampNoticeVo vo){
        OwnerVo loginOwnerVo = (OwnerVo) session.getAttribute("loginOwnerVo");
        String ownerNo = loginOwnerVo.getNo();
        vo.setOwnerNo(ownerNo);

        int result = service.insertNotice(vo);

        if(result != 1){
            return ResponseEntity.internalServerError().body("등록에 실패하였습니다.");
        }else {
            return ResponseEntity.ok("등록 되었습니다.");
        }

    }

    //공지사항 삭제하기
    @DeleteMapping
    public ResponseEntity<String> deleteNotice(String no){
        int result = service.delteNotice(no);

        if(result != 1){
            return ResponseEntity.internalServerError().body("삭제에 실패하였습니다.");
        }else {
            return ResponseEntity.ok("삭제 되었습니다.");
        }
    }

    //공지사항 업데이트하기
    @PostMapping("update")
    public ResponseEntity<String> updateNotice(CampNoticeVo vo){

        System.out.println("vo = " + vo);
        int result = service.updateNotice(vo);

        if(result != 1){
            return ResponseEntity.internalServerError().body("업데이트에 실패했습니다.");
        }else{
            return ResponseEntity.ok("업데이트 되었습니다.");
        }
    }
}
