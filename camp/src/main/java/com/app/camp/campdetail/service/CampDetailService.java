package com.app.camp.campdetail.service;

import com.app.camp.campdetail.dao.CampDetailDao;
import com.app.camp.campdetail.vo.CampDetailVo;
import com.app.camp.campdetail.vo.DetailZoneVo;
import com.app.camp.owner.vo.CampNoticeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CampDetailService {

    private final CampDetailDao campDetailDao;

    public CampDetailVo getCampDetailById(String campNo) {
        return campDetailDao.getCampDetailById(campNo);
    }

    public List<DetailZoneVo> getZonesByCampId(String campNo) {
        return campDetailDao.getZonesByCampId(campNo);
    }

    public List<CampNoticeVo> getCampNotice(String campNo) {
        return campDetailDao.getCampNotice(campNo);
    }
}
