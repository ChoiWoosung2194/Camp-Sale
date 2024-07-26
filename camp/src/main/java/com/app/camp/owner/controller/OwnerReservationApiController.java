package com.app.camp.owner.controller;

import com.app.camp.owner.service.OwnerReservationService;
import com.app.camp.owner.vo.OwnerReservationVo;
import com.app.camp.owner.vo.OwnerVo;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("owner/api/reservation")
@RequiredArgsConstructor
public class OwnerReservationApiController {

    private final OwnerReservationService service;

    //예약리스트
    @GetMapping
    public List<OwnerReservationVo> reservList(HttpSession session){
        OwnerVo loginOwnerVo = (OwnerVo) session.getAttribute("loginOwnerVo");
        String no = loginOwnerVo.getNo();
        List<OwnerReservationVo> reservList = service.reservList(no);

        return reservList;
    }

}
