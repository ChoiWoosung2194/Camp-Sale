package com.app.camp.owner.controller;

import com.app.camp.owner.service.OwnerReservationService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("owner")
@RequiredArgsConstructor
public class OwnerReservationController {

    private final OwnerReservationService service;

    //예약리스트
    @GetMapping("reservation")
    public String reservList() {
        return "owner/reservationList";
    }


}
