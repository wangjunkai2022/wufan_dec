package com.xinzhu.overmind.server.accounts;

import android.accounts.Account;
import android.util.LruCache;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TokenCache.java */
/* loaded from: classes3.dex */
public class i {

    /* renamed from: b  reason: collision with root package name */
    private static final int f64407b = 64000;

    /* renamed from: a  reason: collision with root package name */
    private b f64408a = new b();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TokenCache.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final Account f64409a;

        /* renamed from: b  reason: collision with root package name */
        public final String f64410b;

        /* renamed from: c  reason: collision with root package name */
        public final String f64411c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f64412d;

        public a(Account account, String tokenType, String packageName, byte[] sigDigest) {
            this.f64409a = account;
            this.f64411c = tokenType;
            this.f64410b = packageName;
            this.f64412d = sigDigest;
        }

        public boolean equals(Object o3) {
            if (o3 == null || !(o3 instanceof a)) {
                return false;
            }
            a aVar = (a) o3;
            return Objects.equals(this.f64409a, aVar.f64409a) && Objects.equals(this.f64410b, aVar.f64410b) && Objects.equals(this.f64411c, aVar.f64411c) && Arrays.equals(this.f64412d, aVar.f64412d);
        }

        public int hashCode() {
            return ((this.f64409a.hashCode() ^ this.f64410b.hashCode()) ^ this.f64411c.hashCode()) ^ Arrays.hashCode(this.f64412d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TokenCache.java */
    /* loaded from: classes3.dex */
    public static class b extends LruCache<a, c> {

        /* renamed from: a  reason: collision with root package name */
        private HashMap<Pair<String, String>, a> f64413a;

        /* renamed from: b  reason: collision with root package name */
        private HashMap<Account, a> f64414b;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: TokenCache.java */
        /* loaded from: classes3.dex */
        public class a {

            /* renamed from: a  reason: collision with root package name */
            private final List<a> f64415a = new ArrayList();

            public a() {
            }

            public void a(a k4) {
                this.f64415a.add(k4);
            }

            public void b() {
                for (a aVar : this.f64415a) {
                    b.this.remove(aVar);
                }
            }
        }

        public b() {
            super(i.f64407b);
            this.f64413a = new HashMap<>();
            this.f64414b = new HashMap<>();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        /* renamed from: a */
        public void entryRemoved(boolean evicted, a k4, c oldVal, c newVal) {
            a remove;
            if (oldVal == null || newVal != null || (remove = this.f64413a.remove(new Pair(k4.f64409a.type, oldVal.f64417a))) == null) {
                return;
            }
            remove.b();
        }

        public void b(Account account) {
            a aVar = this.f64414b.get(account);
            if (aVar != null) {
                aVar.b();
            }
        }

        public void c(String accountType, String token) {
            a aVar = this.f64413a.get(new Pair(accountType, token));
            if (aVar != null) {
                aVar.b();
            }
        }

        public void d(a k4, c v3) {
            Pair<String, String> pair = new Pair<>(k4.f64409a.type, v3.f64417a);
            a aVar = this.f64413a.get(pair);
            if (aVar == null) {
                aVar = new a();
            }
            aVar.a(k4);
            this.f64413a.put(pair, aVar);
            a aVar2 = this.f64414b.get(k4.f64409a);
            if (aVar2 == null) {
                aVar2 = new a();
            }
            aVar2.a(k4);
            this.f64414b.put(k4.f64409a, aVar2);
            put(k4, v3);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        /* renamed from: e */
        public int sizeOf(a k4, c v3) {
            return v3.f64417a.length();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TokenCache.java */
    /* loaded from: classes3.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public final String f64417a;

        /* renamed from: b  reason: collision with root package name */
        public final long f64418b;

        public c(String token, long expiryEpochMillis) {
            this.f64417a = token;
            this.f64418b = expiryEpochMillis;
        }
    }

    public String a(Account account, String tokenType, String packageName, byte[] sigDigest) {
        c cVar = this.f64408a.get(new a(account, tokenType, packageName, sigDigest));
        long currentTimeMillis = System.currentTimeMillis();
        if (cVar == null || currentTimeMillis >= cVar.f64418b) {
            if (cVar != null) {
                d(account.type, cVar.f64417a);
                return null;
            }
            return null;
        }
        return cVar.f64417a;
    }

    public void b(Account account, String token, String tokenType, String packageName, byte[] sigDigest, long expiryMillis) {
        Objects.requireNonNull(account);
        if (token == null || System.currentTimeMillis() > expiryMillis) {
            return;
        }
        this.f64408a.d(new a(account, tokenType, packageName, sigDigest), new c(token, expiryMillis));
    }

    public void c(Account account) {
        this.f64408a.b(account);
    }

    public void d(String accountType, String token) {
        this.f64408a.c(accountType, token);
    }
}
