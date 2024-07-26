package com.app.camp.member.controller;

import com.app.camp.member.service.MemberService;
import com.app.camp.member.vo.MemberVo;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequiredArgsConstructor
@Controller
@RequestMapping("member")
public class MemberController {

  private final MemberService service;

  @GetMapping("login")
  public String login() {
    return "member/login";
  }

  @GetMapping("join")
  public String join() {
    return "member/join";
  }

  @PostMapping("join")
  public String join(MemberVo vo) throws Exception {
    System.out.println("vo = " + vo);
    int result = service.join(vo);
    System.out.println("result = " + result);
    if(result !=1 ){
      throw new RuntimeException("회원가입 실패");
    }
    return "/member/login";
  }


  @PostMapping("login")
  public String login(MemberVo vo, HttpSession ss) {
    MemberVo loginVo = service.login(vo);

    if (loginVo == null) {
      throw new RuntimeException("로그인 실패");
    }
    ss.setAttribute("loginVo", loginVo);

    return "redirect:/home"; // 로그인 실패 시 리다이렉트할 페이지
  }

  @GetMapping("edit")
  public String editMem(HttpSession session, Model model){
    return "member/memberEdit";
  }
}

