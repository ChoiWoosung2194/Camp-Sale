package com.app.camp.admin.service;

import com.app.camp.admin.dao.AdminFaqDao;
import com.app.camp.admin.vo.AdminFaqVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class AdminFaqService {

    private final AdminFaqDao dao;

    public AdminFaqVo detailFaq(String no) {
        return dao.detailFaq(no);
    }

    public List<AdminFaqVo> faqList() {
        return dao.faqList();
    }

    public int faqInsert(AdminFaqVo vo) {
        return dao.faqInsert(vo);
    }

    public int updateHit(String no) {
        return dao.updateHit(no);
    }
}
