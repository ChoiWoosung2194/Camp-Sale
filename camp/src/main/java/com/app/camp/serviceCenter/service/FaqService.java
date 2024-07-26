package com.app.camp.serviceCenter.service;

import com.app.camp.serviceCenter.dao.FaqDao;
import com.app.camp.serviceCenter.vo.FaqVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class FaqService {

    private final FaqDao dao;

    public List<FaqVo> faqList() {
        return dao.faqList();
    }

    public FaqVo faqDetail(String no) {
        return dao.faqDetail(no);
    }

    public int updateHit(String no) {
        return dao.updateHit(no);
    }
}
