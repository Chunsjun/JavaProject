package org.bytal.service.webService;

import java.util.List;

import javax.annotation.Resource;

import org.bytal.domain.Cradle;
import org.bytal.persistence.WebCradleMapper;
import org.springframework.stereotype.Service;

@Service
public class WebServiceImpl implements WebService{
	@Resource
	private WebCradleMapper webCradleMapper;

	/* 대여소 목록 조회 */
	@Override
	public List<Cradle> list(Cradle cradle) {
		return this.webCradleMapper.list(cradle);
	}

	/* 대여소 등록 */
	@Override
	public void add(Cradle cradle) {
		this.webCradleMapper.add(cradle);
	}
	
	/* 대여소 삭제 */
	@Override
	public void delete(int cradleNo) {
		this.webCradleMapper.delete(cradleNo);
	}

	/* 대여소 수정 */
	@Override
	public void edit(Cradle cradle) {
		this.webCradleMapper.edit(cradle);
	}

	/* 대여소 조회 */
	@Override
	public Cradle view(int cradleNo) {
		return this.webCradleMapper.view(cradleNo);
	}

	/* 대여소 총개수 */
	@Override
	public int count(Cradle cradle) {
		return this.webCradleMapper.count(cradle);
	}
}
