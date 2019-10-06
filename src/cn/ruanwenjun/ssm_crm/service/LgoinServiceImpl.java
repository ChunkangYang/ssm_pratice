package cn.ruanwenjun.ssm_crm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.ruanwenjun.ssm_crm.dao.ILoginDao;
import cn.ruanwenjun.ssm_crm.domain.User;

/**
 * @author ruanwenjun E-mail:861923274@qq.com
 * @date 2018年4月11日 下午7:37:30
*/
@Service
public class LgoinServiceImpl implements ILoginService {
	@Autowired
	private ILoginDao loginDao;

	@Override
	public List<User> findUserinfo(String uId, String pw) {
		// TODO Auto-generated method stub
		return loginDao.findUserinfo(uId, pw);
	}

}
