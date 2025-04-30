package org.jboss.netty.util;
/* compiled from: ThreadNameDeterminer.java */
/* loaded from: classes5.dex */
public interface d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f73645a = new a();

    /* renamed from: b  reason: collision with root package name */
    public static final d f73646b = new b();

    /* compiled from: ThreadNameDeterminer.java */
    /* loaded from: classes5.dex */
    static class a implements d {
        a() {
        }

        @Override // org.jboss.netty.util.d
        public String a(String str, String str2) throws Exception {
            return str2;
        }
    }

    /* compiled from: ThreadNameDeterminer.java */
    /* loaded from: classes5.dex */
    static class b implements d {
        b() {
        }

        @Override // org.jboss.netty.util.d
        public String a(String str, String str2) throws Exception {
            return null;
        }
    }

    String a(String str, String str2) throws Exception;
}
