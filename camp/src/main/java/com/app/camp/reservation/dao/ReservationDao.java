package com.app.camp.reservation.dao;


import com.app.camp.reservation.mapper.ReservationMapper;
import com.app.camp.reservation.vo.ReservZoneVo;
import com.app.camp.reservation.vo.ReservationVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class ReservationDao {

    private final ReservationMapper mapper;

    public ReservZoneVo setZone(String zoneNo) {
        return mapper.setZone(zoneNo);
    }

    public int setReservation(ReservationVo vo) {
        return mapper.setReservation(vo);
    }
}