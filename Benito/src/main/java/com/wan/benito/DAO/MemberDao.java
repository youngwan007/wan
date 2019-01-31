package com.wan.benito.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.wan.benito.DTO.MemberDTO;

@Repository
public class MemberDao implements IMemberDao {

	JdbcTemplate jdbcTemplate;

	@Autowired
	public MemberDao(ComboPooledDataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);

	}

	@Override
	public int memberInsert(final MemberDTO memberDto) {
		// TODO Auto-generated method stub
		int result = 0;
		String sql = "INSERT INTO MEMBER (MEMID, MEMPW, MEMNAME, MEMPHONE, MEMADDR, MEMNUM) VALUES (?,?,?,?,?,MEMNUM_SEQ.NEXTVAL)";

		result = jdbcTemplate.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setString(1, memberDto.getMemId());
				ps.setString(2, memberDto.getMemPw());
				ps.setString(3, memberDto.getMemName());
				ps.setString(4, memberDto.getMemPhone());
				ps.setString(5, memberDto.getMemAddr());

			}
		});
		return result;
	}

	@Override
	public MemberDTO memberSelect(final MemberDTO memberDto) {
		// TODO Auto-generated method stub
		
		List<MemberDTO> members = null;

		final String sql = "SELECT * FROM member WHERE memId = ? AND memPw = ?";
		
		members = jdbcTemplate.query(sql, new Object[]{memberDto.getMemId(), memberDto.getMemPw()}, new RowMapper<MemberDTO>() {

			@Override
			public MemberDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				MemberDTO mem = new MemberDTO();
				mem.setMemId(rs.getString("memId"));
				mem.setMemPw(rs.getString("memPw"));
				mem.setMemName(rs.getString("memName"));
				mem.setMemPhone(rs.getString("memPhone"));
				mem.setMemAddr(rs.getString("memAddr"));
				mem.setMemNum(rs.getInt("memNum"));
				return mem;
			}

		});
	
		if(members.isEmpty())
			return null;
		
		return members.get(0);
	}

	@Override
	public int memberUpdate(final MemberDTO memberDto, final String newPw) {
		// TODO Auto-generated method stub
		
		String sql = "UPDATE MEMBER set MEMPW = ? WHERE MEMID = ? ";
		
		int result = jdbcTemplate.update(sql,new PreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setString(1, newPw);
				ps.setString(2, memberDto.getMemId());
				
			}
		});
		
		return result;
	}
}
