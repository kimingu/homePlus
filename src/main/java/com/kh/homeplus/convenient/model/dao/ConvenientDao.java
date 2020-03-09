package com.kh.homeplus.convenient.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;
import com.kh.homeplus.common.vo.PageInfo;
import com.kh.homeplus.manpower.model.vo.SearchConditionReportWorker;

@Repository("conDao")
public class ConvenientDao {
	@Autowired
	private SqlSession sqlSession;

	public int getConListCount() {
		return sqlSession.selectOne("conMapper.getConListCount");
	}

	public ArrayList<BulletinBoard> selectConList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("conMapper.selectConList", null, rowBounds);
	}

		public ArrayList selectCountBulletinBoard() {
			return (ArrayList)sqlSession.selectList("conMapper.selectCountBulletinBoard");
		}

		public BulletinBoard selectBulletinBoard(String bbCode) {
			return sqlSession.selectOne("conMapper.selectBulletinBoard", bbCode);
		}

		public int reportBulletinBoardSearchCount(SearchConditionReportWorker sc) {
			return sqlSession.selectOne("conMapper.reportBulletinBoardSearchCount", sc);
		}

		public ArrayList<BulletinBoard> reportBulletinBoardSearch(PageInfo pi, SearchConditionReportWorker sc) {
			int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
			RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
			return (ArrayList)sqlSession.selectList("man-mapper.reportBulletinBoardSearch", sc, rb);
		}

		public int updateBulletinBoard1(String bbCode) {
			return sqlSession.update("conMapper.updateBulletinBoard1", bbCode);
		}

		public int updateBulletinBoard2(String bbCode) {
			return sqlSession.update("conMapper.updateBulletinBoard2", bbCode);
		}


}
