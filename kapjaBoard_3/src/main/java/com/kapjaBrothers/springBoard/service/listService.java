package com.kapjaBrothers.springBoard.service;

import java.util.List;

import com.kapjaBrothers.springBoard.entity.listData;

public interface listService {
	public List<listData> listView();
	public List<listData> listViewDetail(int bno);
	public void listViewEdit();
	public void listViewUpdate(listData data);
	public void listInsert(listData data);
	public void listDelete(int bno);
}
