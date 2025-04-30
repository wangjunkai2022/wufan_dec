package com.sdk.f;

import java.util.HashMap;
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public static String f56646a;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f56647b;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f56648c;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f56649d;

    /* renamed from: e  reason: collision with root package name */
    public static boolean f56650e;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f56651a;

        /* renamed from: b  reason: collision with root package name */
        public static final a f56652b;

        /* renamed from: c  reason: collision with root package name */
        public static final /* synthetic */ a[] f56653c;

        static {
            e eVar = new e("PRODUCE_STATISTICAL", 0);
            f56651a = eVar;
            f fVar = new f("PRODUCE_DZH", 1);
            f56652b = fVar;
            f56653c = new a[]{eVar, fVar};
        }

        public /* synthetic */ a(String str, int i2, d dVar) {
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) f56653c.clone();
        }

        public abstract String a();
    }

    static {
        new HashMap();
        f56646a = "installTime";
        f56647b = false;
        f56648c = true;
        f56649d = false;
        f56650e = false;
    }
}
