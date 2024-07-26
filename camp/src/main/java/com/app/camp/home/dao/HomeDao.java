package com.app.camp.home.dao;

import com.app.camp.home.mapper.HomeMapper;
import com.app.camp.home.vo.HomeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class HomeDao {

    private final HomeMapper mapper;

    public List<HomeVo> selectCamp() {
        return mapper.selectCamp();
    }
}
