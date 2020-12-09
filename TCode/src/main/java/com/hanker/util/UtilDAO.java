package com.hanker.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.hanker.DTO.VisitCountVO;

@Repository
public class UtilDAO {

	public void insertVisitor(VisitCountVO vcVO) {
		Connection conn = DataBaseUtil.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "";
		try {
			if(vcVO.getVisit_refer() != null && vcVO.getVisit_refer() != "") {
				sql = "INSERT INTO TB_VISITOR(VISIT_IP, VISIT_AGENT, VISIT_REFER) VALUES(?,?,?)";
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vcVO.getVisit_ip());
				pstmt.setString(2, vcVO.getVisit_agent());
				pstmt.setString(3, vcVO.getVisit_refer());
			} else {
				sql = "INSERT INTO TB_VISITOR(VISIT_IP, VISIT_AGENT) VALUES(?,?)";
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vcVO.getVisit_ip());
				pstmt.setString(2, vcVO.getVisit_agent());
			}
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	public int todayCnt() {
		Connection conn = DataBaseUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int todayCnt = 0;
		String sql ="";
		
		try {
			sql = "SELECT count(*) AS count FROM tb_visitor WHERE DATE_FORMAT(VISIT_TIME, \"%Y-%m-%d\") = DATE_FORMAT(now(), \"%Y-%m-%d\")";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				todayCnt = rs.getInt("count");
			}
			 
			 return todayCnt;
		} catch(Exception sqle) {
			throw new RuntimeException(sqle.getMessage());
		} finally {
			try {
				if(pstmt != null) {
					pstmt.close();
					pstmt = null;
				}
				if(conn != null) {
					conn.close();
					conn = null;
				}
			} catch(Exception e) {
				throw new RuntimeException(e.getMessage());
			}
			
		}
	}

	public int totalCnt() {
		Connection conn = DataBaseUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int totalCnt = 0;
		String sql ="";
		
		try {
			sql = "SELECT count(*) AS count FROM tb_visitor";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				totalCnt = rs.getInt("count");
			}
			 
			 return totalCnt;
		} catch(Exception sqle) {
			throw new RuntimeException(sqle.getMessage());
		} finally {
			try {
				if(pstmt != null) {
					pstmt.close();
					pstmt = null;
				}
				if(conn != null) {
					conn.close();
					conn = null;
				}
			} catch(Exception e) {
				throw new RuntimeException(e.getMessage());
			}
			
		}
	}
}
