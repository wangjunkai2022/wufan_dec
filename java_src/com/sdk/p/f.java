package com.sdk.p;

import android.content.Context;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class f extends com.sdk.i.a {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f56679a;

        /* renamed from: b  reason: collision with root package name */
        public static final a f56680b;

        /* renamed from: c  reason: collision with root package name */
        public static final a f56681c;

        /* renamed from: d  reason: collision with root package name */
        public static final /* synthetic */ a[] f56682d;

        static {
            c cVar = new c("WIFI", 0);
            f56679a = cVar;
            d dVar = new d("NET", 1);
            f56680b = dVar;
            e eVar = new e("UNKNOW", 2);
            f56681c = eVar;
            f56682d = new a[]{cVar, dVar, eVar};
        }

        public /* synthetic */ a(String str, int i2, com.sdk.p.b bVar) {
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) f56682d.clone();
        }

        public abstract int a();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f56683a;

        /* renamed from: b  reason: collision with root package name */
        public static final b f56684b;

        /* renamed from: c  reason: collision with root package name */
        public static final b f56685c;

        /* renamed from: d  reason: collision with root package name */
        public static final /* synthetic */ b[] f56686d;

        static {
            g gVar = new g("CMCC", 0);
            f56683a = gVar;
            h hVar = new h("CUCC", 1);
            f56684b = hVar;
            i iVar = new i("CTC", 2);
            f56685c = iVar;
            f56686d = new b[]{gVar, hVar, iVar};
        }

        public /* synthetic */ b(String str, int i2, com.sdk.p.b bVar) {
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f56686d.clone();
        }

        public abstract String a();
    }

    static {
        boolean z3 = com.sdk.f.g.f56647b;
    }

    public static a a(Context context, ArrayList<String> arrayList) {
        a aVar = a.f56681c;
        return com.sdk.p.a.a(context);
    }
}
