package com.bjsxt.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bjsxt.mapper.FilesMapper;
import com.bjsxt.pojo.Files;
import com.bjsxt.service.FilesService;
@Service
public class FilesServiceImpl implements FilesService {
    @Resource
	private FilesMapper filesMapper;
	public List<Files> show() {
		
		return filesMapper.selAll();
	}
	public int updCount(int id) {
		
		return filesMapper.updCount(id);
	}

}
