package com.app.camp.home.controller;

import com.app.camp.home.service.HomeService;
import com.app.camp.home.vo.HomeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("home")
@RequiredArgsConstructor
public class HomeController {

    private final HomeService service;

    @GetMapping
    public String home(Model model){
       List<HomeVo> voList = service.selectCamp();

       model.addAttribute("voList" , voList);

        return "home";
    }
}
