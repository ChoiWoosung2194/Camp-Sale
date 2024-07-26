package com.app.camp.reservation.service;

import com.app.camp.reservation.dao.ReservationDao;
import com.app.camp.reservation.vo.ReservZoneVo;
import com.app.camp.reservation.vo.ReservationVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReservationService {

    private final ReservationDao dao;

    public ReservZoneVo setZone(String zoneNo) {
        return dao.setZone(zoneNo);
    }

    public int setReservation(ReservationVo vo) {
        return dao.setReservation(vo);
    }
}