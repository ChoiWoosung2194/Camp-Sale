package com.app.camp.admin.dao;

import com.app.camp.admin.mapper.AdminNoticeMapper;
import com.app.camp.admin.vo.AdminNoticeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class AdminNoticeDao {

    private final AdminNoticeMapper mapper;

    public List<AdminNoticeVo> noticeList() {
        return mapper.noticeList();
    }

    public int noticeInsert(AdminNoticeVo vo) {
        return mapper.noticeInsert(vo);
    }

    public AdminNoticeVo detailNotice(String no) {
        return mapper.detailNotice(no);
    }

    public int updateHit(String no) {
        return mapper.updateHit(no);
    }
}
