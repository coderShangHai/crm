package com.fxeie.crm.shiro;

import com.fxeie.crm.utils.EncryptUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CrmRealm extends AuthorizingRealm {

    private static final Logger log = LoggerFactory.getLogger(CrmRealm.class);

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(
            AuthenticationToken authcToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
        String userName = token.getUsername();
        String password = String.valueOf(token.getPassword());
        log.info("REALM  " + userName + "   " + password);
        if (!userName.equals("admin") || !password.equals((EncryptUtils.md5("admin")))) {
            SessionUtils.setSession("loginError", "用户名或密码错误,登录失败");
            throw new UnknownAccountException();
        }
        SessionUtils.setSession("user", "");
        return new SimpleAuthenticationInfo(userName, password, getName());

    }

    public void clearCachedAuthorizationInfo(String principal) {
        SimplePrincipalCollection principals = new SimplePrincipalCollection(principal, getName());
        clearCachedAuthorizationInfo(principals);
    }
}
