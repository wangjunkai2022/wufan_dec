package com.xinzhu.overmind.server.pm;

import android.annotation.SuppressLint;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ConfigurationInfo;
import android.content.pm.FeatureInfo;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.SharedLibraryInfo;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Parcel;
import android.util.ArrayMap;
import android.util.ArraySet;
import androidx.annotation.RequiresApi;
import com.xinzhu.haunted.android.content.pm.i;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.server.f;
import com.xinzhu.overmind.server.pm.MindPackage;
import com.xinzhu.overmind.server.user.MindUserHandle;
import java.io.File;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;
/* compiled from: PackageManagerCompat.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static final String f64613a = "i";

    private static boolean a(int flags, MindPackageUserState state, ApplicationInfo appInfo) {
        return (com.xinzhu.overmind.client.hook.env.a.c(appInfo.packageName) || !state.f64570a || state.f64572c) ? false : true;
    }

    @SuppressLint({"NewApi"})
    public static ApplicationInfo b(ApplicationInfo origin) {
        MindPackageSettings k4;
        if (origin == null) {
            return null;
        }
        if (Overmind.get().isServerProcess()) {
            k4 = h.get().getMindPackageSettings(origin.packageName);
        } else {
            k4 = com.xinzhu.overmind.client.frameworks.f.d().k(origin.packageName);
        }
        if (k4 == null) {
            return origin;
        }
        InstallOption installOption = k4.f64565c;
        boolean z3 = true;
        z3 = (installOption == null || !installOption.c(1)) ? false : false;
        boolean isVirtualProcess = Overmind.get().isVirtualProcess();
        if (k4.k() && !isVirtualProcess && !z3) {
            com.xinzhu.overmind.b.l(f64613a, "transformApplicationInfo " + origin.packageName);
            int k5 = MindUserHandle.k(origin.uid);
            ApplicationInfo applicationInfo = new ApplicationInfo(origin);
            applicationInfo.dataDir = com.xinzhu.overmind.a.r(applicationInfo.packageName, k5).getAbsolutePath();
            applicationInfo.nativeLibraryDir = new File(com.xinzhu.overmind.a.f(applicationInfo.packageName), com.xinzhu.overmind.a.H(k4.d())).getAbsolutePath();
            applicationInfo.publicSourceDir = com.xinzhu.overmind.a.j(applicationInfo.packageName).getAbsolutePath();
            applicationInfo.sourceDir = com.xinzhu.overmind.a.j(applicationInfo.packageName).getAbsolutePath();
            if (!com.xinzhu.overmind.utils.d.o(applicationInfo.splitNames)) {
                ArrayList arrayList = new ArrayList();
                for (String str : applicationInfo.splitNames) {
                    arrayList.add(com.xinzhu.overmind.a.K(applicationInfo.packageName, str).getAbsolutePath());
                }
                applicationInfo.splitPublicSourceDirs = (String[]) arrayList.toArray(new String[0]);
                applicationInfo.splitSourceDirs = (String[]) arrayList.toArray(new String[0]);
            }
            if (com.xinzhu.overmind.utils.e.d()) {
                applicationInfo.deviceProtectedDataDir = com.xinzhu.overmind.a.x(applicationInfo.packageName, k5).getAbsolutePath();
                try {
                    com.xinzhu.haunted.android.content.pm.b bVar = new com.xinzhu.haunted.android.content.pm.b(applicationInfo);
                    if (bVar.d()) {
                        bVar.H(applicationInfo.deviceProtectedDataDir);
                    }
                    if (bVar.b()) {
                        bVar.F(applicationInfo.dataDir);
                    }
                    if (bVar.e()) {
                        bVar.I(applicationInfo.deviceProtectedDataDir);
                    }
                    if (bVar.c()) {
                        bVar.G(applicationInfo.dataDir);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            return applicationInfo;
        } else if (isVirtualProcess && Overmind.get().isUseGlobalFakePath()) {
            ApplicationInfo applicationInfo2 = new ApplicationInfo(origin);
            applicationInfo2.dataDir = com.xinzhu.overmind.client.hook.f.d().j(applicationInfo2.dataDir);
            applicationInfo2.nativeLibraryDir = com.xinzhu.overmind.client.hook.f.d().j(applicationInfo2.nativeLibraryDir);
            applicationInfo2.publicSourceDir = com.xinzhu.overmind.client.hook.f.d().j(applicationInfo2.publicSourceDir);
            applicationInfo2.sourceDir = com.xinzhu.overmind.client.hook.f.d().j(applicationInfo2.sourceDir);
            if (com.xinzhu.overmind.utils.e.d()) {
                applicationInfo2.deviceProtectedDataDir = com.xinzhu.overmind.client.hook.f.d().j(applicationInfo2.deviceProtectedDataDir);
                try {
                    com.xinzhu.haunted.android.content.pm.b bVar2 = new com.xinzhu.haunted.android.content.pm.b(applicationInfo2);
                    if (bVar2.d()) {
                        bVar2.H(applicationInfo2.deviceProtectedDataDir);
                    }
                    if (bVar2.b()) {
                        bVar2.F(applicationInfo2.dataDir);
                    }
                    if (bVar2.e()) {
                        bVar2.I(applicationInfo2.deviceProtectedDataDir);
                    }
                    if (bVar2.c()) {
                        bVar2.G(applicationInfo2.dataDir);
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
            return applicationInfo2;
        } else {
            return origin;
        }
    }

    @SuppressLint({"NewApi"})
    private static void c(ApplicationInfo info) {
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        com.xinzhu.haunted.android.content.pm.b bVar = new com.xinzhu.haunted.android.content.pm.b(info);
        if (com.xinzhu.overmind.utils.e.g() && info.targetSdkVersion < 30) {
            f.b m4 = m("android.test.base");
            if (m4 != null) {
                hashSet.add(m4.f64472b);
                if (com.xinzhu.overmind.utils.e.h()) {
                    com.xinzhu.haunted.android.content.pm.k d4 = com.xinzhu.haunted.android.content.pm.k.d(m4.f64472b, null, null, m4.f64471a, 0L, 0, null, null, null, false);
                    Objects.requireNonNull(d4);
                    arrayList.add((SharedLibraryInfo) d4.f63150a);
                }
            } else {
                com.xinzhu.overmind.b.c(f64613a, "sharedLibraryFiles skip library android.test.base");
            }
        }
        if (com.xinzhu.overmind.utils.e.h()) {
            f.b m5 = m("org.apache.http.legacy");
            if (m5 != null) {
                if (com.xinzhu.overmind.utils.e.h()) {
                    com.xinzhu.haunted.android.content.pm.k d5 = com.xinzhu.haunted.android.content.pm.k.d(m5.f64472b, null, null, m5.f64471a, 0L, 0, null, null, null, false);
                    Objects.requireNonNull(d5);
                    arrayList.add((SharedLibraryInfo) d5.f63150a);
                }
            } else {
                com.xinzhu.overmind.b.c(f64613a, "sharedLibraryFiles skip library org.apache.http.legacy");
            }
        }
        bVar.R(arrayList);
        if (com.xinzhu.overmind.utils.e.f()) {
            if (!com.xinzhu.overmind.utils.j.m("/system/framework/org.apache.http.legacy.jar")) {
                hashSet.add("/system/framework/org.apache.http.legacy.boot.jar");
            } else {
                hashSet.add("/system/framework/org.apache.http.legacy.jar");
            }
        } else {
            hashSet.add("/system/framework/org.apache.http.legacy.boot.jar");
        }
        hashSet.add(com.xinzhu.overmind.a.f63946h.getAbsolutePath());
        info.sharedLibraryFiles = (String[]) hashSet.toArray(new String[0]);
        if (com.xinzhu.overmind.client.hook.env.b.f(info.packageName)) {
            info.flags |= 9;
        }
    }

    public static PackageInfo d(PackageInfo pi) {
        ProviderInfo[] providerInfoArr;
        ServiceInfo[] serviceInfoArr;
        ActivityInfo[] activityInfoArr;
        ActivityInfo[] activityInfoArr2;
        if (pi == null) {
            return null;
        }
        pi.applicationInfo = b(pi.applicationInfo);
        if (!com.xinzhu.overmind.utils.d.o(pi.activities)) {
            for (ActivityInfo activityInfo : pi.activities) {
                activityInfo.applicationInfo = b(activityInfo.applicationInfo);
            }
        }
        if (!com.xinzhu.overmind.utils.d.o(pi.receivers)) {
            for (ActivityInfo activityInfo2 : pi.receivers) {
                activityInfo2.applicationInfo = b(activityInfo2.applicationInfo);
            }
        }
        if (!com.xinzhu.overmind.utils.d.o(pi.services)) {
            for (ServiceInfo serviceInfo : pi.services) {
                serviceInfo.applicationInfo = b(serviceInfo.applicationInfo);
            }
        }
        if (!com.xinzhu.overmind.utils.d.o(pi.providers)) {
            for (ProviderInfo providerInfo : pi.providers) {
                providerInfo.applicationInfo = b(providerInfo.applicationInfo);
            }
        }
        return pi;
    }

    public static ActivityInfo e(MindPackage.b a4, int flags, MindPackageUserState state, int userId) {
        if (a(flags, state, a4.f64551f.applicationInfo)) {
            ActivityInfo activityInfo = new ActivityInfo(a4.f64551f);
            activityInfo.metaData = a4.f64555d;
            activityInfo.processName = h.fixProcessName(activityInfo.packageName, activityInfo.processName);
            activityInfo.applicationInfo = f(a4.f64552a, flags, state, userId);
            activityInfo.enabled = h.get().isComponentEnabled(activityInfo, userId);
            return activityInfo;
        }
        return null;
    }

    @SuppressLint({"NewApi"})
    public static ApplicationInfo f(MindPackage p3, int flags, MindPackageUserState state, int userId) {
        String absolutePath;
        String[] strArr;
        File K;
        if (a(flags, state, p3.f64532s)) {
            MindPackageSettings mindPackageSettings = p3.f64525l;
            boolean k4 = mindPackageSettings.k();
            try {
                ApplicationInfo applicationInfo = Overmind.getContext().getPackageManager().getApplicationInfo(Overmind.getHostPkg(), flags);
                InstallOption installOption = p3.f64525l.f64565c;
                boolean z3 = true;
                z3 = (installOption == null || !installOption.c(1)) ? false : false;
                if (z3) {
                    absolutePath = p3.f64535v;
                } else if (k4) {
                    absolutePath = com.xinzhu.overmind.a.k(p3.f64526m).getAbsolutePath();
                } else {
                    absolutePath = com.xinzhu.overmind.a.j(p3.f64526m).getAbsolutePath();
                }
                if (p3.f64532s == null) {
                    p3.f64532s = Overmind.getContext().getPackageManager().getPackageArchiveInfo(absolutePath, 0).applicationInfo;
                }
                ApplicationInfo applicationInfo2 = new ApplicationInfo(p3.f64532s);
                if ((flags & 128) != 0) {
                    applicationInfo2.metaData = p3.f64524k;
                }
                if (k4) {
                    applicationInfo2.dataDir = com.xinzhu.overmind.a.s(applicationInfo2.packageName, userId).getAbsolutePath();
                    applicationInfo2.nativeLibraryDir = new File(com.xinzhu.overmind.a.g(applicationInfo2.packageName), com.xinzhu.overmind.a.H(mindPackageSettings.d())).getAbsolutePath();
                } else {
                    applicationInfo2.dataDir = com.xinzhu.overmind.a.r(applicationInfo2.packageName, userId).getAbsolutePath();
                    applicationInfo2.nativeLibraryDir = new File(com.xinzhu.overmind.a.f(applicationInfo2.packageName), com.xinzhu.overmind.a.H(mindPackageSettings.d())).getAbsolutePath();
                }
                applicationInfo2.processName = h.fixProcessName(p3.f64526m, applicationInfo2.packageName);
                applicationInfo2.publicSourceDir = absolutePath;
                applicationInfo2.sourceDir = absolutePath;
                if (!z3 && !com.xinzhu.overmind.utils.d.o(p3.f64534u)) {
                    applicationInfo2.splitNames = p3.f64534u;
                    ArrayList arrayList = new ArrayList();
                    for (String str : p3.f64534u) {
                        if (mindPackageSettings.k()) {
                            K = com.xinzhu.overmind.a.L(p3.f64526m, str);
                        } else {
                            K = com.xinzhu.overmind.a.K(p3.f64526m, str);
                        }
                        arrayList.add(K.getAbsolutePath());
                    }
                    applicationInfo2.splitPublicSourceDirs = (String[]) arrayList.toArray(new String[0]);
                    applicationInfo2.splitSourceDirs = (String[]) arrayList.toArray(new String[0]);
                }
                applicationInfo2.uid = MindUserHandle.h(userId, p3.f64525l.f64564b);
                com.xinzhu.haunted.android.content.pm.b bVar = new com.xinzhu.haunted.android.content.pm.b(applicationInfo2);
                com.xinzhu.haunted.android.content.pm.b bVar2 = new com.xinzhu.haunted.android.content.pm.b(applicationInfo);
                if (com.xinzhu.overmind.utils.e.a()) {
                    bVar.L(mindPackageSettings.d());
                    bVar.N(bVar2.y());
                    bVar.O(bVar2.z());
                }
                if (com.xinzhu.overmind.utils.e.d()) {
                    if (k4) {
                        applicationInfo2.deviceProtectedDataDir = com.xinzhu.overmind.a.y(p3.f64526m, userId).getAbsolutePath();
                    } else {
                        applicationInfo2.deviceProtectedDataDir = com.xinzhu.overmind.a.x(p3.f64526m, userId).getAbsolutePath();
                    }
                    try {
                        if (bVar.d()) {
                            bVar.H(applicationInfo2.deviceProtectedDataDir);
                        }
                        if (bVar.b()) {
                            bVar.F(applicationInfo2.dataDir);
                        }
                        if (bVar.e()) {
                            bVar.I(applicationInfo2.deviceProtectedDataDir);
                        }
                        if (bVar.c()) {
                            bVar.G(applicationInfo2.dataDir);
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                c(applicationInfo2);
                return applicationInfo2;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static final InstrumentationInfo g(MindPackage.d i2, int flags) {
        if (i2 == null) {
            return null;
        }
        if ((flags & 128) == 0) {
            return i2.f64557f;
        }
        InstrumentationInfo instrumentationInfo = new InstrumentationInfo(i2.f64557f);
        instrumentationInfo.metaData = i2.f64555d;
        return instrumentationInfo;
    }

    @SuppressLint({"NewApi"})
    public static PackageInfo h(MindPackage p3, int flags, long firstInstallTime, long lastUpdateTime, MindPackageUserState state, int userId) {
        if (a(flags, state, p3.f64532s)) {
            PackageInfo packageInfo = new PackageInfo();
            Parcel obtain = Parcel.obtain();
            packageInfo.writeToParcel(obtain, 0);
            PackageInfo packageInfo2 = (PackageInfo) PackageInfo.CREATOR.createFromParcel(obtain);
            obtain.recycle();
            packageInfo2.packageName = p3.f64526m;
            packageInfo2.versionCode = p3.f64531r;
            packageInfo2.versionName = p3.f64533t;
            packageInfo2.sharedUserId = p3.f64528o;
            packageInfo2.sharedUserLabel = p3.f64536w;
            packageInfo2.applicationInfo = f(p3, flags, state, userId);
            packageInfo2.firstInstallTime = firstInstallTime;
            packageInfo2.lastUpdateTime = lastUpdateTime;
            if (!p3.f64521h.isEmpty()) {
                String[] strArr = new String[p3.f64521h.size()];
                p3.f64521h.toArray(strArr);
                packageInfo2.requestedPermissions = strArr;
            }
            if ((flags & 256) != 0) {
                packageInfo2.gids = new int[0];
            }
            if ((flags & 16384) != 0) {
                ArrayList<ConfigurationInfo> arrayList = p3.f64537x;
                int size = arrayList != null ? arrayList.size() : 0;
                if (size > 0) {
                    ConfigurationInfo[] configurationInfoArr = new ConfigurationInfo[size];
                    packageInfo2.configPreferences = configurationInfoArr;
                    p3.f64537x.toArray(configurationInfoArr);
                }
                ArrayList<FeatureInfo> arrayList2 = p3.f64538y;
                int size2 = arrayList2 != null ? arrayList2.size() : 0;
                if (size2 > 0) {
                    FeatureInfo[] featureInfoArr = new FeatureInfo[size2];
                    packageInfo2.reqFeatures = featureInfoArr;
                    p3.f64538y.toArray(featureInfoArr);
                }
            }
            if ((flags & 1) != 0) {
                packageInfo2.activities = null;
                int size3 = p3.f64514a.size();
                if (size3 > 0) {
                    ActivityInfo[] activityInfoArr = new ActivityInfo[size3];
                    int i2 = 0;
                    for (int i4 = 0; i4 < size3; i4++) {
                        MindPackage.b bVar = p3.f64514a.get(i4);
                        if (h.get().isEnabledAndMatchLPr(bVar.f64551f, flags, userId)) {
                            activityInfoArr[i2] = e(bVar, flags, state, userId);
                            i2++;
                        }
                    }
                    packageInfo2.activities = (ActivityInfo[]) com.xinzhu.overmind.utils.d.p(activityInfoArr, i2);
                }
            }
            if ((flags & 2) != 0) {
                packageInfo2.receivers = null;
                int size4 = p3.f64515b.size();
                if (size4 > 0) {
                    ActivityInfo[] activityInfoArr2 = new ActivityInfo[size4];
                    int i5 = 0;
                    for (int i6 = 0; i6 < size4; i6++) {
                        MindPackage.b bVar2 = p3.f64515b.get(i6);
                        if (h.get().isEnabledAndMatchLPr(bVar2.f64551f, flags, userId)) {
                            activityInfoArr2[i5] = e(bVar2, flags, state, userId);
                            i5++;
                        }
                    }
                    packageInfo2.receivers = (ActivityInfo[]) com.xinzhu.overmind.utils.d.p(activityInfoArr2, i5);
                }
            }
            if ((flags & 4) != 0) {
                packageInfo2.services = null;
                int size5 = p3.f64517d.size();
                if (size5 > 0) {
                    ServiceInfo[] serviceInfoArr = new ServiceInfo[size5];
                    int i7 = 0;
                    for (int i8 = 0; i8 < size5; i8++) {
                        MindPackage.h hVar = p3.f64517d.get(i8);
                        if (h.get().isEnabledAndMatchLPr(hVar.f64561f, flags, userId)) {
                            serviceInfoArr[i7] = l(hVar, flags, state, userId);
                            i7++;
                        }
                    }
                    packageInfo2.services = (ServiceInfo[]) com.xinzhu.overmind.utils.d.p(serviceInfoArr, i7);
                }
            }
            if ((flags & 8) != 0) {
                packageInfo2.providers = null;
                int size6 = p3.f64516c.size();
                if (size6 > 0) {
                    ProviderInfo[] providerInfoArr = new ProviderInfo[size6];
                    int i9 = 0;
                    for (int i10 = 0; i10 < size6; i10++) {
                        MindPackage.g gVar = p3.f64516c.get(i10);
                        ProviderInfo k4 = k(gVar, flags, state, userId);
                        if (k4 != null && h.get().isEnabledAndMatchLPr(gVar.f64560f, flags, userId)) {
                            providerInfoArr[i9] = k4;
                            i9++;
                        }
                    }
                    packageInfo2.providers = (ProviderInfo[]) com.xinzhu.overmind.utils.d.p(providerInfoArr, i9);
                }
            }
            if ((flags & 16) != 0) {
                packageInfo2.instrumentation = null;
                int size7 = p3.f64518e.size();
                if (size7 > 0) {
                    packageInfo2.instrumentation = new InstrumentationInfo[size7];
                    for (int i11 = 0; i11 < size7; i11++) {
                        packageInfo2.instrumentation[i11] = g(p3.f64518e.get(i11), flags);
                    }
                }
            }
            if ((flags & 4096) != 0) {
                packageInfo2.permissions = null;
                int size8 = p3.f64519f.size();
                if (size8 > 0) {
                    packageInfo2.permissions = new PermissionInfo[size8];
                    for (int i12 = 0; i12 < size8; i12++) {
                        packageInfo2.permissions[i12] = j(p3.f64519f.get(i12), flags);
                    }
                }
                packageInfo2.requestedPermissions = null;
                int size9 = p3.f64521h.size();
                if (size9 > 0) {
                    packageInfo2.requestedPermissions = new String[size9];
                    packageInfo2.requestedPermissionsFlags = new int[size9];
                    for (int i13 = 0; i13 < size9; i13++) {
                        packageInfo2.requestedPermissions[i13] = p3.f64521h.get(i13);
                    }
                }
            }
            if ((flags & 64) != 0) {
                if (com.xinzhu.overmind.utils.e.t()) {
                    i.a aVar = new i.a(p3.f64523j);
                    if (aVar.u()) {
                        packageInfo2.signatures = r10;
                        Signature[] p4 = aVar.p();
                        Objects.requireNonNull(p4);
                        Signature[] signatureArr = {p4[0]};
                    } else if (aVar.v()) {
                        packageInfo2.signatures = (Signature[]) p3.f64523j.signatures.clone();
                    }
                } else {
                    packageInfo2.signatures = p3.f64522i;
                }
            }
            if (com.xinzhu.overmind.utils.e.t() && (flags & 134217728) != 0 && p3.f64523j != null) {
                if (com.xinzhu.overmind.utils.e.j()) {
                    i.a aVar2 = new i.a(p3.f64523j);
                    com.xinzhu.haunted.android.content.pm.l l4 = com.xinzhu.haunted.android.content.pm.l.l(aVar2.t() != null ? (Signature[]) aVar2.t().clone() : null, aVar2.s(), new ArraySet((ArraySet) aVar2.r()), aVar2.p() != null ? (Signature[]) aVar2.p().clone() : null);
                    Objects.requireNonNull(l4);
                    Object obj = l4.f63171a;
                    try {
                        Constructor declaredConstructor = SigningInfo.class.getDeclaredConstructor(com.xinzhu.haunted.android.content.pm.l.f63152c);
                        declaredConstructor.setAccessible(true);
                        packageInfo2.signingInfo = (SigningInfo) declaredConstructor.newInstance(obj);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                } else {
                    com.xinzhu.haunted.android.content.pm.m e4 = com.xinzhu.haunted.android.content.pm.m.e(p3.f64523j);
                    Objects.requireNonNull(e4);
                    packageInfo2.signingInfo = (SigningInfo) e4.f63180a;
                }
            }
            return packageInfo2;
        }
        return null;
    }

    public static PackageInfo i(MindPackageSettings ps, int flags, MindPackageUserState state, int userId) {
        MindPackage mindPackage;
        if (ps == null || (mindPackage = ps.f64563a) == null) {
            return null;
        }
        try {
            return h(mindPackage, flags, 0L, 0L, state, userId);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static final PermissionInfo j(MindPackage.e p3, int flags) {
        if (p3 == null) {
            return null;
        }
        if ((flags & 128) == 0) {
            return p3.f64558f;
        }
        PermissionInfo permissionInfo = new PermissionInfo(p3.f64558f);
        permissionInfo.metaData = p3.f64555d;
        return permissionInfo;
    }

    public static final ProviderInfo k(MindPackage.g p3, int flags, MindPackageUserState state, int userId) {
        if (a(flags, state, p3.f64560f.applicationInfo)) {
            ProviderInfo providerInfo = new ProviderInfo(p3.f64560f);
            if (providerInfo.authority == null) {
                return null;
            }
            providerInfo.metaData = p3.f64555d;
            providerInfo.processName = h.fixProcessName(providerInfo.packageName, providerInfo.processName);
            if ((flags & 2048) == 0) {
                providerInfo.uriPermissionPatterns = null;
            }
            providerInfo.applicationInfo = f(p3.f64552a, flags, state, userId);
            providerInfo.enabled = h.get().isComponentEnabled(providerInfo, userId);
            return providerInfo;
        }
        return null;
    }

    public static final ServiceInfo l(MindPackage.h s3, int flags, MindPackageUserState state, int userId) {
        if (a(flags, state, s3.f64561f.applicationInfo)) {
            ServiceInfo serviceInfo = new ServiceInfo(s3.f64561f);
            serviceInfo.metaData = s3.f64555d;
            serviceInfo.processName = h.fixProcessName(serviceInfo.packageName, serviceInfo.processName);
            serviceInfo.applicationInfo = f(s3.f64552a, flags, state, userId);
            serviceInfo.enabled = h.get().isComponentEnabled(serviceInfo, userId);
            return serviceInfo;
        }
        return null;
    }

    @RequiresApi(api = 26)
    @SuppressLint({"BlockedPrivateApi", "PrivateApi"})
    private static f.b m(String name) {
        try {
            ArrayMap<String, f.b> b4 = com.xinzhu.overmind.server.f.a().b();
            if (b4 == null) {
                return null;
            }
            return b4.get(name);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
