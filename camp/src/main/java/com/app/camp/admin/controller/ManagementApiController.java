package com.app.camp.admin.controller;

import com.app.camp.admin.service.ManagementService;
import com.app.camp.member.vo.MemberVo;
import com.app.camp.owner.vo.OwnerVo;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("admin/api")
@RequiredArgsConstructor
public class ManagementApiController {

    private final ManagementService service;

    @GetMapping("mem")
    public List<MemberVo> getList(){
        List<MemberVo> voList = service.getMemberList();
        return voList;
    }

    @GetMapping("owner")
    public List<OwnerVo> getOwnerList(){
        List<OwnerVo> voList = service.getOwnerList();
        return voList;
    }

    @PostMapping("approval")
    public ResponseEntity<String> updateApproval(String no){
        int result = service.updateApproval(no);
        if(result != 1){
            return ResponseEntity.internalServerError().body("등록에 실패하였습니다.");
        }else {
            return ResponseEntity.ok("등록 되었습니다.");
        }
    }

}
