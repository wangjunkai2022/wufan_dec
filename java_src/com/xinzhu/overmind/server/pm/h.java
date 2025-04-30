package com.xinzhu.overmind.server.pm;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageParser;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Binder;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.AtomicFile;
import androidx.core.util.ObjectsCompat;
import com.join.mgps.receiver.BootReceiver_;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.entity.pm.InstallResult;
import com.xinzhu.overmind.entity.pm.InstalledPackage;
import com.xinzhu.overmind.os.BinderHelper;
import com.xinzhu.overmind.server.pm.MindPackage;
import com.xinzhu.overmind.server.pm.d;
import com.xinzhu.overmind.server.user.MindUserHandle;
import com.xinzhu.overmind.utils.u;
import com.xinzhu.overmind.utils.wrappers.ObjectsWrapper;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* compiled from: MindPackageManagerService.java */
/* loaded from: classes.dex */
public class h extends d.b implements com.xinzhu.overmind.server.c {
    public static final String TAG = h.class.getSimpleName();
    public static h sService = new h();
    private static com.xinzhu.overmind.server.user.c sUserManager = com.xinzhu.overmind.server.user.c.get();
    final b mComponentEnabledSettings;
    private com.xinzhu.overmind.server.pm.a mComponentResolver;
    final Object mInstallLock;
    private BroadcastReceiver mPackageChangedHandler;
    private List<j> mPackageMonitors;
    final Map<String, MindPackageSettings> mPackages;
    private final n mSettings;

    /* compiled from: MindPackageManagerService.java */
    /* loaded from: classes3.dex */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (TextUtils.isEmpty(action)) {
                return;
            }
            if (BootReceiver_.f51451a.equals(action) || BootReceiver_.f51452b.equals(action)) {
                h.this.mSettings.j();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MindPackageManagerService.java */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final HashMap<Integer, HashMap<ComponentName, Integer>> f64612a = new HashMap<>();

        public b() {
            c();
        }

        public void a(int userId) {
            synchronized (this.f64612a) {
                if (this.f64612a.containsKey(Integer.valueOf(userId))) {
                    this.f64612a.remove(Integer.valueOf(userId));
                }
                d();
            }
        }

        public int b(ComponentName componentName, int userId) {
            synchronized (this.f64612a) {
                if (this.f64612a.containsKey(Integer.valueOf(userId))) {
                    HashMap<ComponentName, Integer> hashMap = this.f64612a.get(Integer.valueOf(userId));
                    if (hashMap.containsKey(componentName)) {
                        return hashMap.get(componentName).intValue();
                    }
                }
                return 0;
            }
        }

        public void c() {
            Parcel obtain = Parcel.obtain();
            try {
                byte[] v3 = com.xinzhu.overmind.utils.j.v(com.xinzhu.overmind.a.z());
                obtain.unmarshall(v3, 0, v3.length);
                obtain.setDataPosition(0);
                HashMap readHashMap = obtain.readHashMap(HashMap.class.getClassLoader());
                synchronized (this.f64612a) {
                    this.f64612a.clear();
                    this.f64612a.putAll(readHashMap);
                }
            } catch (Exception unused) {
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
            obtain.recycle();
        }

        public void d() {
            Parcel obtain = Parcel.obtain();
            AtomicFile atomicFile = new AtomicFile(com.xinzhu.overmind.a.z());
            FileOutputStream fileOutputStream = null;
            try {
                try {
                    obtain.writeMap(this.f64612a);
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

        public void e(ComponentName componentName, int newState, int flags, int userId) {
            HashMap<ComponentName, Integer> hashMap;
            synchronized (this.f64612a) {
                if (this.f64612a.containsKey(Integer.valueOf(userId))) {
                    hashMap = this.f64612a.get(Integer.valueOf(userId));
                } else {
                    hashMap = new HashMap<>();
                }
                hashMap.put(componentName, Integer.valueOf(newState));
                this.f64612a.put(Integer.valueOf(userId), hashMap);
                d();
            }
        }
    }

    public h() {
        n nVar = new n();
        this.mSettings = nVar;
        this.mPackages = nVar.f64645a;
        this.mInstallLock = new Object();
        this.mPackageMonitors = new ArrayList();
        this.mComponentEnabledSettings = new b();
        this.mPackageChangedHandler = new a();
        this.mComponentResolver = new com.xinzhu.overmind.server.pm.a();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(BootReceiver_.f51451a);
        intentFilter.addAction(BootReceiver_.f51452b);
        intentFilter.addDataScheme("package");
        Overmind.getContext().registerReceiver(this.mPackageChangedHandler, intentFilter);
    }

    private ResolveInfo chooseBestActivity(Intent intent, String resolvedType, int flags, List<ResolveInfo> query) {
        if (query != null) {
            int size = query.size();
            if (size == 1) {
                return query.get(0);
            }
            if (size > 1) {
                ResolveInfo resolveInfo = query.get(0);
                ResolveInfo resolveInfo2 = query.get(1);
                if (resolveInfo.priority == resolveInfo2.priority && resolveInfo.preferredOrder == resolveInfo2.preferredOrder && resolveInfo.isDefault == resolveInfo2.isDefault) {
                    return query.get(0);
                }
                return query.get(0);
            }
            return null;
        }
        return null;
    }

    static int compareSignatures(Signature[] s12, Signature[] s22) {
        if (s12 == null) {
            return s22 == null ? 1 : -1;
        } else if (s22 == null) {
            return -2;
        } else {
            if (s12.length != s22.length) {
                return -3;
            }
            if (s12.length == 1) {
                return s12[0].equals(s22[0]) ? 0 : -3;
            }
            HashSet hashSet = new HashSet();
            for (Signature signature : s12) {
                hashSet.add(signature);
            }
            HashSet hashSet2 = new HashSet();
            for (Signature signature2 : s22) {
                hashSet2.add(signature2);
            }
            return hashSet.equals(hashSet2) ? 0 : -3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String fixProcessName(String defProcessName, String processName) {
        return processName == null ? defProcessName : processName;
    }

    public static h get() {
        return sService;
    }

    private ActivityInfo getActivity(ComponentName component, int flags, int userId) {
        int updateFlags = updateFlags(flags, userId);
        synchronized (this.mPackages) {
            MindPackage.b activity = this.mComponentResolver.getActivity(component);
            if (activity != null) {
                MindPackageSettings mindPackageSettings = this.mSettings.f64645a.get(component.getPackageName());
                if (mindPackageSettings == null) {
                    return null;
                }
                return i.e(activity, updateFlags, mindPackageSettings.i(userId), userId);
            }
            return null;
        }
    }

    private List<ApplicationInfo> getInstalledApplicationsListInternal(int flags, int userId, int callingUid) {
        ArrayList arrayList;
        if (sUserManager.exists(userId)) {
            synchronized (this.mPackages) {
                arrayList = new ArrayList(this.mPackages.size());
                for (MindPackageSettings mindPackageSettings : this.mPackages.values()) {
                    ApplicationInfo f4 = i.f(mindPackageSettings.f64563a, flags, mindPackageSettings.i(userId), userId);
                    if (f4 != null) {
                        arrayList.add(f4);
                    }
                }
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    private int getPackageUidInternal(String packageName, int flags, int userId, int callingUid) {
        synchronized (this.mPackages) {
            MindPackageSettings mindPackageSettings = this.mPackages.get(packageName);
            if (mindPackageSettings != null) {
                return MindUserHandle.h(userId, mindPackageSettings.f64564b);
            }
            return -1;
        }
    }

    private PackageParser.SigningDetails getSigningDetails(int uid) {
        synchronized (this.mPackages) {
            MindPackageSettings e4 = this.mSettings.e(MindUserHandle.a(uid));
            if (e4 != null) {
                return e4.f64563a.f64523j;
            }
            return PackageParser.SigningDetails.UNKNOWN;
        }
    }

    private InstallResult installPackageAsExistLocked(String packageName, int userId) {
        InstallResult installResult = new InstallResult();
        try {
            if (!sUserManager.exists(userId)) {
                sUserManager.createUser(userId);
            }
            installResult.f64297b = packageName;
            MindPackageSettings mindPackageSettings = this.mPackages.get(packageName);
            com.xinzhu.overmind.server.d.d().k(packageName, userId);
            if (g.get().installPackageAsExist(mindPackageSettings, userId) < 0) {
                return installResult.a("install apk error.");
            }
            synchronized (this.mPackages) {
                mindPackageSettings.o(true, userId);
                mindPackageSettings.l();
            }
            this.mSettings.j();
            onPackageInstalled(mindPackageSettings, userId);
            return installResult;
        } catch (Throwable th) {
            th.printStackTrace();
            return installResult;
        }
    }

    private InstallResult installPackageAsTransferLocked(String file, int userId, int legacyAppId) {
        boolean z3;
        InstallOption a4 = InstallOption.a();
        InstallResult installResult = new InstallResult();
        try {
            if (!sUserManager.exists(userId)) {
                sUserManager.createUser(userId);
            }
            File file2 = new File(file);
            if (!file2.exists()) {
                return installResult.a("installPackageAsTransferLocked apk not found.");
            }
            PackageParser.Package parserApk = parserApk(file2.getAbsolutePath());
            if (parserApk == null) {
                return installResult.a("parser apk error.");
            }
            String str = parserApk.packageName;
            installResult.f64297b = str;
            File f4 = com.xinzhu.overmind.a.f(str);
            File[] listFiles = f4.listFiles();
            if (listFiles == null || listFiles.length <= 0) {
                z3 = false;
            } else {
                z3 = false;
                for (File file3 : listFiles) {
                    if (file3.isDirectory() && (file3.getName().equals("arm") || file3.getName().equals("arm64"))) {
                        z3 = true;
                    }
                }
            }
            if (!z3) {
                com.xinzhu.overmind.b.c(TAG, "Ancient legacy package detected.");
                File file4 = new File(f4, "arm");
                com.xinzhu.overmind.utils.j.p(file4);
                if (listFiles != null && listFiles.length > 0) {
                    for (File file5 : listFiles) {
                        String name = file5.getName();
                        if (!file5.isDirectory() && name.endsWith(".so")) {
                            com.xinzhu.overmind.b.c(TAG, "Ancient legacy package detected, transfer lib " + name);
                            com.xinzhu.overmind.utils.j.r(file5, new File(file4, name));
                        }
                    }
                }
            }
            MindPackageSettings mindPackageSettings = this.mPackages.get(installResult.f64297b);
            if (mindPackageSettings == null) {
                mindPackageSettings = this.mSettings.d(parserApk.packageName, parserApk, legacyAppId);
                mindPackageSettings.f64565c = a4;
                mindPackageSettings.f64566d = com.xinzhu.overmind.utils.a.a(file2);
                com.xinzhu.overmind.server.d.d().k(parserApk.packageName, userId);
                this.mComponentResolver.b(mindPackageSettings.f64563a);
                com.xinzhu.overmind.b.a(TAG, "installPackageAsTransfer execute fully.");
            } else if (mindPackageSettings.c(userId)) {
                return installResult.a("Transfer install found package:" + parserApk.packageName + " exist within user:" + userId);
            } else {
                com.xinzhu.overmind.b.a(TAG, "installPackageAsTransfer execute package exist, user not exist.");
            }
            synchronized (this.mPackages) {
                mindPackageSettings.o(true, userId);
                mindPackageSettings.l();
            }
            this.mSettings.j();
            onPackageInstalled(mindPackageSettings, userId);
            String str2 = parserApk.packageName;
            if (com.xinzhu.overmind.a.J(str2).exists()) {
                return installResult;
            }
            throw new RuntimeException("Data transfer failed for package " + str2);
        } catch (Throwable th) {
            th.printStackTrace();
            return installResult;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x01cc A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.xinzhu.overmind.entity.pm.InstallResult installPackageAsUserLocked(java.lang.String r10, com.xinzhu.overmind.entity.pm.InstallOption r11, int r12) {
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xinzhu.overmind.server.pm.h.installPackageAsUserLocked(java.lang.String, com.xinzhu.overmind.entity.pm.InstallOption, int):com.xinzhu.overmind.entity.pm.InstallResult");
    }

    private PackageParser.Package parserApk(String file) {
        try {
            com.xinzhu.haunted.android.content.pm.i k4 = com.xinzhu.haunted.android.content.pm.i.k();
            PackageParser.Package r12 = (PackageParser.Package) k4.l(new File(file), 0);
            if (com.xinzhu.overmind.utils.e.x()) {
                k4.j(r12, true);
            } else {
                k4.i(r12, 0);
            }
            return r12;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private List<ResolveInfo> queryIntentServicesInternal(Intent intent, String resolvedType, int flags, int userId) {
        ComponentName component = intent.getComponent();
        if (component == null && intent.getSelector() != null) {
            intent = intent.getSelector();
            component = intent.getComponent();
        }
        Intent intent2 = intent;
        if (component != null) {
            ArrayList arrayList = new ArrayList(1);
            ServiceInfo serviceInfo = getServiceInfo(component, flags, userId);
            if (serviceInfo != null && isEnabledAndMatchLPr(serviceInfo, flags, userId)) {
                ResolveInfo resolveInfo = new ResolveInfo();
                resolveInfo.serviceInfo = serviceInfo;
                arrayList.add(resolveInfo);
            }
            return arrayList;
        }
        synchronized (this.mPackages) {
            String str = intent2.getPackage();
            if (str == null) {
                return this.mComponentResolver.r(intent2, resolvedType, flags, userId);
            }
            MindPackageSettings mindPackageSettings = this.mPackages.get(str);
            if (mindPackageSettings != null) {
                return this.mComponentResolver.s(intent2, resolvedType, flags, mindPackageSettings.f64563a.f64517d, userId);
            }
            return Collections.emptyList();
        }
    }

    private int updateFlags(int flags, int userId) {
        return (flags & 786432) != 0 ? flags : flags | 786432;
    }

    public void addPackageMonitor(j monitor) {
        this.mPackageMonitors.add(monitor);
    }

    public int checkUidSignatures(int uid1, int uid2) {
        synchronized (this.mPackages) {
            MindPackageSettings e4 = this.mSettings.e(MindUserHandle.a(uid1));
            if (e4 == null) {
                return -4;
            }
            MindPackageSettings e5 = this.mSettings.e(MindUserHandle.a(uid2));
            if (e5 == null) {
                return -4;
            }
            return compareSignatures(e4.f64563a.f64522i, e5.f64563a.f64522i);
        }
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public void deleteUser(int userId) throws RemoteException {
        synchronized (this.mPackages) {
            for (MindPackageSettings mindPackageSettings : this.mPackages.values()) {
                uninstallPackageAsUser(mindPackageSettings.f64563a.f64526m, userId);
            }
            this.mComponentEnabledSettings.a(userId);
        }
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public void doTransferInstalls() throws RemoteException {
        com.xinzhu.overmind.b.a(TAG, "doTransferInstalls");
        com.xinzhu.datatransfer.a.a();
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public void doTransferInstallsOnlyForMainPackage() throws RemoteException {
        com.xinzhu.overmind.b.a(TAG, "doTransferInstallsOnlyForMainPackage");
        com.xinzhu.datatransfer.a.b();
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public ActivityInfo getActivityInfo(ComponentName component, int flags, int userId) {
        if (sUserManager.exists(userId)) {
            synchronized (this.mPackages) {
                MindPackage.b activity = this.mComponentResolver.getActivity(component);
                if (activity != null) {
                    MindPackageSettings mindPackageSettings = this.mPackages.get(component.getPackageName());
                    if (mindPackageSettings != null && isEnabledAndMatchLPr(activity.f64551f, flags, userId)) {
                        return i.e(activity, flags, mindPackageSettings.i(userId), userId);
                    }
                    return null;
                }
                return null;
            }
        }
        return null;
    }

    public int getAppId(String packageName) {
        synchronized (this.mPackages) {
            MindPackageSettings mindPackageSettings = this.mPackages.get(packageName);
            if (mindPackageSettings != null) {
                return mindPackageSettings.f64564b;
            }
            return -1;
        }
    }

    public Resources getAppResources(String packageName, int userId) {
        try {
            ApplicationInfo b4 = i.b(getApplicationInfo(packageName, 0, userId));
            com.xinzhu.haunted.android.content.res.b e4 = com.xinzhu.haunted.android.content.res.b.e();
            e4.a(b4.publicSourceDir);
            Resources resources = Overmind.getContext().getResources();
            return new Resources((AssetManager) e4.f63258a, resources.getDisplayMetrics(), resources.getConfiguration());
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public ApplicationInfo getApplicationInfo(String packageName, int flags, int userId) {
        if (sUserManager.exists(userId)) {
            if (!ObjectsWrapper.equals(packageName, Overmind.getMainPkg()) && !ObjectsWrapper.equals(packageName, Overmind.getPluginPkg())) {
                int updateFlags = updateFlags(flags, userId);
                synchronized (this.mPackages) {
                    MindPackageSettings mindPackageSettings = this.mPackages.get(packageName);
                    if (mindPackageSettings != null) {
                        return i.f(mindPackageSettings.f64563a, updateFlags, mindPackageSettings.i(userId), userId);
                    }
                    return null;
                }
            }
            try {
                return Overmind.getContext().getPackageManager().getApplicationInfo(packageName, flags);
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public int getComponentEnabledSetting(ComponentName componentName, int userId) throws RemoteException {
        int b4;
        synchronized (this.mComponentEnabledSettings) {
            b4 = this.mComponentEnabledSettings.b(componentName, userId);
        }
        return b4;
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public List<ApplicationInfo> getInstalledApplications(int flags, int userId) {
        return getInstalledApplicationsListInternal(flags, userId, Binder.getCallingUid());
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public List<PackageInfo> getInstalledPackages(int flags, int userId) {
        ArrayList arrayList;
        Binder.getCallingUid();
        if (sUserManager.exists(userId)) {
            synchronized (this.mPackages) {
                ArrayList arrayList2 = new ArrayList(this.mPackages.size());
                for (MindPackageSettings mindPackageSettings : this.mPackages.values()) {
                    PackageInfo packageInfo = getPackageInfo(mindPackageSettings.f64563a.f64526m, flags, userId);
                    if (packageInfo != null) {
                        arrayList2.add(packageInfo);
                    }
                }
                arrayList = new ArrayList(arrayList2);
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public List<InstalledPackage> getInstalledPackagesAsUser(int userId) {
        ArrayList arrayList;
        if (sUserManager.exists(userId)) {
            synchronized (this.mPackages) {
                arrayList = new ArrayList();
                for (MindPackageSettings mindPackageSettings : this.mPackages.values()) {
                    if (mindPackageSettings.c(userId)) {
                        InstalledPackage installedPackage = new InstalledPackage();
                        installedPackage.f64304a = userId;
                        installedPackage.f64305b = mindPackageSettings.f64563a.f64526m;
                        arrayList.add(installedPackage);
                    }
                }
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public MindPackageSettings getMindPackageSettings(String packageName) {
        try {
            MindPackageSettings mindPackageSettingsInternal = getMindPackageSettingsInternal(packageName);
            if (mindPackageSettingsInternal != null) {
                Parcel obtain = Parcel.obtain();
                mindPackageSettingsInternal.writeToParcel(obtain, 0);
                obtain.setDataPosition(0);
                MindPackageSettings createFromParcel = MindPackageSettings.CREATOR.createFromParcel(obtain);
                createFromParcel.f64563a = null;
                obtain.recycle();
                return createFromParcel;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return null;
    }

    public MindPackageSettings getMindPackageSettingsInternal(String packageName) {
        return this.mPackages.get(packageName);
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public PackageInfo getPackageInfo(String packageName, int flags, int userId) {
        if (sUserManager.exists(userId)) {
            if (!ObjectsCompat.equals(packageName, Overmind.getMainPkg()) && !ObjectsCompat.equals(packageName, Overmind.getPluginPkg())) {
                int updateFlags = updateFlags(flags, userId);
                synchronized (this.mPackages) {
                    MindPackageSettings mindPackageSettings = this.mPackages.get(packageName);
                    if (mindPackageSettings != null) {
                        return i.i(mindPackageSettings, updateFlags, mindPackageSettings.i(userId), userId);
                    }
                    return null;
                }
            }
            try {
                return Overmind.getContext().getPackageManager().getPackageInfo(packageName, flags);
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public int getPackageUid(String packageName, int flags, int userId) {
        if (com.xinzhu.overmind.server.user.c.get().exists(userId)) {
            if (packageName.equals(q.a.f73954a) || packageName.equals(Overmind.getHostPkg())) {
                return 1000;
            }
            return getPackageUidInternal(packageName, flags, userId, BinderHelper.b().f64329b);
        }
        return -1;
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public String[] getPackagesForUid(int uid) {
        int k4 = MindUserHandle.k(uid);
        ArrayList arrayList = new ArrayList();
        for (MindPackageSettings mindPackageSettings : this.mPackages.values()) {
            if (MindUserHandle.h(k4, mindPackageSettings.f64563a.f64532s.uid) == uid) {
                arrayList.add(mindPackageSettings.f64563a.f64526m);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public ProviderInfo getProviderInfo(ComponentName component, int flags, int userId) {
        if (sUserManager.exists(userId)) {
            synchronized (this.mPackages) {
                MindPackage.g f4 = this.mComponentResolver.f(component);
                if (f4 != null) {
                    MindPackageSettings mindPackageSettings = this.mPackages.get(component.getPackageName());
                    if (mindPackageSettings != null && isEnabledAndMatchLPr(f4.f64560f, flags, userId)) {
                        return i.k(f4, flags, mindPackageSettings.i(userId), userId);
                    }
                    return null;
                }
                return null;
            }
        }
        return null;
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public ActivityInfo getReceiverInfo(ComponentName component, int flags, int userId) {
        if (sUserManager.exists(userId)) {
            synchronized (this.mPackages) {
                MindPackage.b g4 = this.mComponentResolver.g(component);
                if (g4 != null) {
                    MindPackageSettings mindPackageSettings = this.mPackages.get(component.getPackageName());
                    if (mindPackageSettings != null && isEnabledAndMatchLPr(g4.f64551f, flags, userId)) {
                        return i.e(g4, flags, mindPackageSettings.i(userId), userId);
                    }
                    return null;
                }
                return null;
            }
        }
        return null;
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public ServiceInfo getServiceInfo(ComponentName component, int flags, int userId) {
        if (sUserManager.exists(userId)) {
            synchronized (this.mPackages) {
                MindPackage.h h4 = this.mComponentResolver.h(component);
                if (h4 != null) {
                    MindPackageSettings mindPackageSettings = this.mPackages.get(component.getPackageName());
                    if (mindPackageSettings != null && isEnabledAndMatchLPr(h4.f64561f, flags, userId)) {
                        return i.l(h4, flags, mindPackageSettings.i(userId), userId);
                    }
                    return null;
                }
                return null;
            }
        }
        return null;
    }

    n getSettings() {
        return this.mSettings;
    }

    public boolean hasSignatureCapability(int serverUid, int clientUid, int capability) {
        String[] packagesForUid = Overmind.getContext().getPackageManager().getPackagesForUid(clientUid);
        if (packagesForUid != null && packagesForUid.length > 0) {
            for (String str : packagesForUid) {
                if (str.equals(Overmind.getMainPkg()) || str.equals(Overmind.getPluginPkg())) {
                    return true;
                }
            }
        }
        if (!com.xinzhu.overmind.utils.e.t()) {
            return serverUid == clientUid || checkUidSignatures(serverUid, clientUid) == 0;
        }
        PackageParser.SigningDetails signingDetails = getSigningDetails(serverUid);
        PackageParser.SigningDetails signingDetails2 = getSigningDetails(clientUid);
        return signingDetails.checkCapability(signingDetails2, capability) || signingDetails2.hasAncestorOrSelf(signingDetails);
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public InstallResult installPackageAsExist(String packageName, int userId) throws RemoteException {
        InstallResult installPackageAsExistLocked;
        synchronized (this.mInstallLock) {
            String str = TAG;
            com.xinzhu.overmind.b.c(str, "installPackageAsExist " + packageName + " " + userId);
            installPackageAsExistLocked = installPackageAsExistLocked(packageName, userId);
        }
        return installPackageAsExistLocked;
    }

    public InstallResult installPackageAsTransfer(String file, int userId, int legacyAppId) {
        InstallResult installPackageAsTransferLocked;
        String str = TAG;
        com.xinzhu.overmind.b.a(str, "installPackageAsTransfer " + file + " " + userId + " " + legacyAppId);
        synchronized (this.mInstallLock) {
            installPackageAsTransferLocked = installPackageAsTransferLocked(file, userId, legacyAppId);
        }
        return installPackageAsTransferLocked;
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public InstallResult installPackageAsUser(String file, InstallOption option, int userId) {
        InstallResult installPackageAsUserLocked;
        synchronized (this.mInstallLock) {
            installPackageAsUserLocked = installPackageAsUserLocked(file, option, userId);
        }
        return installPackageAsUserLocked;
    }

    public boolean isComponentEnabled(ComponentInfo componentInfo, int userId) {
        int b4;
        synchronized (this.mComponentEnabledSettings) {
            b4 = this.mComponentEnabledSettings.b(new ComponentName(componentInfo.packageName, componentInfo.name), userId);
        }
        if (b4 != 0) {
            return b4 == 1;
        }
        return componentInfo.enabled;
    }

    public boolean isEnabledAndMatchLPr(ComponentInfo componentInfo, int flags, int userId) {
        if ((flags & 512) != 0) {
            return true;
        }
        return isComponentEnabled(componentInfo, userId);
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public boolean isInstalled(String packageName, int userId) {
        if (sUserManager.exists(userId)) {
            synchronized (this.mPackages) {
                MindPackageSettings mindPackageSettings = this.mPackages.get(packageName);
                if (mindPackageSettings == null) {
                    return false;
                }
                return mindPackageSettings.c(userId);
            }
        }
        return false;
    }

    void onPackageChanged(MindPackageSettings mps, int userId) {
        String str = mps.f64563a.f64526m;
        if (!Overmind.get().ifDisablePluginPackageAutoManage()) {
            if (mps.t()) {
                com.xinzhu.overmind.plugin.b.q(str, userId);
            }
            com.xinzhu.overmind.plugin.b.p();
        }
        for (j jVar : this.mPackageMonitors) {
            jVar.c(str, userId);
        }
        String str2 = TAG;
        u.a(str2, "onPackageChanged: " + str + ", userId: " + userId);
    }

    void onPackageInstalled(MindPackageSettings mps, int userId) {
        String str = mps.f64563a.f64526m;
        if (!Overmind.get().ifDisablePluginPackageAutoManage()) {
            if (mps.t()) {
                com.xinzhu.overmind.plugin.b.q(str, userId);
            }
            com.xinzhu.overmind.plugin.b.p();
        }
        for (j jVar : this.mPackageMonitors) {
            jVar.b(str, userId);
        }
        String str2 = TAG;
        u.a(str2, "onPackageInstalled: " + str + ", userId: " + userId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onPackageUninstalled(String packageName, int userId) {
        if (!Overmind.get().ifDisablePluginPackageAutoManage()) {
            com.xinzhu.overmind.plugin.b.p();
        }
        for (j jVar : this.mPackageMonitors) {
            jVar.a(packageName, userId);
        }
        String str = TAG;
        u.a(str, "onPackageUninstalled: " + packageName + ", userId: " + userId);
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int flags, String resolvedType, int userId) {
        if (sUserManager.exists(userId)) {
            ComponentName component = intent.getComponent();
            if (component == null && intent.getSelector() != null) {
                intent = intent.getSelector();
                component = intent.getComponent();
            }
            Intent intent2 = intent;
            if (component != null) {
                ArrayList arrayList = new ArrayList(1);
                ActivityInfo receiverInfo = getReceiverInfo(component, flags, userId);
                if (receiverInfo != null && isEnabledAndMatchLPr(receiverInfo, flags, userId)) {
                    ResolveInfo resolveInfo = new ResolveInfo();
                    resolveInfo.activityInfo = receiverInfo;
                    arrayList.add(resolveInfo);
                }
                return arrayList;
            }
            synchronized (this.mPackages) {
                String str = intent2.getPackage();
                if (str == null) {
                    return this.mComponentResolver.p(intent2, resolvedType, flags, userId);
                }
                MindPackageSettings mindPackageSettings = this.mPackages.get(str);
                if (mindPackageSettings != null) {
                    return this.mComponentResolver.q(intent2, resolvedType, flags, mindPackageSettings.f64563a.f64515b, userId);
                }
                return Collections.emptyList();
            }
        }
        return Collections.emptyList();
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public List<ProviderInfo> queryContentProviders(String processName, int uid, int flags, int userId) throws RemoteException {
        if (sUserManager.exists(userId)) {
            ArrayList arrayList = new ArrayList();
            if (TextUtils.isEmpty(processName)) {
                return arrayList;
            }
            arrayList.addAll(this.mComponentResolver.o(processName, null, flags, userId));
            return arrayList;
        }
        return Collections.emptyList();
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public List<ResolveInfo> queryIntentActivities(Intent intent, int flags, String resolvedType, int userId) {
        if (sUserManager.exists(userId)) {
            String str = intent.getPackage();
            ComponentName component = intent.getComponent();
            if (component == null && intent.getSelector() != null) {
                intent = intent.getSelector();
                component = intent.getComponent();
            }
            Intent intent2 = intent;
            if (component != null) {
                ArrayList arrayList = new ArrayList(1);
                ActivityInfo activityInfo = getActivityInfo(component, flags, userId);
                if (activityInfo != null && isEnabledAndMatchLPr(activityInfo, flags, userId)) {
                    ResolveInfo resolveInfo = new ResolveInfo();
                    resolveInfo.activityInfo = activityInfo;
                    arrayList.add(resolveInfo);
                }
                return arrayList;
            }
            synchronized (this.mPackages) {
                if (str != null) {
                    MindPackageSettings mindPackageSettings = this.mPackages.get(str);
                    List<ResolveInfo> list = null;
                    if (mindPackageSettings != null) {
                        list = this.mComponentResolver.j(intent2, resolvedType, flags, mindPackageSettings.f64563a.f64514a, userId);
                    }
                    if ((list == null || list.size() == 0) && list == null) {
                        list = new ArrayList<>();
                    }
                    return list;
                }
                List<ResolveInfo> k4 = this.mComponentResolver.k(intent2, resolvedType, flags, userId);
                if ((k4 == null || k4.size() == 0) && k4 == null) {
                    k4 = new ArrayList<>();
                }
                return k4;
            }
        }
        return Collections.emptyList();
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public List<ResolveInfo> queryIntentServices(Intent intent, int flags, String resolvedType, int userId) {
        return queryIntentServicesInternal(intent, resolvedType, flags, userId);
    }

    public void removePackageMonitor(j monitor) {
        this.mPackageMonitors.add(monitor);
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public ResolveInfo resolveActivity(Intent intent, int flags, String resolvedType, int userId) {
        if (sUserManager.exists(userId)) {
            return chooseBestActivity(intent, resolvedType, flags, queryIntentActivities(intent, flags, resolvedType, userId));
        }
        return null;
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public ProviderInfo resolveContentProvider(String authority, int flags, int userId) {
        if (sUserManager.exists(userId)) {
            return this.mComponentResolver.l(authority, flags, userId);
        }
        return null;
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public ResolveInfo resolveIntent(Intent intent, String resolvedType, int flags, int userId) {
        if (sUserManager.exists(userId)) {
            return chooseBestActivity(intent, resolvedType, flags, queryIntentActivities(intent, flags, resolvedType, userId));
        }
        return null;
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public ResolveInfo resolveService(Intent intent, int flags, String resolvedType, int userId) {
        List<ResolveInfo> queryIntentServicesInternal;
        if (sUserManager.exists(userId) && (queryIntentServicesInternal = queryIntentServicesInternal(intent, resolvedType, flags, userId)) != null && queryIntentServicesInternal.size() >= 1) {
            return queryIntentServicesInternal.get(0);
        }
        return null;
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public void setComponentEnabledSetting(ComponentName componentName, int newState, int flags, int userId) throws RemoteException {
        synchronized (this.mComponentEnabledSettings) {
            this.mComponentEnabledSettings.e(componentName, newState, flags, userId);
        }
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public void setMindPackageRunWithPlugin(String packageName, boolean runWithPlugin) throws RemoteException {
        synchronized (this.mPackages) {
            MindPackageSettings mindPackageSettings = this.mPackages.get(packageName);
            if (mindPackageSettings != null) {
                mindPackageSettings.p(runWithPlugin);
                mindPackageSettings.l();
            }
        }
    }

    @Override // com.xinzhu.overmind.server.c
    public void systemReady() {
        this.mSettings.j();
        for (MindPackageSettings mindPackageSettings : this.mPackages.values()) {
            this.mComponentResolver.b(mindPackageSettings.f64563a);
        }
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public void uninstallPackage(String packageName) {
        synchronized (this.mInstallLock) {
            synchronized (this.mPackages) {
                MindPackageSettings mindPackageSettings = this.mPackages.get(packageName);
                if (mindPackageSettings == null) {
                    return;
                }
                com.xinzhu.overmind.server.d.d().j(packageName);
                for (Integer num : mindPackageSettings.f()) {
                    if (g.get().uninstallPackageAsUser(mindPackageSettings, true, num.intValue()) >= 0) {
                        onPackageUninstalled(packageName, num.intValue());
                    }
                }
                this.mPackages.remove(packageName);
                this.mComponentResolver.t(mindPackageSettings.f64563a);
                this.mSettings.j();
            }
        }
    }

    @Override // com.xinzhu.overmind.server.pm.d
    public void uninstallPackageAsUser(String packageName, int userId) throws RemoteException {
        synchronized (this.mInstallLock) {
            synchronized (this.mPackages) {
                MindPackageSettings mindPackageSettings = this.mPackages.get(packageName);
                if (mindPackageSettings == null) {
                    return;
                }
                if (isInstalled(packageName, userId)) {
                    boolean z3 = true;
                    if (mindPackageSettings.g().size() > 1) {
                        z3 = false;
                    }
                    com.xinzhu.overmind.server.d.d().k(packageName, userId);
                    g.get().uninstallPackageAsUser(mindPackageSettings, z3, userId);
                    if (z3) {
                        this.mPackages.remove(packageName);
                        this.mComponentResolver.t(mindPackageSettings.f64563a);
                        this.mSettings.j();
                    } else {
                        mindPackageSettings.j(userId);
                        mindPackageSettings.l();
                    }
                    onPackageUninstalled(packageName, userId);
                }
            }
        }
    }
}
