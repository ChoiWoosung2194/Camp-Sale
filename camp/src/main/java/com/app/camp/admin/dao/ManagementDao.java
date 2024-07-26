package com.app.camp.admin.dao;

import com.app.camp.admin.mapper.ManagementMapper;
import com.app.camp.member.vo.MemberVo;
import com.app.camp.owner.vo.OwnerVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class ManagementDao {

    private final ManagementMapper mapper;

    public List<MemberVo> getMemberList() {
        return mapper.getMemberList();
    }

    public List<OwnerVo> getOwnerList() {
        return mapper.getOwnerList();
    }

    public int updateApproval(String no) {
        return mapper.updateApproval(no);
    }
}
