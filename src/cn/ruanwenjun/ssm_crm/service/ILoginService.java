package cn.ruanwenjun.ssm_crm.service;

import java.util.List;

import cn.ruanwenjun.ssm_crm.domain.User;

/**
 * @author ruanwenjun E-mail:861923274@qq.com
 * @date 2018年4月11日 下午7:37:01
*/
public interface ILoginService {

	public List<User> findUserinfo(String uId, String pw);

}
