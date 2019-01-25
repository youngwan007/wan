package com.wan.benito.DAO;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
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

}
