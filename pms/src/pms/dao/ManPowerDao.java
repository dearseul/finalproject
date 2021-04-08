package pms.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.stereotype.Repository;

import pms.dto.Member;
import pms.dto.ProjectAdd;

// pms.manpower.dao.ManPowerDao
@Repository
public interface ManPowerDao {
	// 전체인원
	public ArrayList<Member> memList1();
	// 가용인원 - pno 가져오기
	public ArrayList<Integer> pnoList(HashMap<String,String> hm);
	// 가용인원 - 1명 참여 프로젝트 가져오기
	public ArrayList<ProjectAdd> projectList(int pno);
	// 가용인원 - 프로젝트 상태
	public String status(int project_no);
	// 가용인원 - 최종 조회
	public Member memPoss(int pno);
	// 부서인원 - 부서목록
	public ArrayList<Member> deptList();
	// 부서인원 - 최종 조회
	public ArrayList<Member> memList3(String part);
}





