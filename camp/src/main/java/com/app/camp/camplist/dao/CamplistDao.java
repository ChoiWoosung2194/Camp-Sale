package com.app.camp.camplist.dao;

import com.app.camp.camplist.mapper.CamplistMapper;
import com.app.camp.camplist.vo.CamplistVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class CamplistDao {


    private final CamplistMapper camplistMapper;



    public List<CamplistVo> campList() {
        return camplistMapper.campList();
    }
}
