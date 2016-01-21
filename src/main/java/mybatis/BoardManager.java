package mybatis;

import java.io.IOException;
import java.io.Reader;
import java.util.List;



import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.hta.board.repository.BoardDto;


//�떎�젣 boardMapper.xml怨� sqlmapConfig.xml�뿉�꽌 �꽕�젙�븳寃껋쓣 �떎�뻾�븯湲곗쐞�빐 �겢�옒�뒪 �뙆�씪�쓣 留뚮뱾�뿀�떎.

public class BoardManager {
	private static SqlSessionFactory sqlFactory;
	static{
		try{//媛��옣 湲곕낯�쟻�쑝濡� 泥섎━�맆 �씪
			Reader reader = Resources.getResourceAsReader("mybatis/sqlmapConfig.xml");
			sqlFactory = new SqlSessionFactoryBuilder().build(reader);
		}
		catch(IOException err){
			throw new RuntimeException("SqlSessionFactory �씤�뒪�꽩�뒪 �깮�꽦 �떎�뙣!!!");
		}
	}
	
	public static List getList(){ //諛섎뱶�떆 public static ���엯�쑝濡� 留뚮뱾�뼱�졇�빞�븳�떎.
		List list = null;
		SqlSession session = sqlFactory.openSession();//�꽭�뀡蹂꾨줈 sql �옉�뾽�븷�닔 �엳�룄濡� �뿴�뼱�넃�뒗寃�
		list = session.selectList("getList");
		return list;
	}
	
	public static void write(BoardDto dto){
		SqlSession session = sqlFactory.openSession();
		session.insert("write", dto);//boardMapper.xml�뿉 id媛� write�씤 硫붿꽌�뱶�뿉 dto瑜� param�쑝濡� �꽆寃⑥��떎.
		session.commit();//insert, update, delete�뒗 commit()�쓣 �빐以섏빞 �셿�꽦�씠 �맂�떎.
	}
	public static BoardDto finBySeq(int seq){
		SqlSession session = sqlFactory.openSession();
		BoardDto dto = session.selectOne("findBySeq", seq);
		return dto;
	}
	public static void delete(int seq){
		SqlSession session = sqlFactory.openSession();
		session.delete("delete", seq);
		session.commit();
	}
	
	public static void update(BoardDto dto){
		SqlSession session = sqlFactory.openSession();
		
		session.update("update", dto);
		session.commit();
	}
}
