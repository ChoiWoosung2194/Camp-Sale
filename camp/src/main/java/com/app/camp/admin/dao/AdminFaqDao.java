package com.app.camp.admin.dao;

import com.app.camp.admin.mapper.AdminFaqMapper;
import com.app.camp.admin.vo.AdminFaqVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class AdminFaqDao {

    private final AdminFaqMapper mapper;

    public AdminFaqVo detailFaq(String no) {
        return mapper.detailFaq(no);
    }

    public List<AdminFaqVo> faqList() {
        return mapper.faqList();
    }

    public int faqInsert(AdminFaqVo vo) {
        return mapper.faqInsert(vo);
    }

    public int updateHit(String no) {
        return mapper.updateHit(no);
    }
}
