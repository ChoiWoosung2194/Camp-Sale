package com.app.camp.campdetail.controller;

import com.app.camp.campdetail.service.CampDetailService;
import com.app.camp.campdetail.vo.CampDetailVo;
import com.app.camp.campdetail.vo.DetailZoneVo;
import com.app.camp.owner.vo.CampNoticeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping
@RequiredArgsConstructor
public class CampDetailController {

    private final CampDetailService campDetailService;

    @GetMapping("/campdetail/{campNo}")
    public String showCampDetail(@PathVariable String campNo, Model model) {
        CampDetailVo campDetail = campDetailService.getCampDetailById(campNo);
        List<DetailZoneVo> zones = campDetailService.getZonesByCampId(campNo);
        List<CampNoticeVo> voList = campDetailService.getCampNotice(campNo);

        model.addAttribute("campDetail", campDetail);
        model.addAttribute("zones", zones);
        model.addAttribute("noticeList" , voList);

        return "camp/campdetail";
    }
}
