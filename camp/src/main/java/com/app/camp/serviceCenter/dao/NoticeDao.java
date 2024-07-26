package com.app.camp.serviceCenter.dao;

import com.app.camp.serviceCenter.mapper.NoticeMapper;
import com.app.camp.serviceCenter.vo.NoticeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class NoticeDao {

    private final NoticeMapper mapper;

    public List<NoticeVo> noticeList() {
        return mapper.noticeList();
    }

    public NoticeVo noticeDetail(String no) {
        return mapper.noticeDetail(no);
    }

    public int updateHit(String no) {
        return mapper.updateHit(no);
    }
}
