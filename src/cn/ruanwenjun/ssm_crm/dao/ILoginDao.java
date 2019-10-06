package cn.ruanwenjun.ssm_crm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.ruanwenjun.ssm_crm.domain.User;

/**
 * @author ruanwenjun E-mail:861923274@qq.com
 * @date 2018年4月11日 下午7:40:33
*/
public interface ILoginDao {

	public List<User> findUserinfo(@Param("userId")String id, @Param("password")String pwd);


}
