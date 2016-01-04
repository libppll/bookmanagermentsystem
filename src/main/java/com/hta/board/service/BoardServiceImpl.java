package com.hta.board.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;

import com.hta.board.repository.BoardDto;

import mybatis.BoardManager;

//�씠怨녹씠 DB愿��젴 �뜲�씠�꽣瑜� �닔�젙, �궘�젣, �엯�젰, �벑�쓽 湲곕뒫�쓣 �븯�뒗 �겢�옒�뒪�씠�떎. DB愿��젴 �옉�뾽�� �뿬湲곗꽌 �븳�떎.--->mybatis瑜� �궗�슜�븯硫� 肄붾뱶�뿉�꽌 �씠�젃寃� DB愿��젴 �옉�뾽�쓣 �븘�슂�뾾寃� 留뚮뱺�떎.
public class BoardServiceImpl implements BoardService {
	private JdbcTemplate JdbcTemplate;//�뵒鍮� �뿰寃� (�뒪�봽留� JDBC �젒洹쇰갑踰�), 利� 
	
	

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {// �뿬湲곕뱾�뼱媛꾨떎.
		JdbcTemplate = jdbcTemplate;
	}

	public List getList() throws SQLException {//由ъ뒪�듃 �쟾泥� 蹂닿린 湲곕뒫
		
		return BoardManager.getList();//mybatis瑜� �씠�슜�븯硫� �씠�븳以꾩씠硫� �걹�궃�떎. 利�, BoardManager.java �겢�옒�뒪�쓽 硫붿꽌�뱶瑜� 媛��졇�삩寃껋씠�떎.
	}
	class RowMapperImpl implements RowMapper{//getList()�� findBySeq(int seq)�뿉 RowMapper瑜� �삊媛숈씠 �궗�슜�릺誘�濡� �씠寃껋쓣 以꾩뿬二쇨린�쐞�빐 �겢�옒�뒪瑜� 留뚮벉
		public Object mapRow(ResultSet rs, int arg1) throws SQLException {//�삤踰꾨씪�씠�뵫(臾대챸�겢�옒�뒪濡� 留뚮벉:�겢�옒�뒪 �뾾�씠 �겢�옒�뒪瑜� 留뚮뱺寃쎌슦)
			BoardDto dto = new BoardDto();
			dto.setB_content(rs.getString("b_content"));
			dto.setB_hitcount(rs.getInt("b_hitcount"));
			dto.setB_password(rs.getString("b_password"));
			dto.setB_regdate(rs.getString("b_regdate"));
			dto.setB_seq(rs.getInt("b_seq"));
			dto.setB_title(rs.getString("b_title"));
			dto.setB_writer(rs.getString("b_writer"));
			return dto;
		}
	}
	public BoardDto findBySeq(int seq) throws SQLException {//�씫湲� 湲곕뒫
		// TODO Auto-generated method stub
		/*
		String sql="select * from tblSpringBoard where b_seq="+seq; //湲�踰덊샇�뒗 以묒슂 �젙蹂닿� �븘�땲誘�濡� �씠�젃寃� �궗�슜�빐�룄 �슜�씤�맆�벏
		RowMapperImpl rowmapper = new RowMapperImpl();//�씠�젃寃뚮룄 媛��뒫�븳�벏...
		BoardDto dto = JdbcTemplate.queryForObject(sql, rowmapper);//queryForObject�뒗 寃곌낵 媛믪쓣 �뵳�븯�굹留� 媛��졇�삱�닔 �엳寃뚰븯�뒗 硫붿꽌�뱶, RowMapper�� DB濡� 遺��꽣 寃곌낵媛믪쓣 諛쏆븘�� �꽆寃⑥＜�뒗 �뿭�븷 
																   // 利�, �뿬湲곗꽌�뒗 dto�뿉寃� 寃곌낵媛믪쓣 �꽆寃⑥＜�뒗 �뿭�븷�쓣 �븯怨좎엳�떎.
																	//ResultSetExtractor�� RowMapper媛� �엳�뒗�뜲 ResultSetExtractor�뒗 諛섎났�쟻�쑝濡� �룎�젮二쇱� 紐삵븯怨� RowMapper�뒗 諛섎났�쟻�쑝濡� �룎�젮以꾩닔 �엳�떎.
																	//洹몃옒�꽌 ResultSetExtractor�뒗 �븯�굹�쓽 �젅肄붾뱶媛� �엳�쓣�븣 �궗�슜�븯�뒗寃� �쑀由ы븯怨� RowMapper�뒗 �뿬�윭寃뚯쓽 �젅肄붾뱶瑜� �궗�슜�븷�븣 �쑀由ы븯�떎.
		
		System.out.println(dto.getB_title());
		return dto;*/
		return new BoardManager().finBySeq(seq);
	}

	public void write(BoardDto dto) throws SQLException {//�벐湲곌린�뒫
		// TODO Auto-generated method stub
		/*//mybatis濡� �씤�빐 �깮�왂�맖
		String sql="insert into tblSpringBoard(b_title, b_content, b_writer,"+
		"b_regdate, b_hitcount, b_password) values(?,?,?,now(),0,?)";
		//�뙆�씪誘명꽣 �꽆湲곕뒗 諛⑸쾿 : 
		//1, object[]濡� �꽆湲곕뒗 諛⑸쾿(�돺怨� 媛꾨떒�븯硫� �궗�슜�븯湲� �렪�븯�떎. �븯吏�留� �뙆�씪誘명꽣 �옱�궗�슜 紐삵븿)  
		//2,preparestatementsetter�씪�뒗 �씤�꽣�럹�씠�뒪瑜� �궗�슜(�뙆由щ�명꽣 �옱�궗�슜�씠 媛��뒫)
		
		//JdbcTemplate.update(sql, new WriteParams(dto));//PreparedStatementSetter�쓣 �궗�슜�븷�븣
		Object[] values = new Object[]{dto.getB_title(), dto.getB_content(), dto.getB_writer(), dto.getB_password()};
		JdbcTemplate.update(sql, values);//Object[]瑜� �궗�슜�븷�븣*/
		
		BoardManager.write(dto);//mybatis濡� �궗�슜
		
	}
	/*class WriteParams implements PreparedStatementSetter{ //�뙆�씪誘명꽣瑜� 泥섎━�븯湲� �쐞�빐�꽌 PreparedStatementSetter �씤�꽣�럹�씠�뒪 �궗�슜(�뙆�씪誘명꽣瑜� �옱�솢�슜�븯湲곗쐞�빐�꽌��)
		private BoardDto dto;
		
		public WriteParams(BoardDto dto){
			this.dto = dto;
		}
		public void setValues(PreparedStatement pstmt) throws SQLException {//PreparedStatement濡� �뜲�씠�꽣瑜� 臾띠뼱以꾩닔 �엳�떎.
			pstmt.setString(1, dto.getB_title());
			pstmt.setString(2, dto.getB_content());
			pstmt.setString(3, dto.getB_writer());
			pstmt.setString(4, dto.getB_password());
			
			
		}
		
	}*/

	public void update(BoardDto dto) throws SQLException {
		/*
		String sql = "update tblSpringBoard set b_title=?, b_content=? where b_seq=?";
		
		Object[] values = new Object[]{dto.getB_title(), dto.getB_content(), dto.getB_seq()};
		System.out.println("紐⑥빞:"+dto.getB_title());
		JdbcTemplate.update(sql, values);*/
		BoardManager.update(dto);

	}

	public void delete(int seq) throws SQLException {
		/*
		String sql = "delete from tblSpringBoard where b_seq=?";
		Object[] values = new Object[]{seq};
		JdbcTemplate.update(sql, values);*/
		BoardManager.delete(seq);

	}

}
