package com.app.camp.admin.service;

import com.app.camp.admin.dao.ManagementDao;
import com.app.camp.member.vo.MemberVo;
import com.app.camp.owner.vo.OwnerVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ManagementService {

    private final ManagementDao dao;

    public List<MemberVo> getMemberList() {
        return dao.getMemberList();
    }

    public List<OwnerVo> getOwnerList() {
        return dao.getOwnerList();
    }

    public int updateApproval(String no) {
        return dao.updateApproval(no);
    }
}
