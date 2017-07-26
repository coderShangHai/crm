package com.fxeie.crm.shiro;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;

import com.fxeie.crm.utils.EncryptUtils;

public class CrmRealm extends AuthorizingRealm{
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		// TODO Auto-generated method stub
	    return null;  
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken authcToken) throws AuthenticationException {
		// TODO Auto-generated method stub
		UsernamePasswordToken token = (UsernamePasswordToken) authcToken; 
		String userName = token.getUsername();
		String password = String.valueOf(token.getPassword());
		System.out.println("REALM  "+userName+"   "+password);
        if(!userName.equals("admin")||!password.equals((EncryptUtils.md5("admin")))){
        	SessionUtils.setSession("loginError", "用户名和密码错误,登录失败");
        	throw new UnknownAccountException();
        }
        SessionUtils.setSession("user", "");
        return new SimpleAuthenticationInfo(userName,  
        		password, getName());  
	}
	public void clearCachedAuthorizationInfo(String principal) {  
        SimplePrincipalCollection principals = new SimplePrincipalCollection(  
                principal, getName());  
        clearCachedAuthorizationInfo(principals);  
    }  
}
