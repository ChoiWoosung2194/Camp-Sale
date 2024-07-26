package com.app.camp.owner.service;

import com.app.camp.owner.dao.OwnerReservationDao;
import com.app.camp.owner.vo.OwnerReservationVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class OwnerReservationService {

    private final OwnerReservationDao dao;


    public List<OwnerReservationVo> reservList(String no) {
        return dao.reservList(no);
    }
}
