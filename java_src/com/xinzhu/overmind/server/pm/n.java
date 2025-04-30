package com.xinzhu.overmind.server.pm;

import android.content.pm.PackageParser;
import android.os.Parcel;
import android.util.ArrayMap;
import android.util.AtomicFile;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.pm.InstallOption;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Settings.java */
/* loaded from: classes3.dex */
public class n {

    /* renamed from: d  reason: collision with root package name */
    public static final String f64644d = "Settings";

    /* renamed from: a  reason: collision with root package name */
    final ArrayMap<String, MindPackageSettings> f64645a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Integer> f64646b;

    /* renamed from: c  reason: collision with root package name */
    private int f64647c;

    public n() {
        ArrayMap<String, MindPackageSettings> arrayMap = new ArrayMap<>();
        this.f64645a = arrayMap;
        this.f64646b = new HashMap();
        this.f64647c = 0;
        synchronized (arrayMap) {
            f();
        }
    }

    private int a(MindPackageSettings obj) {
        int i2;
        MindPackage mindPackage = obj.f64563a;
        String str = mindPackage.f64528o;
        if (str == null) {
            str = mindPackage.f64526m;
        }
        Integer num = this.f64646b.get(str);
        if (num != null) {
            i2 = num.intValue();
        } else {
            int i4 = this.f64647c;
            if (i4 >= 19999) {
                return -1;
            }
            int i5 = i4 + 1;
            this.f64647c = i5;
            this.f64646b.put(str, Integer.valueOf(i5));
            i2 = this.f64647c;
        }
        return i2 + 10000;
    }

    private int b(MindPackageSettings obj, int legacyAppId) {
        MindPackage mindPackage = obj.f64563a;
        String str = mindPackage.f64528o;
        if (str == null) {
            str = mindPackage.f64526m;
        }
        Integer num = this.f64646b.get(str);
        if (num != null) {
            return num.intValue() + 10000;
        }
        if (legacyAppId >= 19999) {
            return -1;
        }
        this.f64647c = Math.max(this.f64647c, legacyAppId);
        this.f64646b.put(str, Integer.valueOf(legacyAppId));
        return legacyAppId + 10000;
    }

    private void f() {
        Parcel obtain = Parcel.obtain();
        try {
            byte[] v3 = com.xinzhu.overmind.utils.j.v(com.xinzhu.overmind.a.O());
            obtain.unmarshall(v3, 0, v3.length);
            obtain.setDataPosition(0);
            this.f64647c = obtain.readInt();
            HashMap readHashMap = obtain.readHashMap(HashMap.class.getClassLoader());
            synchronized (this.f64646b) {
                this.f64646b.clear();
                this.f64646b.putAll(readHashMap);
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
        obtain.recycle();
    }

    private void i() {
        Parcel obtain = Parcel.obtain();
        AtomicFile atomicFile = new AtomicFile(com.xinzhu.overmind.a.O());
        FileOutputStream fileOutputStream = null;
        try {
            try {
                obtain.writeInt(this.f64647c);
                obtain.writeMap(this.f64646b);
                fileOutputStream = atomicFile.startWrite();
                com.xinzhu.overmind.utils.j.z(obtain, fileOutputStream);
                atomicFile.finishWrite(fileOutputStream);
            } catch (Exception e4) {
                e4.printStackTrace();
                atomicFile.failWrite(fileOutputStream);
            }
        } finally {
            obtain.recycle();
        }
    }

    private void k(File app2) {
        String name = app2.getName();
        Parcel obtain = Parcel.obtain();
        File J = com.xinzhu.overmind.a.J(name);
        if (J.exists()) {
            try {
                byte[] v3 = com.xinzhu.overmind.utils.j.v(J);
                obtain.unmarshall(v3, 0, v3.length);
                obtain.setDataPosition(0);
                MindPackageSettings mindPackageSettings = new MindPackageSettings(obtain);
                if (mindPackageSettings.f64565c.c(1)) {
                    String str = Overmind.getContext().getPackageManager().getPackageInfo(name, 128).applicationInfo.sourceDir;
                    if (!str.equals(mindPackageSettings.f64563a.f64535v)) {
                        com.xinzhu.overmind.server.d.d().j(mindPackageSettings.f64563a.f64526m);
                        mindPackageSettings.f64563a.f64535v = str;
                        g.get().updatePackage(mindPackageSettings);
                    }
                }
                MindPackage mindPackage = mindPackageSettings.f64563a;
                mindPackage.f64525l = mindPackageSettings;
                mindPackage.f64532s = i.f(mindPackage, 0, MindPackageUserState.a(), 0);
                mindPackageSettings.l();
                this.f64645a.put(mindPackageSettings.f64563a.f64526m, mindPackageSettings);
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MindPackageSettings c(String name, PackageParser.Package aPackage, InstallOption option) {
        MindPackageSettings mindPackageSettings = new MindPackageSettings();
        mindPackageSettings.f64565c = option;
        MindPackage mindPackage = new MindPackage(aPackage);
        mindPackageSettings.f64563a = mindPackage;
        mindPackage.f64525l = mindPackageSettings;
        mindPackage.f64532s = i.f(mindPackage, 0, MindPackageUserState.a(), 0);
        synchronized (this.f64645a) {
            MindPackageSettings mindPackageSettings2 = this.f64645a.get(name);
            if (mindPackageSettings2 != null) {
                mindPackageSettings.f64564b = mindPackageSettings2.f64564b;
                mindPackageSettings.f64569g = mindPackageSettings2.f64569g;
                mindPackageSettings.f64567e = mindPackageSettings2.f64567e;
                mindPackageSettings.f64568f = mindPackageSettings2.f64568f;
            } else if (!g(mindPackageSettings)) {
                throw new RuntimeException("registerAppIdLPw err.");
            }
        }
        if (com.xinzhu.overmind.client.hook.env.b.f(name) && mindPackageSettings.s()) {
            mindPackageSettings.p(true);
        }
        return mindPackageSettings;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MindPackageSettings d(String name, PackageParser.Package aPackage, int legacyAppId) {
        MindPackageSettings mindPackageSettings = new MindPackageSettings();
        MindPackage mindPackage = new MindPackage(aPackage);
        mindPackageSettings.f64563a = mindPackage;
        mindPackage.f64525l = mindPackageSettings;
        mindPackage.f64532s = i.f(mindPackage, 0, MindPackageUserState.a(), 0);
        synchronized (this.f64645a) {
            MindPackageSettings mindPackageSettings2 = this.f64645a.get(name);
            if (mindPackageSettings2 != null) {
                mindPackageSettings.f64564b = mindPackageSettings2.f64564b;
                mindPackageSettings.f64569g = mindPackageSettings2.f64569g;
            } else if (!h(mindPackageSettings, legacyAppId)) {
                throw new RuntimeException("registerAppIdLPw err.");
            }
        }
        return mindPackageSettings;
    }

    public MindPackageSettings e(int appId) {
        synchronized (this.f64645a) {
            for (MindPackageSettings mindPackageSettings : this.f64645a.values()) {
                if (mindPackageSettings.f64564b == appId) {
                    return mindPackageSettings;
                }
            }
            return null;
        }
    }

    boolean g(MindPackageSettings p3) {
        boolean z3;
        if (p3.f64564b == 0) {
            p3.f64564b = a(p3);
            z3 = true;
        } else {
            z3 = false;
        }
        boolean z4 = p3.f64564b >= 0 ? z3 : false;
        i();
        return z4;
    }

    boolean h(MindPackageSettings p3, int legacyAppId) {
        boolean z3;
        com.xinzhu.overmind.b.a(f64644d, "registerAppIdTransfer " + p3.f64563a.f64526m + " " + legacyAppId);
        if (p3.f64564b == 0) {
            p3.f64564b = b(p3, legacyAppId);
            z3 = true;
        } else {
            z3 = false;
        }
        boolean z4 = p3.f64564b >= 0 ? z3 : false;
        i();
        return z4;
    }

    public void j() {
        synchronized (this.f64645a) {
            File h4 = com.xinzhu.overmind.a.h();
            com.xinzhu.overmind.utils.j.p(h4);
            File[] listFiles = h4.listFiles();
            if (!com.xinzhu.overmind.utils.d.o(listFiles)) {
                for (File file : listFiles) {
                    if (file.isDirectory() && !file.getName().equals("system")) {
                        k(file);
                    }
                }
            }
        }
    }
}
