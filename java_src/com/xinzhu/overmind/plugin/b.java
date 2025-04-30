package com.xinzhu.overmind.plugin;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.f;
import com.xinzhu.overmind.plugin.a;
import com.xinzhu.overmind.server.e;
import com.xinzhu.overmind.server.os.MindShareFileInfo;
import com.xinzhu.overmind.utils.j;
import com.xinzhu.overmind.utils.wrappers.ContentProviderWrapper;
import java.io.File;
import java.util.List;
/* compiled from: MindPluginWrapper.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f64336a = "b";

    /* renamed from: b  reason: collision with root package name */
    static com.xinzhu.overmind.plugin.a f64337b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MindPluginWrapper.java */
    /* loaded from: classes.dex */
    public class a implements IBinder.DeathRecipient {
        a() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            b.f64337b = null;
            String str = b.f64336a;
            com.xinzhu.overmind.b.c(str, "sPluginMonitor disconnect " + b.f64337b);
        }
    }

    public static MindShareFileInfo b(String path) {
        if (e.f64462b) {
            return null;
        }
        try {
            if (i()) {
                return f64337b.checkFile(path);
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static boolean c() {
        try {
            com.xinzhu.overmind.plugin.a aVar = f64337b;
            if (aVar == null || !aVar.asBinder().isBinderAlive()) {
                com.xinzhu.overmind.plugin.a asInterface = a.b.asInterface(ContentProviderWrapper.acquire(f.b(), "init", null, null).getBinder("PluginMonitor"));
                f64337b = asInterface;
                asInterface.asBinder().linkToDeath(new a(), 0);
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void d(String from, String target) {
        if (e.f64462b) {
            return;
        }
        try {
            if (i()) {
                f64337b.copyDir(from, target);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void e(String from, String target) {
        try {
            List<MindShareFileInfo> m4 = m(from);
            if (m4 != null && !m4.isEmpty()) {
                j.p(new File(target));
                for (MindShareFileInfo mindShareFileInfo : m4) {
                    File file = new File(mindShareFileInfo.f64496a);
                    File file2 = new File(target, file.getName());
                    if (mindShareFileInfo.f64498c.booleanValue()) {
                        if (!file.getName().equals("oat")) {
                            e(mindShareFileInfo.f64496a, file2.getAbsolutePath());
                        }
                    } else {
                        g(mindShareFileInfo.f64496a, file2.getAbsolutePath());
                    }
                }
                return;
            }
            com.xinzhu.overmind.b.c(f64336a, "copyDirReverse get empty file list");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void f(String from, String target) {
        if (e.f64462b) {
            return;
        }
        try {
            if (i()) {
                f64337b.copyFile(from, target);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void g(String from, String target) {
        try {
            j.p(new File(target).getParentFile());
            ParcelFileDescriptor n4 = n(from);
            if (n4 != null) {
                ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(n4);
                j.e(autoCloseInputStream, new File(target));
                autoCloseInputStream.close();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void h(String target) {
        if (e.f64462b) {
            return;
        }
        try {
            if (i()) {
                f64337b.deleteFileOrDir(target);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static boolean i() {
        if (Overmind.isPluginPkgInstalled()) {
            int i2 = 3;
            while (i2 > 0) {
                i2--;
                if (c()) {
                    try {
                        f64337b.initWorks();
                        return true;
                    } catch (RemoteException e4) {
                        e4.printStackTrace();
                        return true;
                    }
                }
                o();
            }
            return false;
        }
        return false;
    }

    public static List<ActivityManager.RecentTaskInfo> j(int maxNum, int flags) {
        try {
            if (i()) {
                return f64337b.getRecentTasks(maxNum, flags);
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static List<ActivityManager.RunningAppProcessInfo> k() {
        try {
            if (i()) {
                return f64337b.getRunningAppProcesses();
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static void l(int target) {
        try {
            if (i()) {
                f64337b.killProcess(target);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static List<MindShareFileInfo> m(String target) {
        try {
            if (i()) {
                return f64337b.listFiles(target);
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static ParcelFileDescriptor n(String path) {
        try {
            if (i()) {
                return f64337b.openAsParcelFile(path);
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static void o() {
        Context context = Overmind.getContext();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setPackage(Overmind.getPluginPkg());
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (queryIntentActivities.size() == 0) {
            return;
        }
        Intent intent2 = new Intent(intent);
        intent2.addFlags(65536);
        intent2.addFlags(268435456);
        intent2.setClassName(queryIntentActivities.get(0).activityInfo.packageName, queryIntentActivities.get(0).activityInfo.name);
        com.xinzhu.overmind.b.c(f64336a, "try start plugin");
        context.startActivity(intent2);
    }

    public static void p() {
        if (e.f64462b) {
            return;
        }
        try {
            if (i()) {
                f64337b.syncAllPackages();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void q(String pkgName, int userId) {
        if (e.f64462b) {
            return;
        }
        try {
            if (i()) {
                f64337b.syncPackage(pkgName, userId);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
