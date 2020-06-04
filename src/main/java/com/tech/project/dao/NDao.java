package com.tech.project.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.tech.project.dto.BoardDto;
import com.tech.project.dto.NoticeDto;
import com.tech.project.dto.ResumeDto;

public interface NDao {

	public ArrayList<NoticeDto> list(int rowStart, int rowEnd);

	public ArrayList<NoticeDto> list2(int rowStart, int rowEnd);

	public ArrayList<NoticeDto> list3(int rowStart, int rowEnd);

	public ArrayList<NoticeDto> list4(int rowStart, int rowEnd);

	public int selectBoardCount();

	public NoticeDto content_view(String nseq);

	public ArrayList<NoticeDto> maincut();

	void uphit(String nseq);

	public void pickitem(String msname, int nseq);

	public NoticeDto pickcheck(String pickchecker);

	public ArrayList<NoticeDto> redundancy_check(String msid);

	public void deletepickitem(int nseq);

	public int totalpick(String msid);

	public NoticeDto picklist(int i);

	public void write(String ntitle, String ncontent, String naddr, String nlocation, String nnearsub, String nimg, String npersonnel, String ndeadline, String ncategory, String nwelfare,
			String nwriter, String nreception, String nperiod, String nday, String ntime, String ntpay, int npay, String ngender,
			String nage, String nag, String npt, String lat, String lng);

	public void resume_reg(String msid, String nfile);

	public int totalresume(String msid);

	public String resume_download(String msid);

	public String resume_open(String msid);

	public void resumeon(String msid);

	public void resumeoff(String msid);

	public String resume_check(String msid);

	public void resume_delete(String msid);

	// 상세조건 검색 결과 카운트
	public int detailSearchCount(String nlocation, String ncategory, String nperiod, String nday, String ntime,
			String ntpay, String npay, String nwelfare, String ngender, String nage, String nag);

	// 상세조건 검색 결과 셀렉트
	public ArrayList<NoticeDto> DetailSearchList(String nlocation, String ncategory, String nperiod, String nday,
			String ntime, String ntpay, String npay, String nwelfare, String ngender, String nage, String nag,
			int rowStart, int rowEnd);

	public ArrayList<NoticeDto> DetailSearchList2(String nlocation, String ncategory, String nperiod, String nday,
			String ntime, String ntpay, String npay, String nwelfare, String ngender, String nage, String nag,
			int rowStart, int rowEnd);

	public ArrayList<NoticeDto> DetailSearchList3(String nlocation, String ncategory, String nperiod, String nday,
			String ntime, String ntpay, String npay, String nwelfare, String ngender, String nage, String nag,
			int rowStart, int rowEnd);

	public ArrayList<NoticeDto> DetailSearchList4(String nlocation, String ncategory, String nperiod, String nday,
			String ntime, String ntpay, String npay, String nwelfare, String ngender, String nage, String nag,
			int rowStart, int rowEnd);

	public void delete(String nseq);

	public void modify(String nseq, String ntitle, String ncontent, String naddr, String nlocation, String nnearsub,
			String nimg, String npersonnel, String ndeadline, String ncategory, String nwelfare, String nwriter,
			String nreception, String nperiod, String nday, String ntime, String ntpay, int npay, String ngender,
			String nage, String nag, String npt, String lat, String lng);

	public NoticeDto modify_view(String nseq);

	public String getimgname(String nseq);
}