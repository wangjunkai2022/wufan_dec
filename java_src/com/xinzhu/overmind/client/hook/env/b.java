package com.xinzhu.overmind.client.hook.env;

import android.content.pm.PackageManager;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.frameworks.h;
import com.xinzhu.overmind.server.user.MindUserInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: GmsEnv.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f64115a = "b";

    /* renamed from: b  reason: collision with root package name */
    private static final ArrayList<String> f64116b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f64117c = "com.google.android.gms";

    /* renamed from: d  reason: collision with root package name */
    public static final String f64118d = "com.google.android.gsf";

    /* renamed from: e  reason: collision with root package name */
    public static final String f64119e = "com.android.vending";

    /* renamed from: f  reason: collision with root package name */
    public static final String f64120f = "com.google.android.gsf.login";

    /* renamed from: g  reason: collision with root package name */
    public static final String f64121g = "com.google.android.play.games";

    /* renamed from: h  reason: collision with root package name */
    private static final ArrayList<String> f64122h;

    static {
        ArrayList<String> arrayList = new ArrayList<>();
        f64116b = arrayList;
        ArrayList<String> arrayList2 = new ArrayList<>();
        f64122h = arrayList2;
        arrayList.add(f64117c);
        arrayList.add(f64118d);
        arrayList.add(f64119e);
        arrayList.add(f64120f);
        arrayList.add(f64121g);
        arrayList2.add(f64117c);
        arrayList2.add(f64118d);
        arrayList2.add(f64119e);
        arrayList2.add(f64120f);
        arrayList2.add(f64121g);
        arrayList2.add("com.google.android.backuptransport");
        arrayList2.add("com.google.android.backup");
        arrayList2.add("com.google.android.configupdater");
        arrayList2.add("com.google.android.syncadapters.contacts");
        arrayList2.add("com.google.android.feedback");
        arrayList2.add("com.google.android.onetimeinitializer");
        arrayList2.add("com.google.android.partnersetup");
        arrayList2.add("com.google.android.setupwizard");
        arrayList2.add("com.google.android.syncadapters.calendar");
    }

    public static boolean a() {
        return Overmind.get().isInstalled(f64117c) && Overmind.get().isInstalled(f64118d) && Overmind.get().isInstalled(f64119e);
    }

    public static boolean b() {
        return Overmind.isPkgInstalledOutside(f64117c) && Overmind.isPkgInstalledOutside(f64118d) && Overmind.isPkgInstalledOutside(f64119e);
    }

    public static void c() {
        if (a()) {
            return;
        }
        d(0);
        for (MindUserInfo mindUserInfo : h.d().f()) {
            d(mindUserInfo.f64670a);
        }
    }

    public static void d(int userId) {
        Iterator<String> it2 = f64116b.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            try {
                if (Overmind.get().isInstalled(next)) {
                    Overmind.get().installPackageAsUser_Exist(next, userId);
                } else {
                    Overmind.get().installPackageAsUser_Storage(new File(Overmind.getPackageManager().getPackageInfo(next, 0).applicationInfo.publicSourceDir), userId);
                }
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
            }
        }
    }

    public static void e() {
        File[] listFiles;
        File externalFilesDir = Overmind.getContext().getExternalFilesDir("GmsApkDir");
        if (!externalFilesDir.exists() || (listFiles = externalFilesDir.listFiles()) == null || listFiles.length == 0) {
            return;
        }
        for (MindUserInfo mindUserInfo : h.d().f()) {
            for (File file : listFiles) {
                Overmind.get().installPackageAsUser_Storage(file, mindUserInfo.f64670a);
            }
        }
    }

    public static boolean f(String pkg) {
        return f64122h.contains(pkg);
    }

    public static void g(boolean runWithPlugin) {
        Iterator<String> it2 = f64116b.iterator();
        while (it2.hasNext()) {
            Overmind.getMindPackageManager().C(it2.next(), runWithPlugin);
        }
    }
}
