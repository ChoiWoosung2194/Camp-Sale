package com.app.camp.serviceCenter.dao;

import com.app.camp.serviceCenter.mapper.FaqMapper;
import com.app.camp.serviceCenter.vo.FaqVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class FaqDao {

    private final FaqMapper mapper;

    public List<FaqVo> faqList() {
        return mapper.faqList();
    }

    public FaqVo faqDetail(String no) {
        return mapper.faqDetail(no);
    }

    public int updateHit(String no) {
        return mapper.updateHit(no);
    }
}
