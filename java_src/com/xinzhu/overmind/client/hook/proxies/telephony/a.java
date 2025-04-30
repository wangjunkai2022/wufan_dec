package com.xinzhu.overmind.client.hook.proxies.telephony;

import com.xinzhu.overmind.client.hook.g;
import com.xinzhu.overmind.server.os.MindDeviceInfo;
import java.lang.reflect.Method;
/* compiled from: CommonStub.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f64228a = "CommonStub";

    /* compiled from: CommonStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.telephony.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0420a extends g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getDeviceId";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            MindDeviceInfo b4 = com.xinzhu.overmind.client.frameworks.b.a().b();
            if (b4 != null) {
                return b4.f64491b;
            }
            return method.invoke(who, args);
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    public static class b extends C0420a {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.telephony.a.C0420a, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getDeviceIdWithFeature";
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    public static class c extends C0420a {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.telephony.a.C0420a, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getImeiForSlot";
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    public static class d extends C0420a {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.telephony.a.C0420a, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getMeidForSlot";
        }
    }
}
