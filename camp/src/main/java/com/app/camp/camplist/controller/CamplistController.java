package com.app.camp.camplist.controller;

import com.app.camp.camplist.service.CamplistService;
import com.app.camp.camplist.vo.CamplistVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("camplist")
@RequiredArgsConstructor
public class CamplistController {

    private final CamplistService camplistService;

    @GetMapping
    public String showCampList(Model model){
        List<CamplistVo> voList = camplistService.campList();
        model.addAttribute("voList", voList);
        return "camp/camplist";

    }
}
