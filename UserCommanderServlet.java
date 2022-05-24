package org.yakusoku.user;

import org.yakusoku.center.Commander;
import org.yakusoku.model.UserDao;

public class UserCommanderServlet extends Commander{
	UserDao userDao = new UserDao();
}
