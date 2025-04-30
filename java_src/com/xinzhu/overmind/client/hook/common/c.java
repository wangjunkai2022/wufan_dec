package com.xinzhu.overmind.client.hook.common;

import com.xinzhu.overmind.client.hook.g;
import java.lang.reflect.Method;
/* compiled from: FixedResultMethodHookStub.java */
/* loaded from: classes.dex */
public class c extends g {

    /* renamed from: a  reason: collision with root package name */
    Object f64081a;

    /* renamed from: b  reason: collision with root package name */
    String f64082b;

    public c(String name, Object result) {
        this.f64081a = result;
        this.f64082b = name;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.g
    public String c() {
        return this.f64082b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.g
    public Object d(Object who, Method method, Object[] args) throws Throwable {
        return this.f64081a;
    }
}
