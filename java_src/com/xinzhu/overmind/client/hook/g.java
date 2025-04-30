package com.xinzhu.overmind.client.hook;

import com.xinzhu.overmind.Overmind;
import java.lang.reflect.Method;
/* compiled from: MethodHook.java */
/* loaded from: classes.dex */
public abstract class g {
    /* JADX INFO: Access modifiers changed from: protected */
    public Object a(Object result) throws Throwable {
        return result;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object b(Object who, Method method, Object[] args) throws Throwable {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract String c();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object d(Object who, Method method, Object[] args) throws Throwable;

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(Object[] args, int index) {
        args[index] = Integer.valueOf(Overmind.getHostUserId());
    }
}
