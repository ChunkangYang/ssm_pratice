package cn.ruanwenjun.ssm_crm.controller;

import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import cn.ruanwenjun.ssm_crm.domain.QueryVo;
import cn.ruanwenjun.ssm_crm.service.IEmployeeService;

/**
 * @author ruanwenjun E-mail:861923274@qq.com
 * @date 2018年4月11日 下午6:47:31
 */

@Controller
public class EmployeeController {

	@Autowired
	private IEmployeeService employeeService;

	// 跳转到页面
	@RequestMapping(value = "employee/list.action")
	public String list(Model model, QueryVo vo) {
		
		// 从字典表里查询客户来源002---fromType
		// 所属行业001----industryType
		// 客户级别006----levelType
		/*
		List<BaseDict> fromType = employeeService.findBaseDictByCode("002");
		List<BaseDict> industryType = employeeService.findBaseDictByCode("001");
		List<BaseDict> levelType = employeeService.findBaseDictByCode("006");
		model.addAttribute("fromType", fromType);
		model.addAttribute("industryType", industryType);
		model.addAttribute("levelType", levelType);

		Page<Employee> page = new Page<Employee>();

		// 获取前台传来的数据
		if (vo != null) {
			Integer currentpage = vo.getPage();
			if (currentpage != null) {
				page.setPage(currentpage);
				Integer start = (currentpage - 1) * vo.getRows();
				vo.setStart(start);
			}
			if (vo.getCust_industry() != null) {
				String cust_industry = vo.getCust_industry().trim();
				vo.setCust_industry(cust_industry);
			}
			if (vo.getCust_level() != null) {
				String cust_level = vo.getCust_level().trim();
				vo.setCust_level(cust_level);
			}
			if (vo.getCust_name() != null) {
				String cust_name = vo.getCust_name().trim();
				vo.setCust_name(cust_name);
			}
			if (vo.getCust_source() != null) {
				String cust_source = vo.getCust_source().trim();
				vo.setCust_source(cust_source);
			}
		} else {
			vo = new QueryVo();
		}
		vo.setRows(10);
		// 查询总数目
		Integer count = employeeService.selectTotalCountByQueryVo(user);
		page.setTotal(count);
		
		List<User> list = employeeService.selectUserListByQueryVo(user);
		page.setRows(list);
		
		model.addAttribute("name",name);
		model.addAttribute("manager_id",vo.getManager_id());
		model.addAttribute("insurance",vo.getInsurance());
		model.addAttribute("nyusha_date",vo.getNyusha_date());
		model.addAttribute("taisha_date", vo.getTaisha_date());

		return "employeeUpdate";
		*/
		
		return "";
	}

	@RequestMapping(value="employee/employee.new")
	public String gotoEmp(String str) {
		
		return "employeeNew";
		
	}


	@RequestMapping(value="employee/employee.update")
	public String update(@RequestParam("record") String[] record, Model model) {
		
		//public String update( @RequestBody String params ) {
		//	  String name = params.get("record").toString();
	
		// 讀取長度, 比 1 大代表多選, 根據仕樣跳出警告視窗並且回去原本的頁面
		if(record.length > 1){
			JOptionPane.showMessageDialog(null, "一件ずつ更新してください！");
			return "employeeManagment";
		}
		// 選取一筆資料即可進入更新頁面
		if(record.length == 1){
			return "employeeUpdate";
		}
		// 沒有選取任何資料一樣返回原本頁面
		else{
			return "employeeManagment";
		}		
	}
	
//	@RequestMapping(value="login/login.action")
//	public String gotoEmpNew(String str) {
//		
//		return "employeeManagment";
//		
//	}
	
}
