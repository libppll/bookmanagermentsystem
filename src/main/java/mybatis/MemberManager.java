package mybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.hta.book.repository.BookDto;
import com.hta.member.repository.Member;

public class MemberManager {
	private static SqlSessionFactory sqlFactory;
	static{
		try{
			Reader reader = Resources.getResourceAsReader("mybatis/sqlmapConfig.xml");
			sqlFactory = new SqlSessionFactoryBuilder().build(reader);
		}
		catch(IOException err){
			throw new RuntimeException("SqlSessionFactory �씤�뒪�꽩�뒪 �깮�꽦 �떎�뙣!!!");
		}
	}
	
	public static void write2(Member dto){
		
		SqlSession session = sqlFactory.openSession();
		session.insert("write2", dto);//boardMapper.xml�뿉 id媛� write�씤 硫붿꽌�뱶�뿉 dto瑜� param�쑝濡� �꽆寃⑥��떎.
		session.commit();//insert, update, delete�뒗 commit()�쓣 �빐以섏빞 �셿�꽦�씠 �맂�떎.
	}
	
	
	public static Member selectByEmail(String email){
		SqlSession session = sqlFactory.openSession();
		Member dto = session.selectOne("selectByEmail", email);
		return dto; 
	}







	
}
