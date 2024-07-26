package com.app.camp.owner.controller;

import com.app.camp.owner.service.OwnerZoneService;
import com.app.camp.owner.vo.OwnerVo;
import com.app.camp.owner.vo.ZoneVo;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("owner/api/zone")
@RequiredArgsConstructor
public class ZoneApiController {

    private final OwnerZoneService service;


    //캠핑존 리스트(화면)
    @GetMapping
    public List<ZoneVo> zoneList(HttpServletRequest req){
        HttpSession session = req.getSession();
        OwnerVo loginOwnerVo = (OwnerVo) session.getAttribute("loginOwnerVo");
        String no = loginOwnerVo.getNo();
        List<ZoneVo> voList= service.selectZone(no);
        return voList;

    }

}
