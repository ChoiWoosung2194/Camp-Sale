package com.app.camp.admin.controller;


import com.app.camp.admin.service.AdminService;
import com.app.camp.admin.vo.AdminVo;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("admin")
@RequiredArgsConstructor
public class AdminController {

    private final AdminService service;

    @GetMapping("main")
    public String test(){

        return "admin/adminMain";
    }


    @GetMapping("login")
    public String login(){
        return "admin/login";
    }

    @PostMapping("login")
    public String login(AdminVo vo, HttpSession ss) {
        AdminVo loginAdminVo = service.login(vo);

        if(loginAdminVo != null){
            ss.setAttribute("loginAdminVo" , loginAdminVo);
            return "redirect:/admin/main";
        }else {
            throw new RuntimeException();
        }


    }


}
