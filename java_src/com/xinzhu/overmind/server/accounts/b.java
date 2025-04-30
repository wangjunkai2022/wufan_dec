package com.xinzhu.overmind.server.accounts;

import android.accounts.Account;
import android.os.Parcel;
import android.util.Pair;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.utils.j;
import com.xinzhu.overmind.utils.l;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* compiled from: CompatReader.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final File f64373a = new File(Overmind.getContext().getApplicationInfo().dataDir, "data/app/system/account-list.ini");

    /* renamed from: b  reason: collision with root package name */
    private static final File f64374b = new File(Overmind.getContext().getApplicationInfo().dataDir, "data/app/system/account-visibility-list.ini");

    /* compiled from: CompatReader.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f64375a;

        /* renamed from: b  reason: collision with root package name */
        public Account f64376b;

        /* renamed from: c  reason: collision with root package name */
        public String f64377c;

        /* renamed from: d  reason: collision with root package name */
        public String f64378d;

        /* renamed from: e  reason: collision with root package name */
        public long f64379e;

        /* renamed from: f  reason: collision with root package name */
        public final List<Pair<String, String>> f64380f = new ArrayList();

        /* renamed from: g  reason: collision with root package name */
        public final List<Pair<String, String>> f64381g = new ArrayList();
    }

    /* compiled from: CompatReader.java */
    /* renamed from: com.xinzhu.overmind.server.accounts.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0429b {

        /* renamed from: a  reason: collision with root package name */
        public int f64382a;

        /* renamed from: b  reason: collision with root package name */
        public Account f64383b;

        /* renamed from: c  reason: collision with root package name */
        public final List<Pair<String, Integer>> f64384c = new ArrayList();
    }

    public static boolean a() {
        return f64373a.delete();
    }

    public static boolean b() {
        return f64373a.exists();
    }

    public static List<a> c() {
        FileInputStream fileInputStream;
        Parcel obtain = Parcel.obtain();
        ArrayList arrayList = new ArrayList();
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(f64373a);
            try {
                try {
                    byte[] w3 = j.w(fileInputStream);
                    obtain.unmarshall(w3, 0, w3.length);
                    obtain.setDataPosition(0);
                    obtain.readInt();
                    for (int readInt = obtain.readInt(); readInt > 0; readInt--) {
                        a aVar = new a();
                        aVar.f64375a = obtain.readInt();
                        String readString = obtain.readString();
                        aVar.f64377c = obtain.readString();
                        aVar.f64376b = new Account(readString, obtain.readString());
                        aVar.f64378d = obtain.readString();
                        aVar.f64379e = obtain.readLong();
                        for (int readInt2 = obtain.readInt(); readInt2 > 0; readInt2--) {
                            aVar.f64380f.add(new Pair<>(obtain.readString(), obtain.readString()));
                        }
                        for (int readInt3 = obtain.readInt(); readInt3 > 0; readInt3--) {
                            aVar.f64381g.add(new Pair<>(obtain.readString(), obtain.readString()));
                        }
                        arrayList.add(aVar);
                    }
                    obtain.recycle();
                    l.a(fileInputStream);
                    return arrayList;
                } catch (IOException e4) {
                    e = e4;
                    e.printStackTrace();
                    obtain.recycle();
                    l.a(fileInputStream);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                obtain.recycle();
                l.a(fileInputStream2);
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            obtain.recycle();
            l.a(fileInputStream2);
            throw th;
        }
    }

    /* JADX WARN: Not initialized variable reg: 5, insn: 0x0095: MOVE  (r2 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:26:0x0095 */
    public static List<C0429b> d() {
        FileInputStream fileInputStream;
        Closeable closeable;
        Parcel obtain = Parcel.obtain();
        ArrayList arrayList = new ArrayList();
        Closeable closeable2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(f64374b);
                try {
                    byte[] w3 = j.w(fileInputStream);
                    obtain.unmarshall(w3, 0, w3.length);
                    obtain.setDataPosition(0);
                    obtain.readInt();
                    for (int readInt = obtain.readInt(); readInt > 0; readInt--) {
                        obtain.readInt();
                        for (int readInt2 = obtain.readInt(); readInt2 > 0; readInt2--) {
                            C0429b c0429b = new C0429b();
                            c0429b.f64383b = new Account(obtain.readString(), obtain.readString());
                            c0429b.f64382a = obtain.readInt();
                            for (int readInt3 = obtain.readInt(); readInt3 > 0; readInt3--) {
                                String readString = obtain.readString();
                                obtain.readInt();
                                c0429b.f64384c.add(new Pair<>(readString, Integer.valueOf(obtain.readInt())));
                            }
                            arrayList.add(c0429b);
                        }
                    }
                    obtain.recycle();
                    l.a(fileInputStream);
                    return arrayList;
                } catch (IOException e4) {
                    e = e4;
                    e.printStackTrace();
                    obtain.recycle();
                    l.a(fileInputStream);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                closeable2 = closeable;
                obtain.recycle();
                l.a(closeable2);
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            obtain.recycle();
            l.a(closeable2);
            throw th;
        }
    }
}
