package com.app.camp.admin.service;

import com.app.camp.admin.dao.AdminNoticeDao;
import com.app.camp.admin.vo.AdminNoticeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class AdminNoticeService {

    private final AdminNoticeDao dao;


    public List<AdminNoticeVo> noticeList() {
        return dao.noticeList();
    }

    public int noticeInsert(AdminNoticeVo vo) {
        return dao.noticeInsert(vo);
    }

    public AdminNoticeVo detailNotice(String no) {
        return dao.detailNotice(no);
    }

    public int updateHit(String no) {
        return dao.updateHit(no);
    }
}
