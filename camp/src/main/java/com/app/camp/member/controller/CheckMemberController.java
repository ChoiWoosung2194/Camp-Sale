package com.app.camp.member.controller;


import com.app.camp.member.service.CheckMemberService;
import com.app.camp.member.vo.MemberVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;

@Controller
@RequiredArgsConstructor
public class CheckMemberController {

    private final CheckMemberService chservice;

    public String checkId(MemberVo vo){

        return chservice.checkId(vo);
    }

}
