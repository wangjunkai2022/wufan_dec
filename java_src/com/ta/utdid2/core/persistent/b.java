package com.ta.utdid2.core.persistent;

import java.util.Map;
/* loaded from: classes4.dex */
public interface b {

    /* loaded from: classes4.dex */
    public interface a {
        a clear();

        boolean commit();

        a putBoolean(String str, boolean z3);

        a putFloat(String str, float f4);

        a putInt(String str, int i2);

        a putLong(String str, long j4);

        a putString(String str, String str2);

        a remove(String str);
    }

    /* renamed from: com.ta.utdid2.core.persistent.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0338b {
        void a(b bVar, String str);
    }

    boolean a();

    void b(InterfaceC0338b interfaceC0338b);

    void c(InterfaceC0338b interfaceC0338b);

    boolean contains(String str);

    a edit();

    Map<String, ?> getAll();

    boolean getBoolean(String str, boolean z3);

    float getFloat(String str, float f4);

    int getInt(String str, int i2);

    long getLong(String str, long j4);

    String getString(String str, String str2);
}
