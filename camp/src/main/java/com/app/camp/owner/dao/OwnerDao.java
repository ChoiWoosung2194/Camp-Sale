package com.app.camp.owner.dao;

import com.app.camp.owner.mapper.OwnerMapper;
import com.app.camp.owner.vo.OwnerVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class OwnerDao {

    private final OwnerMapper mapper;

    public OwnerVo login(OwnerVo vo) {
        return mapper.login(vo);
    }

    public int join(OwnerVo vo) {
        return mapper.join(vo);
    }

    public int pwdEdit(OwnerVo vo) {
        return mapper.pwdEdit(vo);
    }

    public OwnerVo editOwner(String no) {
        return mapper.editOwner(no);
    }

    public int editPwd(OwnerVo vo) {
        return mapper.editPwd(vo);
    }

    public int editNick(OwnerVo vo) {
        return mapper.editNick(vo);
    }

    public int editPhone(OwnerVo vo) {
        return mapper.editPhone(vo);
    }
}
