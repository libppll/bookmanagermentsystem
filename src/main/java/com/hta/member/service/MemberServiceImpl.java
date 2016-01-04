package com.hta.member.service;

import java.sql.SQLException;

import com.hta.member.repository.Member;
import com.hta.exception.IdPasswordNotMachingException;

import mybatis.MemberManager;

public class MemberServiceImpl implements MemberService {

	public void write(Member dto) throws SQLException {
		// TODO Auto-generated method stub
		System.out.println("dto:"+dto.getName());
		MemberManager.write2(dto);
	}
	
	public Member selectByEmail(String email) {
		
		return MemberManager.selectByEmail(email); //二쇱엯�맂 �씠硫붿씪 媛� �쟾�떖
	}

	public Member authenticate(String email, String password) {// �떎媛��졇媛��뒗寃� 醫뗫떎.
		
		Member dto = MemberManager.selectByEmail(email);//dto�뒗 �뿬湲곗꽌 紐⑤뱺 �젙蹂대�� 媛��졇�삤怨� �엳�떎.
		
		if(dto == null){//�엯�젰�븳 email�뿉 愿��븳 �젙蹂닿� DB�뿉 �뾾�쓣 寃쎌슦
			throw new IdPasswordNotMachingException(); //
		}
		
		if(!dto.matchPassword(password)){
			throw new IdPasswordNotMachingException();
		}
		
		return dto;
	}

	public Member pwChage(String password, String newpassword, String newpasswordcomf) {
		// TODO Auto-generated method stub
		return null;
	}
	


}
