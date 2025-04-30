package com.xinzhu.overmind;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.IBinder;
import android.os.Process;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.Util.g0;
import com.swift.sandhook.HookLog;
import com.swift.sandhook.SandHook;
import com.swift.sandhook.SandHookConfig;
import com.swift.sandhook.xposedcompat.XposedCompat;
import com.xinzhu.haunted.android.content.pm.e;
import com.xinzhu.overmind.client.VMCore;
import com.xinzhu.overmind.client.frameworks.d;
import com.xinzhu.overmind.client.frameworks.f;
import com.xinzhu.overmind.client.frameworks.g;
import com.xinzhu.overmind.client.frameworks.h;
import com.xinzhu.overmind.custom.CustomCallback;
import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.entity.pm.InstallResult;
import com.xinzhu.overmind.entity.pm.InstalledModule;
import com.xinzhu.overmind.hiddenapibypass.HiddenApiBypass;
import com.xinzhu.overmind.server.DaemonService;
import com.xinzhu.overmind.server.user.MindUserHandle;
import com.xinzhu.overmind.server.user.MindUserInfo;
import com.xinzhu.overmind.utils.j;
import com.xinzhu.overmind.utils.t;
import com.xinzhu.overmind.utils.wrappers.ContentProviderWrapper;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.Thread;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
@SuppressLint({"StaticFieldLeak"})
/* loaded from: classes.dex */
public class Overmind extends com.xinzhu.overmind.client.a {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String TAG = "Overmind";
    private static e hostPm;
    private static Context sContext;
    private com.xinzhu.overmind.client.a mClientConfiguration;
    private Thread.UncaughtExceptionHandler mExceptionHandler;
    private ProcessType mProcessType;
    private static Overmind sOvermind = new Overmind();
    private static int hostRealUid = Process.myUid();
    private Map<String, IBinder> mServices = new HashMap();
    private com.xinzhu.overmind.client.hook.a mAppLifecycleCallback = com.xinzhu.overmind.client.hook.a.f64071a;
    private com.xinzhu.overmind.client.hook.delegate.a mActivityLifecycleCallback = com.xinzhu.overmind.client.hook.delegate.a.f64098a;
    private CustomCallback mCustomCallback = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum ProcessType {
        Server,
        MAppClient,
        Main,
        PluginMonitor,
        Others
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements SandHook.HookModeCallBack {
        a() {
        }

        @Override // com.swift.sandhook.SandHook.HookModeCallBack
        public int hookMode(Member member) {
            return Build.VERSION.SDK_INT >= 30 ? 2 : 0;
        }
    }

    /* loaded from: classes.dex */
    class b implements IBinder.DeathRecipient {
        b() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            com.xinzhu.overmind.b.c(Overmind.TAG, ":mind process dead, finish this process.");
            Process.killProcess(Process.myPid());
        }
    }

    /* loaded from: classes.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f63936a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f63937b;

        c(final Intent val$launchIntentForPackage, final int val$userId) {
            this.f63936a = val$launchIntentForPackage;
            this.f63937b = val$userId;
        }

        @Override // java.lang.Runnable
        public void run() {
            Overmind.this.startActivity(this.f63936a, this.f63937b);
        }
    }

    public static void critical(String message) {
        throw new RuntimeException(message);
    }

    public static Overmind get() {
        return sOvermind;
    }

    public static Context getContext() {
        return sContext;
    }

    public static String getHostPkg() {
        return get().getHostPackageName();
    }

    public static e getHostPm() {
        return hostPm;
    }

    public static int getHostUid() {
        return hostRealUid;
    }

    public static int getHostUserId() {
        return MindUserHandle.k(hostRealUid);
    }

    public static String getMainPkg() {
        return get().getMainPackageName();
    }

    public static com.xinzhu.overmind.client.frameworks.a getMindActivityManager() {
        return com.xinzhu.overmind.client.frameworks.a.d();
    }

    public static d getMindJobManager() {
        return d.c();
    }

    public static f getMindPackageManager() {
        return f.d();
    }

    public static g getMindStorageManager() {
        return g.a();
    }

    public static PackageManager getPackageManager() {
        return sContext.getPackageManager();
    }

    public static String getPluginPkg() {
        return get().getPluginPackageName();
    }

    private static String getProcessName(Context context) {
        String str;
        int myPid = Process.myPid();
        Iterator<ActivityManager.RunningAppProcessInfo> it2 = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses().iterator();
        while (true) {
            if (!it2.hasNext()) {
                str = null;
                break;
            }
            ActivityManager.RunningAppProcessInfo next = it2.next();
            if (next.pid == myPid) {
                str = next.processName;
                break;
            }
        }
        if (str != null) {
            return str;
        }
        throw new RuntimeException("processName = null");
    }

    public static void getStackTraceElement() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        for (int i2 = 1; i2 < stackTrace.length; i2++) {
            StackTraceElement stackTraceElement = stackTrace[i2];
            PrintStream printStream = System.out;
            printStream.println("\tat " + stackTraceElement.getClassName() + g0.f27568a + stackTraceElement.getMethodName() + "(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")");
        }
    }

    private void initHostPm(Context context) {
        hostPm = new e(com.xinzhu.haunted.android.app.g.M());
    }

    private void initJarEnv() {
        try {
            j.e(getContext().getAssets().open("junit.jar"), com.xinzhu.overmind.a.f63946h);
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }

    public static void initJavaHooks() {
        VMCore.initLibrary();
        try {
            if (com.xinzhu.haunted.dalvik.system.a.e().c()) {
                SandHookConfig.DEBUG = com.xinzhu.haunted.dalvik.system.a.e().g().booleanValue();
            } else {
                SandHookConfig.DEBUG = false;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        HookLog.DEBUG = false;
        SandHookConfig.SDK_INT = Build.VERSION.SDK_INT;
        SandHookConfig.compiler = SandHookConfig.SDK_INT < 26;
        SandHookConfig.delayHook = false;
        SandHook.setHookModeCallBack(new a());
        SandHook.disableVMInline();
        XposedCompat.cacheDir = new File(getContext().getCacheDir(), "hook_cache");
    }

    private void initService() {
        get().getService(com.xinzhu.overmind.server.g.f64476c);
        get().getService(com.xinzhu.overmind.server.g.f64479f);
        get().getService(com.xinzhu.overmind.server.g.f64480g);
        get().getService(com.xinzhu.overmind.server.g.f64477d);
    }

    @SuppressLint({"NewApi"})
    public static boolean is64Bit() {
        if (com.xinzhu.overmind.utils.e.c()) {
            return Process.is64Bit();
        }
        return Build.CPU_ABI.equals("arm64-v8a");
    }

    private boolean isMAppClientProcess(String processName) {
        String str = this.mClientConfiguration.getHostPackageName() + ":p";
        if (processName.startsWith(str)) {
            try {
                Integer.parseInt(processName.substring(str.length()));
                return true;
            } catch (NumberFormatException unused) {
            }
        }
        return false;
    }

    public static boolean isPkgInstalledOutside(String packageName) {
        ApplicationInfo d4;
        try {
            if (com.xinzhu.overmind.utils.e.j()) {
                d4 = hostPm.e(packageName, 0L, getHostUserId());
            } else {
                d4 = hostPm.d(packageName, 0, getHostUserId());
            }
        } catch (Exception unused) {
        }
        return d4 != null;
    }

    public static boolean isPluginPkgInstalled() {
        if (isPkgInstalledOutside(getPluginPkg())) {
            return get().mClientConfiguration.isPluginValid();
        }
        return false;
    }

    public static Object mainThread() {
        return com.xinzhu.haunted.android.app.g.D();
    }

    private void startLogcat() {
        File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        File file = new File(externalStoragePublicDirectory, getContext().getPackageName() + "_logcat.txt");
        j.j(file);
        t.b("logcat -c", false);
        t.b("logcat >> " + file.getAbsolutePath() + " &", false);
    }

    @SuppressLint({"NewApi"})
    private static void unsealReflectionRestrictions() {
        if (com.xinzhu.overmind.utils.e.g()) {
            HiddenApiBypass.addHiddenApiExemptions("L");
        } else if (com.xinzhu.overmind.utils.e.x()) {
            try {
                Class cls = (Class) Class.class.getDeclaredMethod("forName", String.class).invoke(null, "dalvik.system.VMRuntime");
                Method declaredMethod = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
                ((Method) declaredMethod.invoke(cls, "setHiddenApiExemptions", new Class[]{String[].class})).invoke(((Method) declaredMethod.invoke(cls, "getRuntime", new Class[0])).invoke(null, new Object[0]), new String[]{"L"});
            } catch (Throwable th) {
                th.printStackTrace();
                critical("reflect unsealing failed");
            }
        }
    }

    public MindUserInfo createUser(int userId) {
        return h.d().a(userId);
    }

    public void deleteUser(int userId) {
        h.d().b(userId);
    }

    @SuppressLint({"NewApi"})
    public void doAttachBaseContext(Context context, com.xinzhu.overmind.client.a clientConfiguration) {
        String str = TAG;
        com.xinzhu.overmind.b.a(str, "doAttachBaseContext begin");
        if (clientConfiguration != null) {
            if (this.mClientConfiguration != null) {
                com.xinzhu.overmind.b.c(str, "doAttachBaseContext second time, skip.");
                return;
            }
            initHostPm(context);
            this.mClientConfiguration = clientConfiguration;
            unsealReflectionRestrictions();
            sContext = context;
            String processName = getProcessName(getContext());
            if (processName.equals(getMainPkg())) {
                this.mProcessType = ProcessType.Main;
                startLogcat();
            } else if (processName.endsWith(":mind")) {
                this.mProcessType = ProcessType.Server;
            } else if (processName.endsWith(":plugin_monitor")) {
                this.mProcessType = ProcessType.PluginMonitor;
                if (!get().ifDisablePluginPackageAutoManage()) {
                    com.xinzhu.overmind.plugin.b.p();
                }
            } else if (isMAppClientProcess(processName)) {
                this.mProcessType = ProcessType.MAppClient;
                initJavaHooks();
            } else {
                this.mProcessType = ProcessType.Others;
            }
            if (isServerProcess()) {
                if (!get().ifDisableDaemonService()) {
                    Intent intent = new Intent();
                    intent.setClass(getContext(), DaemonService.class);
                    if (com.xinzhu.overmind.utils.e.v()) {
                        getContext().startForegroundService(intent);
                    } else {
                        getContext().startService(intent);
                    }
                }
            } else {
                initService();
            }
            if (get().isVirtualProcess() || get().isMonitorProcess()) {
                try {
                    getService(com.xinzhu.overmind.server.g.f64476c).linkToDeath(new b(), 0);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            com.xinzhu.overmind.client.hook.d.c().d();
            return;
        }
        throw new IllegalArgumentException("ClientConfiguration is null!");
    }

    public void doCreate() {
        if (isVirtualProcess()) {
            com.xinzhu.overmind.client.hook.delegate.c.d();
        }
    }

    public void doTransferInstalls() {
        getMindPackageManager().b();
    }

    public void doTransferInstallsOnlyForMainPackage() {
        getMindPackageManager().c();
    }

    public com.xinzhu.overmind.client.hook.delegate.a getActivityLifecycleCallback() {
        return this.mActivityLifecycleCallback;
    }

    public com.xinzhu.overmind.client.hook.a getAppLifecycleCallback() {
        return this.mAppLifecycleCallback;
    }

    public CustomCallback getCustomCallback() {
        return this.mCustomCallback;
    }

    public Thread.UncaughtExceptionHandler getExceptionHandler() {
        return this.mExceptionHandler;
    }

    @Override // com.xinzhu.overmind.client.a
    public String getHostPackageName() {
        return this.mClientConfiguration.getHostPackageName();
    }

    public List<ApplicationInfo> getInstalledApplications(int flags, int userId) {
        return getMindPackageManager().g(flags, userId);
    }

    public List<PackageInfo> getInstalledPackages(int flags, int userId) {
        return getMindPackageManager().h(flags, userId);
    }

    public List<InstalledModule> getInstalledXPModules() {
        return null;
    }

    @Override // com.xinzhu.overmind.client.a
    public String getMainAuthorityPrefix() {
        return this.mClientConfiguration.getMainAuthorityPrefix();
    }

    @Override // com.xinzhu.overmind.client.a
    public String getMainPackageName() {
        return this.mClientConfiguration.getMainPackageName();
    }

    @Override // com.xinzhu.overmind.client.a
    public String getPluginAuthorityPrefix() {
        return this.mClientConfiguration.getPluginAuthorityPrefix();
    }

    @Override // com.xinzhu.overmind.client.a
    public String getPluginPackageName() {
        return this.mClientConfiguration.getPluginPackageName();
    }

    public List<ActivityManager.RecentTaskInfo> getRecentTasksContainPlugin(int maxNum, int flags) {
        List<ActivityManager.RecentTaskInfo> recentTasks = ((ActivityManager) getContext().getSystemService(TTDownloadField.TT_ACTIVITY)).getRecentTasks(maxNum, flags);
        List<ActivityManager.RecentTaskInfo> j4 = com.xinzhu.overmind.plugin.b.j(maxNum, flags);
        if (j4 != null) {
            recentTasks.addAll(j4);
        }
        return recentTasks;
    }

    public List<ActivityManager.RunningAppProcessInfo> getRunningAppProcessesContainPlugin() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) getContext().getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses();
        List<ActivityManager.RunningAppProcessInfo> k4 = com.xinzhu.overmind.plugin.b.k();
        if (k4 != null) {
            runningAppProcesses.addAll(k4);
        }
        return runningAppProcesses;
    }

    public IBinder getService(String name) {
        IBinder iBinder = this.mServices.get(name);
        if (iBinder == null || !iBinder.isBinderAlive()) {
            Bundle bundle = new Bundle();
            bundle.putString("_VM_|_server_name_", name);
            IBinder b4 = com.xinzhu.overmind.utils.helpers.b.b(ContentProviderWrapper.acquire(com.xinzhu.overmind.client.f.a(), "VM", null, bundle), "_VM_|_server_");
            this.mServices.put(name, b4);
            return b4;
        }
        return iBinder;
    }

    public List<MindUserInfo> getUsers() {
        return h.d().f();
    }

    @Override // com.xinzhu.overmind.client.a
    public boolean ifDisableDaemonService() {
        return this.mClientConfiguration.ifDisableDaemonService();
    }

    @Override // com.xinzhu.overmind.client.a
    public boolean ifDisablePluginPackageAutoManage() {
        return this.mClientConfiguration.ifDisablePluginPackageAutoManage();
    }

    @Override // com.xinzhu.overmind.client.a
    public boolean ifDisableVirtualDeviceForPackage(String packageName, int userId) {
        return this.mClientConfiguration.ifDisableVirtualDeviceForPackage(packageName, userId);
    }

    public InstallResult installPackageAsUser_Exist(String packageName, int userId) {
        String str = TAG;
        com.xinzhu.overmind.b.c(str, "installPackageAsUser_Exist pkg: " + packageName + " user: " + userId);
        if (!get().isInstalled(packageName)) {
            InstallResult installResult = new InstallResult();
            return installResult.a("installPackageAsUser_Exist package non-exist: " + packageName);
        }
        return getMindPackageManager().r(packageName, userId);
    }

    public InstallResult installPackageAsUser_Storage(File apk, int userId) {
        return getMindPackageManager().s(apk.getAbsolutePath(), InstallOption.a(), userId);
    }

    public InstallResult installPackageAsUser_System(String packageName, int userId) {
        try {
            return getMindPackageManager().s(getPackageManager().getPackageInfo(packageName, 0).applicationInfo.sourceDir, InstallOption.b(), userId);
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return new InstallResult().a(e4.getMessage());
        }
    }

    public InstallResult installXPModule(File apk) {
        return getMindPackageManager().s(apk.getAbsolutePath(), InstallOption.a().e(), -4);
    }

    @Override // com.xinzhu.overmind.client.a
    public boolean isHideRoot() {
        return this.mClientConfiguration.isHideRoot();
    }

    @Override // com.xinzhu.overmind.client.a
    public boolean isHideXposed() {
        return this.mClientConfiguration.isHideXposed();
    }

    public boolean isInstalled(String packageName, int userId) {
        return getMindPackageManager().t(packageName, userId);
    }

    public boolean isInstalledXposedModule(String packageName) {
        return false;
    }

    public boolean isMainProcess() {
        return this.mProcessType == ProcessType.Main;
    }

    public boolean isModuleEnable(String packageName) {
        return false;
    }

    public boolean isMonitorProcess() {
        return this.mProcessType == ProcessType.PluginMonitor;
    }

    @Override // com.xinzhu.overmind.client.a
    public boolean isPluginValid() {
        return this.mClientConfiguration.isPluginValid();
    }

    public boolean isServerProcess() {
        return this.mProcessType == ProcessType.Server;
    }

    @Override // com.xinzhu.overmind.client.a
    public boolean isUseGlobalFakePath() {
        return this.mClientConfiguration.isUseGlobalFakePath();
    }

    public boolean isVirtualProcess() {
        return this.mProcessType == ProcessType.MAppClient;
    }

    public boolean isXPEnable() {
        return false;
    }

    public boolean isXposedModule(File file) {
        return false;
    }

    public boolean launchApk(String packageName, int userId) {
        Intent j4;
        if ((!getMindPackageManager().k(packageName).k() || com.xinzhu.overmind.plugin.b.i()) && (j4 = getMindPackageManager().j(packageName, userId)) != null) {
            new Thread(new c(j4, userId)).start();
            return true;
        }
        return false;
    }

    public void setActivityLifecycleCallback(com.xinzhu.overmind.client.hook.delegate.a activityLifecycleCallback) {
        if (activityLifecycleCallback != null) {
            this.mActivityLifecycleCallback = activityLifecycleCallback;
            return;
        }
        throw new IllegalArgumentException("activityLifecycleCallback is null!");
    }

    public void setAppLifecycleCallback(com.xinzhu.overmind.client.hook.a appLifecycleCallback) {
        if (appLifecycleCallback != null) {
            this.mAppLifecycleCallback = appLifecycleCallback;
            return;
        }
        throw new IllegalArgumentException("AppLifecycleCallback is null!");
    }

    public void setCustomCallback(CustomCallback customCallback) {
        if (customCallback != null) {
            this.mCustomCallback = customCallback;
            return;
        }
        throw new IllegalArgumentException("customCallback is null!");
    }

    public void setExceptionHandler(Thread.UncaughtExceptionHandler exceptionHandler) {
        this.mExceptionHandler = exceptionHandler;
    }

    public void setModuleEnable(String packageName, boolean enable) {
    }

    public void setXPEnable(boolean enable) {
    }

    public void startActivity(Intent intent, int userId) {
        getMindActivityManager().startActivity(intent, userId);
    }

    public void stopApk(String packageName, int userId) {
        com.xinzhu.overmind.client.frameworks.a.d().A(packageName, userId);
    }

    public void uninstallPackage(String packageName) {
        getMindPackageManager().D(packageName);
    }

    public void uninstallPackageAsUser(String packageName, int userId) {
        getMindPackageManager().E(packageName, userId);
    }

    public void uninstallXPModule(String packageName) {
        uninstallPackage(packageName);
    }

    public InstallResult installPackageAsUser_Storage(Uri apk, int userId) {
        return getMindPackageManager().s(apk.toString(), InstallOption.a().d(), userId);
    }

    public InstallResult installXPModule(Uri apk) {
        return getMindPackageManager().s(apk.toString(), InstallOption.a().e().d(), -4);
    }

    public boolean isInstalled(String packageName) {
        for (MindUserInfo mindUserInfo : h.d().f()) {
            if (getMindPackageManager().t(packageName, mindUserInfo.f64670a)) {
                return true;
            }
        }
        return false;
    }

    public InstallResult installXPModule(String packageName) {
        try {
            return getMindPackageManager().s(getPackageManager().getPackageInfo(packageName, 0).applicationInfo.sourceDir, InstallOption.b().e(), -4);
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return new InstallResult().a(e4.getMessage());
        }
    }
}
