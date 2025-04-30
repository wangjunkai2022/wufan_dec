package com.sdk.f;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public long f56637a = System.currentTimeMillis();

    /* renamed from: b  reason: collision with root package name */
    public a f56638b = new a();

    /* renamed from: c  reason: collision with root package name */
    public String f56639c = "";

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public List<C0284a> f56640a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        public List<String> f56641b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        public List<String> f56642c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        public String f56643d = "";

        /* renamed from: com.sdk.f.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static class C0284a {

            /* renamed from: a  reason: collision with root package name */
            public String f56644a = "";

            /* renamed from: b  reason: collision with root package name */
            public long f56645b;

            public String toString() {
                return "_$101005Bean{url='" + this.f56644a + "', time=" + this.f56645b + '}';
            }
        }

        public String toString() {
            return "StatusBean{_$101005=" + this.f56640a + ", _$302001=" + this.f56641b + ", _$302002=" + this.f56642c + ", _$302003='" + this.f56643d + "'}";
        }
    }

    public String toString() {
        return "MobileLog{time=" + this.f56637a + ", status=" + this.f56638b + '}';
    }
}
