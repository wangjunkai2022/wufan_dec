package com.mob.commons.b;

import android.content.Context;
import android.text.TextUtils;
import com.mob.commons.r;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f52842a = com.mob.commons.o.a("005_el!lJfgdffg");

    /* renamed from: b  reason: collision with root package name */
    private static b f52843b;

    /* renamed from: c  reason: collision with root package name */
    private Context f52844c;

    /* renamed from: d  reason: collision with root package name */
    private HashMap<String, Object> f52845d = new HashMap<>();

    private b(Context context) {
        this.f52844c = context;
        try {
            HashMap hashMap = (HashMap) a(a(context, f52842a));
            if (hashMap == null || hashMap.size() <= 0) {
                return;
            }
            this.f52845d.putAll(hashMap);
        } catch (Throwable unused) {
        }
    }

    public static synchronized b a(Context context) {
        b bVar;
        synchronized (b.class) {
            if (f52843b == null) {
                f52843b = new b(context);
            }
            bVar = f52843b;
        }
        return bVar;
    }

    public synchronized HashMap<String, Object> a() {
        return this.f52845d;
    }

    public synchronized boolean a(String str, String str2, String str3, String str4, boolean z3) {
        HashMap hashMap;
        try {
            hashMap = new HashMap();
            if (!TextUtils.isEmpty(str)) {
                hashMap.put(com.mob.commons.o.a("0048ecdfde6h"), str);
            }
            if (!TextUtils.isEmpty(str2)) {
                hashMap.put(com.mob.commons.o.a("004'dfdfde+h"), str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                hashMap.put(com.mob.commons.o.a("004jLdfdeRh"), str3);
            }
            if (!TextUtils.isEmpty(str4)) {
                hashMap.put(com.mob.commons.o.a("0041dcMhJdeIh"), str4);
            }
            hashMap.put(com.mob.commons.o.a("0096fgdcCee!ecdh_dih"), Boolean.valueOf(z3));
        } catch (Throwable unused) {
            return false;
        }
        return a(a(this.f52844c, f52842a), hashMap);
    }

    private static File a(Context context, String str) {
        try {
            File file = new File(context.getFilesDir().getAbsolutePath() + com.mob.commons.o.a("005gPgiecfcRg"));
            if (!file.exists() || !file.isDirectory()) {
                file.delete();
                file.mkdirs();
            }
            return new File(file, str);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Object a(File file) {
        ObjectInputStream objectInputStream;
        try {
            if (file.exists()) {
                try {
                    objectInputStream = new ObjectInputStream(new GZIPInputStream(new FileInputStream(file)));
                    try {
                        Object readObject = objectInputStream.readObject();
                        r.a(objectInputStream);
                        return readObject;
                    } catch (Throwable th) {
                        th = th;
                        r.a(objectInputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    objectInputStream = null;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private static boolean a(File file, Object obj) {
        ObjectOutputStream objectOutputStream;
        try {
            if (file.exists()) {
                file.delete();
            }
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            file.createNewFile();
            ObjectOutputStream objectOutputStream2 = null;
            try {
                objectOutputStream = new ObjectOutputStream(new GZIPOutputStream(new FileOutputStream(file)));
            } catch (Throwable th) {
                th = th;
            }
            try {
                objectOutputStream.writeObject(obj);
                objectOutputStream.flush();
                r.a(objectOutputStream);
                return true;
            } catch (Throwable th2) {
                th = th2;
                objectOutputStream2 = objectOutputStream;
                r.a(objectOutputStream2);
                throw th;
            }
        } catch (Throwable unused) {
            return false;
        }
    }
}
