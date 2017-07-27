package com.fxeie.crm.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import java.util.Collection;

public class SessionUtils {

    public static String getLoginKey() {
        Subject currentUser = SecurityUtils.getSubject();
        if (currentUser.isAuthenticated()) {
            return (String) currentUser.getPrincipal();
        }
        return null;
    }

    public static Boolean isLogin() {
        Subject currentUser = SecurityUtils.getSubject();
        return currentUser.isAuthenticated();
    }

    public static void setSession(String key, Object value) {
        Subject currentUser = SecurityUtils.getSubject();
        currentUser.getSession().setAttribute(key, value);
    }

    public static void deleteSession(String key) {
        Subject currentUser = SecurityUtils.getSubject();
        currentUser.getSession().removeAttribute(key);
    }

    public static Object getSession(String key) {
        Subject currentUser = SecurityUtils.getSubject();
        Collection<Object> col = currentUser.getSession().getAttributeKeys();
        if (col.contains(key)) {
            return currentUser.getSession().getAttribute(key);
        }
        return null;
    }

    public static Boolean containsKey(String key) {
        Subject currentUser = SecurityUtils.getSubject();
        Collection<Object> col = currentUser.getSession().getAttributeKeys();
        return col.contains(key);
    }

    public static void lostLogin() {
        Subject currentUser = SecurityUtils.getSubject();
        if (currentUser.isAuthenticated()) {
            currentUser.logout();
        }
    }
}
