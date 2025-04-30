package com.xinzhu.overmind.client.hook.common;

import com.xinzhu.overmind.client.hook.g;
import java.lang.reflect.Method;
/* compiled from: DefaultNegativeResultMethodHookStub.java */
/* loaded from: classes.dex */
public class b extends g {

    /* renamed from: a  reason: collision with root package name */
    String f64080a;

    public b(String name) {
        this.f64080a = name;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.g
    public String c() {
        return this.f64080a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.g
    public Object d(Object who, Method method, Object[] args) throws Throwable {
        return com.xinzhu.overmind.utils.helpers.d.a(method.getReturnType());
    }
}
