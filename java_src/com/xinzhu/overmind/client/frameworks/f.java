package com.xinzhu.overmind.client.frameworks;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.entity.pm.InstallResult;
import com.xinzhu.overmind.entity.pm.InstalledPackage;
import com.xinzhu.overmind.server.pm.MindPackageSettings;
import com.xinzhu.overmind.server.pm.d;
import java.util.Collections;
import java.util.List;
/* compiled from: MindPackageManager.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    public static final String f64064b = "f";

    /* renamed from: c  reason: collision with root package name */
    private static f f64065c = new f();

    /* renamed from: a  reason: collision with root package name */
    private com.xinzhu.overmind.server.pm.d f64066a;

    private void a(Throwable e4) {
        e4.printStackTrace();
    }

    public static f d() {
        return f64065c;
    }

    public ResolveInfo A(Intent intent, String resolvedType, int flags, int userId) {
        try {
            return p().resolveIntent(intent, resolvedType, flags, userId);
        } catch (RemoteException e4) {
            a(e4);
            return null;
        }
    }

    public ResolveInfo B(Intent intent, int flags, String resolvedType, int userId) {
        try {
            return p().resolveService(intent, flags, resolvedType, userId);
        } catch (RemoteException e4) {
            a(e4);
            return null;
        }
    }

    public void C(String pkgName, boolean runWithPlugin) {
        try {
            p().setMindPackageRunWithPlugin(pkgName, runWithPlugin);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public void D(String packageName) {
        try {
            p().uninstallPackage(packageName);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public void E(String packageName, int userId) {
        try {
            p().uninstallPackageAsUser(packageName, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public void b() {
        try {
            p().doTransferInstalls();
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public void c() {
        try {
            p().doTransferInstallsOnlyForMainPackage();
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public ActivityInfo e(ComponentName component, int flags, int userId) {
        try {
            return p().getActivityInfo(component, flags, userId);
        } catch (RemoteException e4) {
            a(e4);
            return null;
        }
    }

    public ApplicationInfo f(String packageName, int flags, int userId) {
        try {
            return p().getApplicationInfo(packageName, flags, userId);
        } catch (RemoteException e4) {
            a(e4);
            return null;
        }
    }

    public List<ApplicationInfo> g(int flags, int userId) {
        try {
            return p().getInstalledApplications(flags, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return Collections.emptyList();
        }
    }

    public List<PackageInfo> h(int flags, int userId) {
        try {
            return p().getInstalledPackages(flags, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return Collections.emptyList();
        }
    }

    public List<InstalledPackage> i(int userId) {
        try {
            return p().getInstalledPackagesAsUser(userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return Collections.emptyList();
        }
    }

    public Intent j(String packageName, int userId) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.INFO");
        intent.setPackage(packageName);
        List<ResolveInfo> w3 = w(intent, 0, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), userId);
        if (w3 == null || w3.size() <= 0) {
            intent.removeCategory("android.intent.category.INFO");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setPackage(packageName);
            w3 = w(intent, 0, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), userId);
        }
        if (w3 == null || w3.size() <= 0) {
            intent.removeCategory("android.intent.category.LAUNCHER");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setPackage(packageName);
            w3 = w(intent, 0, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), userId);
        }
        if (w3 == null || w3.size() <= 0) {
            intent.removeCategory("android.intent.category.DEFAULT");
            intent.addCategory("android.intent.category.default");
            intent.setPackage(packageName);
            w3 = w(intent, 0, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), userId);
        }
        if (w3 == null || w3.size() <= 0) {
            intent.removeCategory("android.intent.category.default");
            intent.setPackage(packageName);
            intent.setAction("android.intent.action.MAIN");
            w3 = w(intent, 0, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), userId);
        }
        if (w3 == null || w3.size() <= 0) {
            return null;
        }
        String str = f64064b;
        com.xinzhu.overmind.b.a(str, "getLaunchIntentForPackage get " + w3.get(0).activityInfo.name);
        Intent intent2 = new Intent(intent);
        intent2.setFlags(268435456);
        intent2.setClassName(w3.get(0).activityInfo.packageName, w3.get(0).activityInfo.name);
        return intent2;
    }

    public MindPackageSettings k(String pkgName) {
        try {
            return p().getMindPackageSettings(pkgName);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public PackageInfo l(String packageName, int flags, int userId) {
        try {
            return p().getPackageInfo(packageName, flags, userId);
        } catch (RemoteException e4) {
            a(e4);
            return null;
        }
    }

    public String[] m(int uid) {
        try {
            return p().getPackagesForUid(uid);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public ProviderInfo n(ComponentName component, int flags, int userId) {
        try {
            return p().getProviderInfo(component, flags, userId);
        } catch (RemoteException e4) {
            a(e4);
            return null;
        }
    }

    public ActivityInfo o(ComponentName componentName, int flags, int userId) {
        try {
            return p().getReceiverInfo(componentName, flags, userId);
        } catch (RemoteException e4) {
            a(e4);
            return null;
        }
    }

    public com.xinzhu.overmind.server.pm.d p() {
        com.xinzhu.overmind.server.pm.d dVar = this.f64066a;
        if (dVar != null && dVar.asBinder().isBinderAlive()) {
            return this.f64066a;
        }
        this.f64066a = d.b.asInterface(Overmind.get().getService(com.xinzhu.overmind.server.g.f64479f));
        return p();
    }

    public ServiceInfo q(ComponentName component, int flags, int userId) {
        try {
            return p().getServiceInfo(component, flags, userId);
        } catch (RemoteException e4) {
            a(e4);
            return null;
        }
    }

    public InstallResult r(String packageName, int userId) {
        try {
            return p().installPackageAsExist(packageName, userId);
        } catch (RemoteException e4) {
            a(e4);
            return null;
        }
    }

    public InstallResult s(String file, InstallOption option, int userId) {
        try {
            return p().installPackageAsUser(file, option, userId);
        } catch (RemoteException e4) {
            a(e4);
            return null;
        }
    }

    public boolean t(String packageName, int userId) {
        try {
            return p().isInstalled(packageName, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public List<ResolveInfo> u(Intent intent, int flags, String resolvedType, int userId) {
        try {
            return p().queryBroadcastReceivers(intent, flags, resolvedType, userId);
        } catch (RemoteException e4) {
            a(e4);
            return null;
        }
    }

    public List<ProviderInfo> v(String processName, int uid, int flags, int userId) {
        try {
            return p().queryContentProviders(processName, uid, flags, userId);
        } catch (RemoteException e4) {
            a(e4);
            return null;
        }
    }

    public List<ResolveInfo> w(Intent intent, int flags, String resolvedType, int userId) {
        try {
            return p().queryIntentActivities(intent, flags, resolvedType, userId);
        } catch (RemoteException e4) {
            a(e4);
            return null;
        }
    }

    public List<ResolveInfo> x(Intent intent, int flags, String resolvedType, int userId) {
        try {
            return p().queryIntentServices(intent, flags, resolvedType, userId);
        } catch (RemoteException e4) {
            a(e4);
            return null;
        }
    }

    public ResolveInfo y(Intent intent, int flags, String resolvedType, int userId) {
        try {
            return p().resolveActivity(intent, flags, resolvedType, userId);
        } catch (RemoteException e4) {
            a(e4);
            return null;
        }
    }

    public ProviderInfo z(String authority, int flags, int userId) {
        try {
            return p().resolveContentProvider(authority, flags, userId);
        } catch (RemoteException e4) {
            a(e4);
            return null;
        }
    }
}
