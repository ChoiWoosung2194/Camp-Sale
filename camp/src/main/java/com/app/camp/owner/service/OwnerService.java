package com.app.camp.owner.service;


import com.app.camp.owner.dao.OwnerDao;
import com.app.camp.owner.vo.OwnerVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
@RequiredArgsConstructor
public class OwnerService {


    private final OwnerDao dao;

    public OwnerVo login(OwnerVo vo) {
        return dao.login(vo);
    }

    public int join(OwnerVo vo) throws Exception {
        if(vo.getId().length() < 4){
            throw new Exception("아이디가 너무 짧습니다.");
        }
        if(vo.getPwd().length() < 3){
            throw new Exception("비밀번호가 너무 짧습니다.");
        }
       
        return dao.join(vo);
    }


    public OwnerVo editOwner(String no) {
        return dao.editOwner(no);
    }

    public int editPrivacy(OwnerVo vo) {
        if(vo.getPwd() != null){
            if(vo.getPwd().length() < 3){
                throw new RuntimeException("비밀번호가 너무 짧습니다.");
            }
            return dao.editPwd(vo);
        } else if (vo.getNick() != null) {
            return dao.editNick(vo);
        }else {
            return dao.editPhone(vo);
        }
    }
}
