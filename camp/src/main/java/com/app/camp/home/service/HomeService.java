package com.app.camp.home.service;


import com.app.camp.home.dao.HomeDao;
import com.app.camp.home.vo.HomeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class HomeService {

    private final HomeDao dao;

    public List<HomeVo> selectCamp() {
        return dao.selectCamp();
    }
}
