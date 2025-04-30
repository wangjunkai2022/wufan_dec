package com.xinzhu.overmind.client.hook.proxies.am;

import android.app.ActivityManager;
import android.app.IServiceConnection;
import android.content.ComponentName;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Process;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.xinzhu.haunted.android.app.c;
import com.xinzhu.haunted.android.app.l;
import com.xinzhu.haunted.android.app.t;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.proxies.am.d;
import com.xinzhu.overmind.client.stub.record.StubTrampolineRecord;
import com.xinzhu.overmind.entity.ClientConfig;
import com.xinzhu.overmind.entity.PendingIntentRecord;
import com.xinzhu.overmind.server.user.MindUserHandle;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
/* compiled from: ActivityManagerStub.java */
/* loaded from: classes.dex */
public class b extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    public static final String f64149f = "ActivityManagerStub";

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class a extends C0405b {
        a() {
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.b.C0405b, com.xinzhu.overmind.client.hook.g
        protected String c() {
            return "bindIsolatedService";
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.b.C0405b
        protected boolean f() {
            return true;
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.am.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0405b extends com.xinzhu.overmind.client.hook.g {
        C0405b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "bindService";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            Intent intent = (Intent) args[2];
            String str = (String) args[3];
            IServiceConnection iServiceConnection = (IServiceConnection) args[4];
            com.xinzhu.overmind.utils.helpers.a.f(args);
            com.xinzhu.overmind.utils.helpers.a.e(args);
            ResolveInfo B = Overmind.getMindPackageManager().B(intent, 0, str, com.xinzhu.overmind.client.e.getUserId());
            if (B != null) {
                if (f()) {
                    args[6] = null;
                }
                Intent bindService = Overmind.getMindActivityManager().bindService(intent, iServiceConnection != null ? iServiceConnection.asBinder() : null, str, com.xinzhu.overmind.client.e.getUserId());
                if (iServiceConnection != null) {
                    ServiceInfo serviceInfo = B.serviceInfo;
                    args[4] = com.xinzhu.overmind.client.hook.delegate.d.createProxy(iServiceConnection, new ComponentName(serviceInfo.packageName, serviceInfo.name));
                }
                if (bindService != null) {
                    args[2] = bindService;
                    return method.invoke(who, args);
                }
            }
            if (com.xinzhu.overmind.client.hook.env.a.e(intent.getComponent())) {
                return method.invoke(who, args);
            }
            com.xinzhu.overmind.b.c(b.f64149f, "bindService failed and skip " + intent);
            return 0;
        }

        protected boolean f() {
            return false;
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class c extends C0405b {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.am.b.C0405b, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "bindServiceInstance";
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class d extends com.xinzhu.overmind.client.hook.g {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "broadcastIntent";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int f4 = f(args);
            com.xinzhu.overmind.utils.helpers.a.f(args);
            Intent k4 = com.xinzhu.overmind.client.hook.env.a.k(Overmind.getMindActivityManager().w((Intent) args[f4], (String) args[f4 + 1], com.xinzhu.overmind.client.e.getUserId()));
            if (k4 != null) {
                args[f4] = k4;
            }
            for (int i2 = 0; i2 < args.length; i2++) {
                if (args[i2] instanceof String[]) {
                    args[i2] = null;
                }
            }
            return method.invoke(who, args);
        }

        int f(Object[] args) {
            for (int i2 = 0; i2 < args.length; i2++) {
                if (args[i2] instanceof Intent) {
                    return i2;
                }
            }
            return 1;
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class e extends d {
        e() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.am.b.d, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "broadcastIntentWithFeature";
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class f extends com.xinzhu.overmind.client.hook.g {
        f() {
        }

        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "checkPermission";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            PermissionInfo[] permissionInfoArr;
            String[] strArr;
            String str = (String) args[0];
            if (com.xinzhu.overmind.client.hook.env.a.b(str)) {
                return 0;
            }
            PackageInfo l4 = Overmind.getMindPackageManager().l(com.xinzhu.overmind.client.e.getVPackageName(), 4096, com.xinzhu.overmind.client.e.getUserId());
            if (l4 != null && (permissionInfoArr = l4.permissions) != null) {
                for (PermissionInfo permissionInfo : permissionInfoArr) {
                    if (str.equals(permissionInfo.name) && (strArr = l4.requestedPermissions) != null && Arrays.asList(strArr).contains(str)) {
                        return 0;
                    }
                }
            }
            args[2] = Integer.valueOf(Overmind.getHostUid());
            return method.invoke(who, args);
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class g extends f {
        g() {
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.b.f, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "checkPermissionWithToken";
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class h extends com.xinzhu.overmind.client.hook.g {
        h() {
        }

        private int f() {
            return com.xinzhu.overmind.utils.e.f() ? 2 : 1;
        }

        private int g() {
            return f() + 1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getContentProvider";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Exception {
            Object i2;
            IBinder iBinder;
            int f4 = f();
            Object obj = args[f4];
            e(args, g());
            if (obj instanceof String) {
                String str = ((String) obj).split(";")[0];
                args[f4] = str;
                if (com.xinzhu.overmind.client.f.n(str)) {
                    return method.invoke(who, args);
                }
                if (com.xinzhu.overmind.utils.e.f()) {
                    args[1] = Overmind.getHostPkg();
                }
                if (!str.equals("settings") && !str.equals("media") && !str.equals("telephony") && !str.equals("downloads")) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("hook getContentProvider: ");
                    sb.append(str);
                    ProviderInfo z3 = Overmind.getMindPackageManager().z(str, 128, com.xinzhu.overmind.client.e.getUserId());
                    if (z3 != null && Overmind.get().isInstalled(z3.packageName)) {
                        if (com.xinzhu.overmind.client.e.getVPid() != -1) {
                            ClientConfig k4 = Overmind.getMindActivityManager().k(z3.packageName, z3.processName, com.xinzhu.overmind.client.e.getUserId());
                            iBinder = k4.f64270c != com.xinzhu.overmind.client.e.getVPid() ? Overmind.getMindActivityManager().a(z3) : null;
                            args[f4] = k4.f64276i ? com.xinzhu.overmind.client.f.c(k4.f64270c) : com.xinzhu.overmind.client.f.g(k4.f64270c);
                            args[g()] = Integer.valueOf(MindUserHandle.k(Overmind.getHostUid()));
                        } else {
                            iBinder = null;
                        }
                        Object invoke = method.invoke(who, args);
                        if (invoke == null) {
                            return null;
                        }
                        com.xinzhu.overmind.utils.s.t(invoke).f(PapayPayDetialActivity_.f34856k).q(z3);
                        if (iBinder != null) {
                            com.xinzhu.overmind.utils.s.t(invoke).f(com.umeng.analytics.pro.c.M).q(new com.xinzhu.overmind.client.hook.proxies.context.providers.a().b((IInterface) com.xinzhu.haunted.android.content.g.a(iBinder), Overmind.getHostPkg()));
                        }
                        return invoke;
                    }
                    try {
                        Object invoke2 = method.invoke(who, args);
                        if (invoke2 != null && (i2 = com.xinzhu.overmind.utils.s.t(invoke2).f(com.umeng.analytics.pro.c.M).i()) != null && !(i2 instanceof Proxy)) {
                            com.xinzhu.overmind.utils.s.t(invoke2).f(com.umeng.analytics.pro.c.M).q(new com.xinzhu.overmind.client.hook.proxies.context.providers.a().b((IInterface) i2, Overmind.getHostPkg()));
                        }
                        return invoke2;
                    } catch (Throwable th) {
                        th.printStackTrace();
                        return null;
                    }
                }
                Object invoke3 = method.invoke(who, args);
                com.xinzhu.overmind.client.hook.delegate.c.update(invoke3, str);
                return invoke3;
            }
            return method.invoke(who, args);
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class i extends com.xinzhu.overmind.client.hook.g {
        i() {
        }

        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getCurrentUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            try {
                com.xinzhu.haunted.android.content.pm.n c4 = com.xinzhu.haunted.android.content.pm.n.c(com.xinzhu.overmind.client.e.getUserId(), "Admin", com.xinzhu.haunted.android.content.pm.n.d());
                Objects.requireNonNull(c4);
                return c4.f63187a;
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class j extends com.xinzhu.overmind.client.hook.g {
        j() {
        }

        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getInfoForIntentSender";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            PendingIntentRecord b4;
            IInterface iInterface = (IInterface) args[0];
            if (iInterface != null && (b4 = com.xinzhu.overmind.client.frameworks.a.d().b(iInterface.asBinder())) != null) {
                c.a f4 = c.a.f(b4.f64280a, b4.f64281b, (b4.f64285f & 67108864) != 0, b4.f64286g);
                if (f4 != null) {
                    return f4.f62467a;
                }
            }
            Object invoke = method.invoke(who, args);
            c.a aVar = new c.a(invoke);
            com.xinzhu.overmind.b.c(b.f64149f, "<Bug likely> getInfoForIntentSender fallback to system, CreatorPackage: " + aVar.g() + " " + iInterface);
            return invoke;
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class k extends com.xinzhu.overmind.client.hook.g {
        k() {
        }

        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getIntentForIntentSender";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            Intent intent = (Intent) method.invoke(who, args);
            if (intent != null) {
                return StubTrampolineRecord.create(intent).mTarget;
            }
            return null;
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class l extends com.xinzhu.overmind.client.hook.g {
        l() {
        }

        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getPackageForIntentSender";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            PendingIntentRecord b4;
            IInterface iInterface = (IInterface) args[0];
            if (iInterface != null && (b4 = com.xinzhu.overmind.client.frameworks.a.d().b(iInterface.asBinder())) != null) {
                return b4.f64280a;
            }
            return method.invoke(who, args);
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class m extends com.xinzhu.overmind.client.hook.g {
        m() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getRunningAppProcesses";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            List<ActivityManager.RunningAppProcessInfo> list = (List) method.invoke(who, args);
            if (list == null || com.xinzhu.overmind.client.e.getClientConfig() == null) {
                return null;
            }
            boolean z3 = false;
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : list) {
                if (runningAppProcessInfo.pid == Process.myPid()) {
                    runningAppProcessInfo.processName = com.xinzhu.overmind.client.e.getVProcessName();
                    z3 = true;
                }
            }
            if (!z3) {
                list.add(new ActivityManager.RunningAppProcessInfo(com.xinzhu.overmind.client.e.getVProcessName(), Process.myPid(), new String[]{com.xinzhu.overmind.client.e.getVPackageName()}));
            }
            return list;
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class n extends com.xinzhu.overmind.client.hook.g {
        n() {
        }

        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getUidForIntentSender";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            PendingIntentRecord b4;
            IInterface iInterface = (IInterface) args[0];
            if (iInterface != null && (b4 = com.xinzhu.overmind.client.frameworks.a.d().b(iInterface.asBinder())) != null) {
                return Integer.valueOf(b4.f64281b);
            }
            return method.invoke(who, args);
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class o extends com.xinzhu.overmind.client.hook.g {
        o() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "grantUriPermission";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            return method.invoke(who, args);
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class p extends com.xinzhu.overmind.client.hook.g {
        p() {
        }

        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "handleIncomingUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            args[1] = Integer.valueOf(Overmind.getHostUid());
            args[2] = Integer.valueOf(Overmind.getHostUserId());
            if (args[args.length - 1] instanceof String) {
                args[args.length - 1] = Overmind.getHostPkg();
            }
            return method.invoke(who, args);
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class q extends com.xinzhu.overmind.client.hook.g {
        q() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "peekService";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.e(args);
            return Overmind.getMindActivityManager().t((Intent) args[0], (String) args[1], com.xinzhu.overmind.client.e.getUserId());
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class r extends com.xinzhu.overmind.client.hook.g {
        r() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "publishService";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return method.invoke(who, args);
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class s extends com.xinzhu.overmind.client.hook.g {

        /* renamed from: a  reason: collision with root package name */
        private WeakHashMap<IBinder, IIntentReceiver> f64150a = new WeakHashMap<>();

        /* compiled from: ActivityManagerStub.java */
        /* loaded from: classes.dex */
        class a implements IBinder.DeathRecipient {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ IBinder f64151a;

            a(final IBinder val$originBinder) {
                this.f64151a = val$originBinder;
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                this.f64151a.unlinkToDeath(this, 0);
                s.this.f64150a.remove(this.f64151a);
            }
        }

        /* compiled from: ActivityManagerStub.java */
        /* renamed from: com.xinzhu.overmind.client.hook.proxies.am.b$s$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class BinderC0406b extends IIntentReceiver.Stub {
            IntentFilter mFilter;
            IInterface mOrigin;

            BinderC0406b(IInterface origin, IntentFilter filter) {
                this.mOrigin = origin;
                this.mFilter = filter;
            }

            @Override // android.content.IIntentReceiver
            public void performReceive(Intent intent, int resultCode, String data, Bundle extras, boolean ordered, boolean sticky, int sendingUser) {
                new com.xinzhu.haunted.android.content.k(this.mOrigin).b(com.xinzhu.overmind.client.hook.env.a.i(intent), resultCode, data, extras, ordered, sticky, sendingUser);
            }
        }

        s() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "registerReceiver";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int a4 = com.xinzhu.overmind.utils.helpers.a.a(args, IntentFilter.class);
            int i2 = a4 - 1;
            int i4 = a4 + 1;
            com.xinzhu.overmind.utils.helpers.a.d(args);
            args[i4] = null;
            e(args, i4 + 1);
            IntentFilter intentFilter = (IntentFilter) args[a4];
            com.xinzhu.overmind.client.hook.env.a.l(intentFilter);
            args[a4] = intentFilter;
            IInterface iInterface = (IInterface) args[i2];
            if (iInterface != null && !(iInterface instanceof BinderC0406b)) {
                IBinder asBinder = iInterface.asBinder();
                asBinder.linkToDeath(new a(asBinder), 0);
                IIntentReceiver iIntentReceiver = this.f64150a.get(asBinder);
                if (iIntentReceiver == null) {
                    iIntentReceiver = new BinderC0406b(iInterface, intentFilter);
                    this.f64150a.put(asBinder, iIntentReceiver);
                }
                WeakReference weakReference = (WeakReference) new t.a.C0374a(iInterface).b();
                if (weakReference != null) {
                    new t.a(weakReference.get()).c(iIntentReceiver);
                    args[i2] = iIntentReceiver;
                }
            }
            return com.xinzhu.overmind.client.hook.env.a.i((Intent) method.invoke(who, args));
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class t extends s {
        t() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.am.b.s, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "registerReceiverWithFeature";
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class u extends com.xinzhu.overmind.client.hook.g {
        u() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "sendIntentSender";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return method.invoke(who, args);
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class v extends com.xinzhu.overmind.client.hook.g {
        v() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "startService";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            Intent intent = (Intent) args[1];
            String str = (String) args[2];
            if (com.xinzhu.overmind.utils.e.v() && (args[3] instanceof Boolean) && ((Boolean) args[3]).booleanValue()) {
                args[3] = Boolean.FALSE;
            }
            com.xinzhu.overmind.utils.helpers.a.f(args);
            ResolveInfo B = Overmind.getMindPackageManager().B(intent, 0, str, com.xinzhu.overmind.client.e.getUserId());
            if (B == null) {
                if (com.xinzhu.overmind.client.hook.env.a.e(intent.getComponent())) {
                    return method.invoke(who, args);
                }
                com.xinzhu.overmind.b.c(b.f64149f, "startService failed and skip " + intent);
                return null;
            }
            try {
                args[1] = Overmind.getMindActivityManager().startService(intent, str, com.xinzhu.overmind.client.e.getUserId());
                if (((ComponentName) method.invoke(who, args)) != null) {
                    ServiceInfo serviceInfo = B.serviceInfo;
                    return new ComponentName(serviceInfo.packageName, serviceInfo.name);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class w extends com.xinzhu.overmind.client.hook.g {
        w() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "stopService";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            String packageName;
            Intent intent = (Intent) args[1];
            String str = (String) args[2];
            com.xinzhu.overmind.utils.helpers.a.f(args);
            if (intent.getComponent() != null && (packageName = intent.getComponent().getPackageName()) != null && com.xinzhu.overmind.client.hook.env.a.f(packageName)) {
                return method.invoke(who, args);
            }
            Intent stopService = Overmind.getMindActivityManager().stopService(intent, str, com.xinzhu.overmind.client.e.getUserId());
            if (stopService != null) {
                com.xinzhu.overmind.b.c(b.f64149f, "stopService called " + stopService);
                args[1] = stopService;
                return method.invoke(who, args);
            }
            return 0;
        }
    }

    /* compiled from: ActivityManagerStub.java */
    /* loaded from: classes.dex */
    static class x extends com.xinzhu.overmind.client.hook.g {
        x() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "unbindService";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            IServiceConnection iServiceConnection = (IServiceConnection) args[0];
            if (iServiceConnection == null) {
                return method.invoke(who, args);
            }
            Overmind.getMindActivityManager().unbindService(iServiceConnection.asBinder(), com.xinzhu.overmind.client.e.getUserId());
            com.xinzhu.overmind.client.hook.delegate.d delegate = com.xinzhu.overmind.client.hook.delegate.d.getDelegate(iServiceConnection.asBinder());
            if (delegate != null) {
                args[0] = delegate;
            }
            return method.invoke(who, args);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public b() {
        /*
            r1 = this;
            android.os.IInterface r0 = com.xinzhu.haunted.android.app.d.c()
            java.util.Objects.requireNonNull(r0)
            android.os.IInterface r0 = (android.os.IInterface) r0
            android.os.IBinder r0 = r0.asBinder()
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xinzhu.overmind.client.hook.proxies.am.b.<init>():void");
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return com.xinzhu.haunted.android.app.d.c() != g();
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        IInterface c4 = com.xinzhu.haunted.android.app.d.c();
        Objects.requireNonNull(c4);
        return l.b.a(c4.asBinder());
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object base, Object proxy) {
        Object d4;
        if (com.xinzhu.overmind.utils.e.v()) {
            d4 = com.xinzhu.haunted.android.app.e.d();
        } else {
            d4 = com.xinzhu.overmind.utils.e.a() ? com.xinzhu.haunted.android.app.d.d() : null;
        }
        new com.xinzhu.haunted.android.util.b(d4).e(proxy);
        m(TTDownloadField.TT_ACTIVITY);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        d(new h());
        d(new v());
        d(new w());
        d(new C0405b());
        d(new a());
        d(new x());
        d(new m());
        d(new l());
        d(new n());
        d(new k());
        d(new d());
        d(new e());
        d(new r());
        d(new q());
        d(new u());
        d(new s());
        d(new t());
        d(new o());
        d(new com.xinzhu.overmind.client.hook.common.c("checkUriPermission", 0));
        d(new f());
        d(new g());
        d(new p());
        d(new com.xinzhu.overmind.client.hook.common.c("setServiceForeground", 0));
        d(new com.xinzhu.overmind.client.hook.common.c("getPackageProcessState", 4));
        d(new com.xinzhu.overmind.client.hook.common.d("getHistoricalProcessExitReasons", com.xinzhu.overmind.client.hook.common.d.f64084f, com.xinzhu.overmind.client.hook.common.d.f64083e));
        d(new d.n());
        d(new d.m());
        d(new d.a());
        d(new d.b());
        d(new d.c());
        d(new d.C0407d());
        d(new d.f());
        d(new d.g());
        d(new d.r());
        d(new d.o());
        d(new d.q());
        d(new d.s());
        d(new d.p());
        d(new d.l());
        d(new d.e());
        d(new d.k());
        d(new d.h());
        d(new d.i());
        d(new d.j());
        d(new i());
        if (com.xinzhu.overmind.utils.e.h()) {
            d(new j());
            d(new c());
        }
    }
}
