package com.xinzhu.overmind.client;

import android.app.Activity;
import android.app.Application;
import android.app.DialogFragment;
import android.app.Instrumentation;
import android.app.Service;
import android.content.AttributionSource;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.ArrayMap;
import com.xinzhu.haunted.android.app.g;
import com.xinzhu.haunted.android.app.t;
import com.xinzhu.haunted.android.app.w;
import com.xinzhu.haunted.android.os.r;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.c;
import com.xinzhu.overmind.client.hook.fixer.ContextFixer;
import com.xinzhu.overmind.entity.ClientConfig;
import com.xinzhu.overmind.server.ProcessRecord;
import com.xinzhu.overmind.server.os.MindDeviceInfo;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XC_MethodReplacement;
import de.robv.android.xposed.XposedHelpers;
import java.lang.reflect.Method;
import java.security.Security;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: Overlord.java */
/* loaded from: classes.dex */
public class e extends c.b {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int HANDLE_FINISH = 0;
    public static final int HANDLE_NEW_INTENT = 0;
    public static final String TAG = e.class.getSimpleName();
    private static e sOverlord;
    private IInterface mActivityThread;
    private l mBoundApplication;
    private ClientConfig mClientConfig;
    private Application mInitialApplication;
    private List<ProviderInfo> mProviders = new ArrayList();
    private final Handler mH = new Handler(Looper.getMainLooper());

    /* compiled from: Overlord.java */
    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IBinder f63965a;

        a(final IBinder val$token) {
            this.f63965a = val$token;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            ArrayMap<IBinder, Object> Q = new com.xinzhu.haunted.android.app.g(Overmind.mainThread()).Q();
            if (Q.isEmpty() || (obj = Q.get(this.f63965a)) == null) {
                return;
            }
            Activity g4 = new g.a(obj).g();
            while (g4.getParent() != null) {
                g4 = g4.getParent();
            }
            com.xinzhu.haunted.android.app.a aVar = new com.xinzhu.haunted.android.app.a(g4);
            int j4 = aVar.j();
            Intent k4 = aVar.k();
            if (com.xinzhu.overmind.utils.e.d()) {
                new com.xinzhu.haunted.android.app.l(com.xinzhu.haunted.android.app.d.c()).g(this.f63965a, j4, k4, 0);
            } else if (com.xinzhu.overmind.utils.e.a()) {
                new com.xinzhu.haunted.android.app.l(com.xinzhu.haunted.android.app.d.c()).h(this.f63965a, j4, k4, false);
            } else {
                throw new RuntimeException("not support lower than sdk 21");
            }
            aVar.n(true);
        }
    }

    /* compiled from: Overlord.java */
    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f63967a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ IBinder f63968b;

        b(final Intent val$intent, final IBinder val$token) {
            this.f63967a = val$intent;
            this.f63968b = val$token;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent;
            if (Build.VERSION.SDK_INT >= 22) {
                intent = (Intent) com.xinzhu.haunted.com.android.internal.content.a.b(this.f63967a, Overmind.getHostPkg()).f63822a;
            } else {
                intent = this.f63967a;
            }
            com.xinzhu.haunted.android.app.g gVar = new com.xinzhu.haunted.android.app.g(Overmind.mainThread());
            if (com.xinzhu.overmind.utils.e.h()) {
                gVar.a0(gVar.Q().get(this.f63968b), Collections.singletonList(intent));
            } else if (gVar.A(this.f63968b, Collections.singletonList(intent))) {
                gVar.d0(this.f63968b, Collections.singletonList(intent));
            } else if (gVar.B(this.f63968b, Collections.singletonList(intent), true)) {
                gVar.e0(this.f63968b, Collections.singletonList(intent), true);
            } else if (gVar.w(this.f63968b, Collections.singletonList(intent))) {
                gVar.Z(this.f63968b, Collections.singletonList(intent));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Overlord.java */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f63970a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f63971b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ConditionVariable f63972c;

        c(final String val$packageName, final String val$processName, final ConditionVariable val$conditionVariable) {
            this.f63970a = val$packageName;
            this.f63971b = val$processName;
            this.f63972c = val$conditionVariable;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.handleBindApplication(this.f63970a, this.f63971b);
            this.f63972c.open();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Overlord.java */
    /* loaded from: classes.dex */
    public class d extends XC_MethodHook {
        d() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        protected void beforeHookedMethod(XC_MethodHook.MethodHookParam param) throws Throwable {
            param.returnEarly = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Overlord.java */
    /* renamed from: com.xinzhu.overmind.client.e$e  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0400e extends XC_MethodHook {
        C0400e() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        public void callAfterHookedMethod(XC_MethodHook.MethodHookParam param) throws Throwable {
            ProcessRecord c4 = com.xinzhu.overmind.client.frameworks.a.d().c(Binder.getCallingPid());
            if (c4 == null || c4.processName == null) {
                return;
            }
            param.setResult(Integer.valueOf(c4.vuid));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Overlord.java */
    /* loaded from: classes.dex */
    public class f extends XC_MethodHook {
        f() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        public void callAfterHookedMethod(XC_MethodHook.MethodHookParam param) throws Throwable {
            param.setResult(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Overlord.java */
    /* loaded from: classes.dex */
    public class g extends XC_MethodReplacement {
        g() {
        }

        @Override // de.robv.android.xposed.XC_MethodReplacement
        protected Object replaceHookedMethod(XC_MethodHook.MethodHookParam param) throws Throwable {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Overlord.java */
    /* loaded from: classes.dex */
    public class h extends XC_MethodHook {
        h() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        protected void afterHookedMethod(XC_MethodHook.MethodHookParam param) throws Throwable {
            try {
                MatrixCursor matrixCursor = (MatrixCursor) param.getResult();
                String[] strArr = (String[]) param.args[3];
                if (Arrays.asList(strArr).contains("android_id")) {
                    MatrixCursor matrixCursor2 = new MatrixCursor(matrixCursor.getColumnNames());
                    for (int i2 = 0; i2 < strArr.length; i2++) {
                        if (strArr[i2].equals("android_id")) {
                            MindDeviceInfo b4 = com.xinzhu.overmind.client.frameworks.b.a().b();
                            if (b4 != null) {
                                matrixCursor2.addRow(new Object[]{"android_id", b4.f64490a});
                            }
                        } else if (matrixCursor.moveToPosition(i2)) {
                            matrixCursor2.addRow(new String[]{matrixCursor.getString(0), matrixCursor.getString(1)});
                        }
                    }
                    param.setResult(matrixCursor2);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Overlord.java */
    /* loaded from: classes.dex */
    public class i extends XC_MethodHook {
        i() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        protected void beforeHookedMethod(XC_MethodHook.MethodHookParam param) {
            try {
                if (param.thisObject.getClass().getName().equals("com.google.android.gms.common.ErrorDialogFragment")) {
                    String str = e.TAG;
                    com.xinzhu.overmind.b.l(str, "DialogFragment ondismiss " + param.args[0] + " " + param.thisObject.getClass());
                    Method declaredMethod = param.thisObject.getClass().getDeclaredMethod("onCancel", DialogInterface.class);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(param.thisObject, (DialogInterface) param.args[0]);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Overlord.java */
    /* loaded from: classes.dex */
    public class j extends XC_MethodHook {
        j() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        protected void beforeHookedMethod(XC_MethodHook.MethodHookParam param) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            for (int i2 = 0; i2 < stackTrace.length; i2++) {
                if (stackTrace[i2].getClassName().equals("android.widget.TextView") && stackTrace[i2].getMethodName().equals("setInputType")) {
                    param.returnEarly = true;
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Overlord.java */
    /* loaded from: classes.dex */
    public class k extends XC_MethodHook {
        k() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        protected void beforeHookedMethod(XC_MethodHook.MethodHookParam param) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            for (int i2 = 0; i2 < stackTrace.length; i2++) {
                if (stackTrace[i2].getClassName().equals("android.widget.TextView") && stackTrace[i2].getMethodName().equals("setInputType")) {
                    param.returnEarly = true;
                    return;
                }
            }
        }
    }

    /* compiled from: Overlord.java */
    /* loaded from: classes.dex */
    public static class l {

        /* renamed from: a  reason: collision with root package name */
        int f63982a;

        /* renamed from: b  reason: collision with root package name */
        String f63983b;

        /* renamed from: c  reason: collision with root package name */
        ApplicationInfo f63984c;

        /* renamed from: d  reason: collision with root package name */
        List<ProviderInfo> f63985d;

        /* renamed from: e  reason: collision with root package name */
        Object f63986e;
    }

    private Context createPackageContext(ApplicationInfo info) {
        try {
            return Overmind.getContext().createPackageContext(info.packageName, 3);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private void gameSpecificHooks(String pkgName) {
        try {
            String str = TAG;
            com.xinzhu.overmind.b.c(str, "gameSpecificHooks " + pkgName);
            if (pkgName.equals(com.xinzhu.overmind.client.hook.env.b.f64118d)) {
                try {
                    XposedHelpers.findAndHookMethod("com.google.android.gsf.gservices.GservicesProvider", getApplication().getClassLoader(), "query", Uri.class, String[].class, String.class, String[].class, String.class, new h());
                } catch (Throwable unused) {
                }
            }
            XposedHelpers.findAndHookMethod(DialogFragment.class, "onDismiss", DialogInterface.class, new i());
            ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
            Class cls = Boolean.TYPE;
            XposedHelpers.findAndHookMethod("android.widget.TextView", systemClassLoader, "applySingleLine", cls, cls, cls, new j());
        } catch (Throwable unused2) {
            com.xinzhu.overmind.b.c(TAG, "Cannot do hook both!");
        }
    }

    public static Application getApplication() {
        return getClient().mInitialApplication;
    }

    public static int getBaseVUid() {
        if (getClientConfig() == null) {
            return 10000;
        }
        return getClientConfig().f64274g;
    }

    public static e getClient() {
        if (sOverlord == null) {
            synchronized (e.class) {
                if (sOverlord == null) {
                    sOverlord = new e();
                }
            }
        }
        return sOverlord;
    }

    public static synchronized ClientConfig getClientConfig() {
        ClientConfig clientConfig;
        synchronized (e.class) {
            clientConfig = getClient().mClientConfig;
        }
        return clientConfig;
    }

    public static List<ProviderInfo> getProviders() {
        return getClient().mProviders;
    }

    public static int getUid() {
        if (getClientConfig() == null) {
            return -1;
        }
        return getClientConfig().f64272e;
    }

    public static int getUserId() {
        if (getClientConfig() == null) {
            return 0;
        }
        return getClientConfig().f64273f;
    }

    public static String getVPackageName() {
        if (getClientConfig() != null) {
            return getClientConfig().f64268a;
        }
        if (getClient().mInitialApplication != null) {
            return getClient().mInitialApplication.getPackageName();
        }
        return null;
    }

    public static int getVPid() {
        if (getClientConfig() == null) {
            return -1;
        }
        return getClientConfig().f64270c;
    }

    public static String getVProcessName() {
        if (getClientConfig() != null) {
            return getClientConfig().f64269b;
        }
        if (getClient().mBoundApplication != null) {
            return getClient().mBoundApplication.f63983b;
        }
        return null;
    }

    public static int getVUid() {
        if (getClientConfig() == null) {
            return 10000;
        }
        return getClientConfig().f64271d;
    }

    private void installProviders(Context context, String processName, List<ProviderInfo> provider) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            for (ProviderInfo providerInfo : provider) {
                providerInfo.authority = providerInfo.authority.split(";")[0];
                String str = TAG;
                com.xinzhu.overmind.b.c(str, "installProviders info " + providerInfo);
                if (processName.equals(providerInfo.processName)) {
                    if (com.xinzhu.overmind.utils.e.v()) {
                        new com.xinzhu.haunted.android.app.g(Overmind.mainThread()).c0(context, null, providerInfo, false, true, true);
                    } else {
                        new com.xinzhu.haunted.android.app.g(Overmind.mainThread()).b0(context, null, providerInfo, false, true, true);
                    }
                }
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            com.xinzhu.overmind.client.hook.delegate.c.d();
        }
    }

    private void uidHooks() {
        try {
            XposedHelpers.findAndHookMethod(Binder.class, "getCallingUid", new C0400e());
            if (Build.VERSION.SDK_INT >= 31) {
                XposedHelpers.findAndHookMethod(AttributionSource.class, "checkCallingUid", new f());
            }
            if (com.xinzhu.overmind.utils.e.j()) {
                XposedHelpers.findAndHookMethod("android.provider.DeviceConfig", Overmind.getContext().getClassLoader(), "enforceReadPermission", Context.class, String.class, new g());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.client.c
    public IBinder acquireContentProviderClient(ProviderInfo providerInfo) throws RemoteException {
        if (!isInit()) {
            bindApplication(getClientConfig().f64268a, getClientConfig().f64269b);
        }
        IInterface b4 = new com.xinzhu.haunted.android.content.e(Overmind.getContext().getContentResolver().acquireContentProviderClient(providerInfo.authority.split(";")[0])).b();
        if (b4 == null) {
            return null;
        }
        return new com.xinzhu.overmind.client.hook.proxies.context.providers.a().b(b4, Overmind.getHostPkg()).asBinder();
    }

    public void bindApplication(final String packageName, final String processName) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            ConditionVariable conditionVariable = new ConditionVariable();
            new Handler(Looper.getMainLooper()).post(new c(packageName, processName, conditionVariable));
            conditionVariable.block();
            return;
        }
        handleBindApplication(packageName, processName);
    }

    public Service createJobService(ServiceInfo serviceInfo) {
        if (!getClient().isInit()) {
            getClient().bindApplication(serviceInfo.packageName, serviceInfo.processName);
        }
        try {
            Service service = (Service) new t(this.mBoundApplication.f63986e).i().loadClass(serviceInfo.name).newInstance();
            try {
                Context createPackageContext = Overmind.getContext().createPackageContext(serviceInfo.packageName, 3);
                new com.xinzhu.haunted.android.app.k(createPackageContext).p(service);
                new w(service).a(createPackageContext, Overmind.mainThread(), serviceInfo.name, getClient().getActivityThread(), this.mInitialApplication, com.xinzhu.haunted.android.app.d.c());
                ContextFixer.fix(createPackageContext);
                service.onCreate();
                service.onBind(null);
                return service;
            } catch (Exception e4) {
                throw new RuntimeException("Unable to create JobService " + serviceInfo.name + ": " + e4.toString(), e4);
            }
        } catch (Exception e5) {
            throw new RuntimeException("Unable to instantiate service " + serviceInfo.name + ": " + e5.toString(), e5);
        }
    }

    public Service createService(ServiceInfo serviceInfo) {
        if (!getClient().isInit()) {
            getClient().bindApplication(serviceInfo.packageName, serviceInfo.processName);
        }
        try {
            Service service = (Service) new t(this.mBoundApplication.f63986e).i().loadClass(serviceInfo.name).newInstance();
            try {
                Context createPackageContext = Overmind.getContext().createPackageContext(serviceInfo.packageName, 3);
                new com.xinzhu.haunted.android.app.k(createPackageContext).p(service);
                new w(service).a(createPackageContext, Overmind.mainThread(), serviceInfo.name, getClient().getActivityThread(), this.mInitialApplication, com.xinzhu.haunted.android.app.d.c());
                ContextFixer.fix(createPackageContext);
                service.onCreate();
                return service;
            } catch (Exception e4) {
                throw new RuntimeException("Unable to create service " + serviceInfo.name + ": " + e4.toString(), e4);
            }
        } catch (Exception e5) {
            throw new RuntimeException("Unable to instantiate service " + serviceInfo.name + ": " + e5.toString(), e5);
        }
    }

    @Override // com.xinzhu.overmind.client.c
    public void finishActivity(final IBinder token) {
        this.mH.post(new a(token));
    }

    @Override // com.xinzhu.overmind.client.c
    public IBinder getActivityThread() {
        return new com.xinzhu.haunted.android.app.g(Overmind.mainThread()).H();
    }

    public synchronized void handleBindApplication(String packageName, String processName) {
        try {
            com.xinzhu.overmind.client.b.a();
        } catch (Throwable unused) {
        }
        if (this.mBoundApplication != null) {
            return;
        }
        com.xinzhu.overmind.client.hook.f.d().c(packageName, Overmind.get().getCustomCallback().customIORedirect(packageName, getUserId()));
        VMCore.initClientClassloader(Overmind.getContext().getClassLoader());
        VMCore.init(Build.VERSION.SDK_INT, Overmind.getHostPkg(), getVPackageName(), com.xinzhu.overmind.a.l().getAbsolutePath());
        ApplicationInfo applicationInfo = com.xinzhu.overmind.server.pm.i.d(Overmind.getMindPackageManager().l(packageName, 8, getUserId())).applicationInfo;
        com.xinzhu.overmind.client.hook.env.c.h(processName, applicationInfo);
        this.mProviders = com.xinzhu.overmind.client.frameworks.f.d().v(processName, getVUid(), 128, getUserId());
        com.xinzhu.haunted.android.app.g gVar = new com.xinzhu.haunted.android.app.g(Overmind.mainThread());
        Object R = gVar.R();
        Context createPackageContext = createPackageContext(applicationInfo);
        Object m4 = new com.xinzhu.haunted.android.app.k(createPackageContext).m();
        t tVar = new t(m4);
        tVar.s(false);
        tVar.q(applicationInfo);
        int i2 = applicationInfo.targetSdkVersion;
        if (i2 < 9) {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(StrictMode.getThreadPolicy()).permitNetwork().build());
        }
        if (com.xinzhu.overmind.utils.e.d() && i2 < 24) {
            r.c();
        }
        com.xinzhu.haunted.dalvik.system.a.e().h(applicationInfo.targetSdkVersion);
        try {
            XposedHelpers.findAndHookMethod("dalvik.system.VMRuntime", ClassLoader.getSystemClassLoader(), "setHiddenApiExemptions", String[].class, new d());
        } catch (Throwable unused2) {
        }
        Overmind.get().getCustomCallback().customLoadLibgggg(packageName, getUserId());
        l lVar = new l();
        lVar.f63984c = applicationInfo;
        lVar.f63983b = processName;
        lVar.f63986e = m4;
        lVar.f63985d = this.mProviders;
        g.b bVar = new g.b(R);
        bVar.m(new ComponentName(lVar.f63984c.packageName, Instrumentation.class.getName()));
        bVar.k(lVar.f63984c);
        bVar.l(lVar.f63986e);
        bVar.n(lVar.f63983b);
        bVar.o(lVar.f63985d);
        this.mBoundApplication = lVar;
        Security.removeProvider("AndroidNSSP");
        if (com.xinzhu.overmind.utils.e.d()) {
            com.xinzhu.haunted.android.security.net.config.a.b(null);
        }
        try {
            uidHooks();
            Overmind.get().getAppLifecycleCallback().c(packageName, processName, createPackageContext);
            Application p3 = tVar.p(false, null);
            this.mInitialApplication = p3;
            gVar.j0(p3);
            ContextFixer.fix((Context) new com.xinzhu.haunted.android.app.g(Overmind.mainThread()).O());
            ContextFixer.fix(this.mInitialApplication);
            installProviders(this.mInitialApplication, lVar.f63983b, lVar.f63985d);
            Overmind.get().getAppLifecycleCallback().b(packageName, processName, p3);
            com.xinzhu.overmind.client.hook.delegate.b.e().callApplicationOnCreate(p3);
            Overmind.get().getAppLifecycleCallback().a(packageName, processName, p3);
            registerReceivers(this.mInitialApplication);
            com.xinzhu.overmind.client.hook.d.c().b(com.xinzhu.overmind.client.hook.proxies.app.b.class);
            gameSpecificHooks(packageName);
        } catch (Exception e4) {
            e4.printStackTrace();
            throw new RuntimeException("Failed to makeApplication", e4);
        }
    }

    @Override // com.xinzhu.overmind.client.c
    public void handleNewIntent(final IBinder token, final Intent intent) {
        this.mH.post(new b(intent, token));
    }

    public void initProcess(ClientConfig clientConfig) {
        if (this.mClientConfig == null) {
            this.mClientConfig = clientConfig;
            return;
        }
        throw new RuntimeException("reject init process: " + clientConfig.f64269b + ", this process is : " + this.mClientConfig.f64269b);
    }

    public boolean isInit() {
        return this.mBoundApplication != null;
    }

    public void loadXposed(Context context) {
    }

    @Override // com.xinzhu.overmind.client.c
    public IBinder peekService(Intent intent) {
        return com.xinzhu.overmind.server.b.b().k(intent);
    }

    public void registerReceivers(Application application) {
        try {
            Intent intent = new Intent();
            intent.setPackage(application.getPackageName());
            for (ResolveInfo resolveInfo : Overmind.getMindPackageManager().u(intent, 64, null, getUserId())) {
                String str = resolveInfo.activityInfo.processName;
                if (str == null || str.equals(getVProcessName())) {
                    this.mInitialApplication.registerReceiver((BroadcastReceiver) this.mInitialApplication.getClassLoader().loadClass(resolveInfo.activityInfo.name).newInstance(), resolveInfo.filter);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.client.c
    public void restartJobService(String selfId) throws RemoteException {
    }

    @Override // com.xinzhu.overmind.client.c
    public void stopService(Intent intent) {
        com.xinzhu.overmind.server.b.b().stopService(intent);
    }

    @Override // com.xinzhu.overmind.client.c
    public void bindApplication() {
        if (isInit()) {
            return;
        }
        bindApplication(getVPackageName(), getVProcessName());
    }
}
