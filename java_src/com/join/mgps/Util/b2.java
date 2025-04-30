package com.join.mgps.Util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
/* compiled from: StoreUtil.java */
/* loaded from: classes3.dex */
public class b2 {
    private b2() {
    }

    public static void a(Context context) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().clear().commit();
    }

    public static Object b(Context context, String str) throws IOException {
        try {
            return new ObjectInputStream(new ByteArrayInputStream(Base64.decode(PreferenceManager.getDefaultSharedPreferences(context).getString(str, "").getBytes(), 0))).readObject();
        } catch (Exception unused) {
            return null;
        }
    }

    public static int c(Context context, String str, int i2) {
        return PreferenceManager.getDefaultSharedPreferences(context).getInt(str, i2);
    }

    public static long d(Context context, String str, long j4) {
        return PreferenceManager.getDefaultSharedPreferences(context).getLong(str, j4);
    }

    public static String e(Context context, String str, String str2) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(str, str2);
    }

    public static Boolean f(Context context, String str, Boolean bool) {
        return Boolean.valueOf(PreferenceManager.getDefaultSharedPreferences(context).getBoolean(str, bool.booleanValue()));
    }

    public static void g(Context context, String str, int i2) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putInt(str, i2).commit();
    }

    public static void h(Context context, String str, long j4) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putLong(str, j4).commit();
    }

    public static void i(Context context, String str, String str2) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString(str, str2).commit();
    }

    public static void j(Context context, String str, Boolean bool) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean(str, bool.booleanValue()).commit();
    }

    public static void k(Context context, String str) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.remove(str);
        edit.commit();
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x004a, code lost:
        if (r2 != null) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean l(android.content.Context r4, java.lang.String r5, java.lang.Object r6) throws java.io.IOException {
        /*
            r0 = 0
            if (r6 != 0) goto L4
            return r0
        L4:
            android.content.SharedPreferences r4 = android.preference.PreferenceManager.getDefaultSharedPreferences(r4)
            android.content.SharedPreferences$Editor r4 = r4.edit()
            r1 = 0
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L44
            r2.<init>()     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L44
            java.io.ObjectOutputStream r3 = new java.io.ObjectOutputStream     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            r3.writeObject(r6)     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L31
            java.lang.String r6 = new java.lang.String     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L31
            byte[] r1 = r2.toByteArray()     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L31
            byte[] r0 = android.util.Base64.encode(r1, r0)     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L31
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L31
            r4.putString(r5, r6)     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L31
            r3.close()
            goto L4c
        L2e:
            r4 = move-exception
            r1 = r3
            goto L39
        L31:
            r1 = r3
            goto L45
        L33:
            r4 = move-exception
            goto L39
        L35:
            goto L45
        L37:
            r4 = move-exception
            r2 = r1
        L39:
            if (r1 == 0) goto L3e
            r1.close()
        L3e:
            if (r2 == 0) goto L43
            r2.close()
        L43:
            throw r4
        L44:
            r2 = r1
        L45:
            if (r1 == 0) goto L4a
            r1.close()
        L4a:
            if (r2 == 0) goto L4f
        L4c:
            r2.close()
        L4f:
            boolean r4 = r4.commit()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.b2.l(android.content.Context, java.lang.String, java.lang.Object):boolean");
    }
}
