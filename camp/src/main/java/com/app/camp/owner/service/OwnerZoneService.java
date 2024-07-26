package com.app.camp.owner.service;

import com.app.camp.owner.dao.OwnerZoneDao;
import com.app.camp.owner.vo.ZoneImgVo;
import com.app.camp.owner.vo.ZoneVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class OwnerZoneService {

    private final OwnerZoneDao dao;

    public int zoneInsert(ZoneVo vo) {
        return dao.zoneInsert(vo);
    }

    public List<ZoneVo> selectZone(String no) {
        return dao.selectZone(no);
    }

    public int updateZone(ZoneVo vo) {
        return dao.updateZone(vo);
    }



    public int uploadImg(ZoneImgVo vo) {
       return dao.uploadImg(vo);
    }

    public String selectZoneNo(ZoneImgVo vo) {
        return dao.selectZoneNo(vo);
    }
}
