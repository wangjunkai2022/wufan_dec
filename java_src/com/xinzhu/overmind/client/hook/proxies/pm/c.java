package com.xinzhu.overmind.client.hook.proxies.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageDataObserver;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.IInterface;
import android.os.Process;
import com.xinzhu.haunted.android.content.pm.h;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.fixer.ContextFixer;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* compiled from: PackageManagerStub.java */
/* loaded from: classes.dex */
public class c extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    public static final String f64218f = "PackageManagerStub";

    /* renamed from: g  reason: collision with root package name */
    private static final int f64219g = 4194304;

    /* renamed from: h  reason: collision with root package name */
    private static final int f64220h = 2097152;

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    class a extends com.xinzhu.overmind.client.hook.common.d {
        a(String name, int replace_pkg_index, int replace_userId_index) {
            super(name, replace_pkg_index, replace_userId_index);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            PermissionInfo[] permissionInfoArr;
            String[] strArr;
            String str = (String) args[0];
            PackageInfo l4 = Overmind.getMindPackageManager().l(com.xinzhu.overmind.client.e.getVPackageName(), 4096, com.xinzhu.overmind.client.e.getUserId());
            if (l4 != null && (permissionInfoArr = l4.permissions) != null) {
                for (PermissionInfo permissionInfo : permissionInfoArr) {
                    if (str.equals(permissionInfo.name) && (strArr = l4.requestedPermissions) != null && Arrays.asList(strArr).contains(str)) {
                        return 0;
                    }
                }
            }
            return super.d(who, method, args);
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class a0 extends com.xinzhu.overmind.client.hook.g {
        a0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "setComponentEnabledSetting";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int intValue = ((Integer) args[1]).intValue();
            int intValue2 = ((Integer) args[2]).intValue();
            com.xinzhu.overmind.client.frameworks.f.d().p().setComponentEnabledSetting((ComponentName) args[0], intValue, intValue2, com.xinzhu.overmind.client.e.getUserId());
            return 0;
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class b extends com.xinzhu.overmind.client.hook.g {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "canRequestPackageInstalls";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            com.xinzhu.overmind.utils.helpers.a.d(args);
            return method.invoke(who, args);
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.pm.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0418c extends com.xinzhu.overmind.client.hook.g {
        C0418c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "freeStorage";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            IntentSender intentSender = (IntentSender) args[com.xinzhu.overmind.utils.d.h(args, IntentSender.class)];
            if (intentSender != null) {
                intentSender.sendIntent(Overmind.getContext(), 0, null, null, null);
                return null;
            }
            return null;
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class d extends com.xinzhu.overmind.client.hook.g {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "freeStorageAndNotify";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            IPackageDataObserver iPackageDataObserver = (IPackageDataObserver) args[args.length - 1];
            if (iPackageDataObserver != null) {
                iPackageDataObserver.onRemoveCompleted(com.xinzhu.overmind.client.e.getVPackageName(), true);
                return null;
            }
            return null;
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class e extends com.xinzhu.overmind.client.hook.g {
        e() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getActivityInfo";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            ComponentName componentName = (ComponentName) args[0];
            ActivityInfo e4 = Overmind.getMindPackageManager().e(componentName, com.xinzhu.overmind.utils.q.a(args[1]), com.xinzhu.overmind.client.e.getUserId());
            if (e4 != null) {
                return e4;
            }
            if (com.xinzhu.overmind.client.hook.env.a.e(componentName)) {
                return method.invoke(who, args);
            }
            return null;
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class f extends com.xinzhu.overmind.client.hook.g {
        f() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getApplicationEnabledSetting";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            String str = (String) args[0];
            if (Overmind.get().isInstalled(str)) {
                return 1;
            }
            if (com.xinzhu.overmind.client.hook.env.a.f(str)) {
                com.xinzhu.overmind.utils.helpers.a.f(args);
                return method.invoke(who, args);
            }
            return 2;
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class g extends com.xinzhu.overmind.client.hook.g {
        g() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getApplicationInfo";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            String str = (String) args[0];
            ApplicationInfo b4 = com.xinzhu.overmind.server.pm.i.b(Overmind.getMindPackageManager().f(str, com.xinzhu.overmind.utils.q.a(args[1]), com.xinzhu.overmind.client.e.getUserId()));
            if (b4 != null) {
                return b4;
            }
            if (com.xinzhu.overmind.client.hook.env.a.f(str)) {
                return method.invoke(who, args);
            }
            return null;
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class h extends com.xinzhu.overmind.client.hook.g {
        h() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getComponentEnabledSetting";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return Integer.valueOf(com.xinzhu.overmind.client.frameworks.f.d().p().getComponentEnabledSetting((ComponentName) args[0], com.xinzhu.overmind.client.e.getUserId()));
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class i extends com.xinzhu.overmind.client.hook.g {
        i() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getInstalledApplications";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            List<ApplicationInfo> g4 = Overmind.getMindPackageManager().g(com.xinzhu.overmind.utils.q.a(args[0]), com.xinzhu.overmind.client.e.getUserId());
            List<?> d4 = new com.xinzhu.haunted.android.content.pm.j(method.invoke(who, args)).d();
            if (d4 != null && !d4.isEmpty()) {
                Iterator<?> it2 = d4.iterator();
                while (it2.hasNext()) {
                    ApplicationInfo applicationInfo = (ApplicationInfo) it2.next();
                    if (!Overmind.get().isInstalled(applicationInfo.packageName) && ((applicationInfo.flags & 9) != 0 || com.xinzhu.overmind.client.hook.env.a.f(applicationInfo.packageName))) {
                        if (!com.xinzhu.overmind.client.hook.env.a.d(applicationInfo.packageName)) {
                            g4.add(applicationInfo);
                        }
                    }
                }
            }
            return com.xinzhu.overmind.utils.helpers.f.a(g4);
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class j extends com.xinzhu.overmind.client.hook.g {
        j() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getInstalledPackages";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            List<PackageInfo> h4 = Overmind.getMindPackageManager().h(com.xinzhu.overmind.utils.q.a(args[0]), com.xinzhu.overmind.client.e.getUserId());
            List<?> d4 = new com.xinzhu.haunted.android.content.pm.j(method.invoke(who, args)).d();
            if (d4 != null && !d4.isEmpty()) {
                Iterator<?> it2 = d4.iterator();
                while (it2.hasNext()) {
                    PackageInfo packageInfo = (PackageInfo) it2.next();
                    if (!Overmind.get().isInstalled(packageInfo.packageName) && ((packageInfo.applicationInfo.flags & 9) != 0 || com.xinzhu.overmind.client.hook.env.a.f(packageInfo.packageName))) {
                        if (!com.xinzhu.overmind.client.hook.env.a.d(packageInfo.packageName)) {
                            h4.add(packageInfo);
                        }
                    }
                }
            }
            return com.xinzhu.overmind.utils.helpers.f.a(h4);
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class k extends com.xinzhu.overmind.client.hook.g {
        k() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getPackageInfo";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            String str = (String) args[0];
            int a4 = com.xinzhu.overmind.utils.q.a(args[1]);
            if ((4194304 & a4) != 0) {
                a4 &= -4194305;
                args[1] = Integer.valueOf(a4);
            }
            if ((2097152 & a4) != 0) {
                return method.invoke(who, args);
            }
            PackageInfo d4 = com.xinzhu.overmind.server.pm.i.d(Overmind.getMindPackageManager().l(str, a4, com.xinzhu.overmind.client.e.getUserId()));
            if (d4 != null) {
                return d4;
            }
            if (com.xinzhu.overmind.client.hook.env.a.f(str)) {
                return method.invoke(who, args);
            }
            return null;
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class l extends com.xinzhu.overmind.client.hook.g {

        /* compiled from: PackageManagerStub.java */
        /* loaded from: classes.dex */
        class a implements InvocationHandler {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ IInterface f64222a;

            a(final IInterface val$installer) {
                this.f64222a = val$installer;
            }

            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                String name = method.getName();
                name.hashCode();
                char c4 = 65535;
                switch (name.hashCode()) {
                    case -1776922004:
                        if (name.equals("toString")) {
                            c4 = 0;
                            break;
                        }
                        break;
                    case -1663319615:
                        if (name.equals("bypassNextStagedInstallerCheck")) {
                            c4 = 1;
                            break;
                        }
                        break;
                    case -1273119136:
                        if (name.equals("getSession")) {
                            c4 = 2;
                            break;
                        }
                        break;
                    case -663066834:
                        if (name.equals("getSessionInfo")) {
                            c4 = 3;
                            break;
                        }
                        break;
                    case -652885011:
                        if (name.equals("updateSessionAppIcon")) {
                            c4 = 4;
                            break;
                        }
                        break;
                    case -625596190:
                        if (name.equals("uninstall")) {
                            c4 = 5;
                            break;
                        }
                        break;
                    case -403218424:
                        if (name.equals("registerCallback")) {
                            c4 = 6;
                            break;
                        }
                        break;
                    case -298116903:
                        if (name.equals("getStagedSessions")) {
                            c4 = 7;
                            break;
                        }
                        break;
                    case -93516191:
                        if (name.equals("abandonSession")) {
                            c4 = '\b';
                            break;
                        }
                        break;
                    case -63461894:
                        if (name.equals("createSession")) {
                            c4 = '\t';
                            break;
                        }
                        break;
                    case 938656808:
                        if (name.equals("getAllSessions")) {
                            c4 = '\n';
                            break;
                        }
                        break;
                    case 1081646368:
                        if (name.equals("installExistingPackage")) {
                            c4 = 11;
                            break;
                        }
                        break;
                    case 1170196863:
                        if (name.equals("setPermissionsResult")) {
                            c4 = '\f';
                            break;
                        }
                        break;
                    case 1238099456:
                        if (name.equals("updateSessionAppLabel")) {
                            c4 = '\r';
                            break;
                        }
                        break;
                    case 1316930297:
                        if (name.equals("uninstallExistingPackage")) {
                            c4 = 14;
                            break;
                        }
                        break;
                    case 1568181855:
                        if (name.equals("getMySessions")) {
                            c4 = 15;
                            break;
                        }
                        break;
                    case 1738611873:
                        if (name.equals("unregisterCallback")) {
                            c4 = 16;
                            break;
                        }
                        break;
                    case 1788161260:
                        if (name.equals("openSession")) {
                            c4 = 17;
                            break;
                        }
                        break;
                }
                switch (c4) {
                    case 0:
                        return "PackageInstaller";
                    case 1:
                    case 16:
                        com.xinzhu.overmind.utils.helpers.a.d(args);
                        return method.invoke(this.f64222a, args);
                    case 2:
                    case 3:
                    case 4:
                    case 7:
                    case '\b':
                    case 11:
                    case '\f':
                    case '\r':
                    case 17:
                        return method.invoke(this.f64222a, args);
                    case 5:
                    case 14:
                    case 15:
                        com.xinzhu.overmind.utils.helpers.a.d(args);
                        com.xinzhu.overmind.utils.helpers.a.f(args);
                        return method.invoke(this.f64222a, args);
                    case 6:
                    case '\n':
                        com.xinzhu.overmind.utils.helpers.a.f(args);
                        return method.invoke(this.f64222a, args);
                    case '\t':
                        new h.a((PackageInstaller.SessionParams) args[0]).c(Overmind.getHostPkg());
                        com.xinzhu.overmind.utils.helpers.a.d(args);
                        com.xinzhu.overmind.utils.helpers.a.f(args);
                        return method.invoke(this.f64222a, args);
                    default:
                        throw new RuntimeException("Unknown package installer interface " + method.getName());
                }
            }
        }

        l() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getPackageInstaller";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            IInterface iInterface = (IInterface) method.invoke(who, args);
            if (iInterface == null) {
                return null;
            }
            return (IInterface) Proxy.newProxyInstance(iInterface.getClass().getClassLoader(), iInterface.getClass().getInterfaces(), new a(iInterface));
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class m extends com.xinzhu.overmind.client.hook.g {
        m() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getPackageUid";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            com.xinzhu.overmind.utils.helpers.a.d(args);
            int intValue = ((Integer) method.invoke(who, args)).intValue();
            if (intValue == Overmind.getHostUid()) {
                return Integer.valueOf(com.xinzhu.overmind.client.e.getVUid());
            }
            return Integer.valueOf(intValue);
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class n extends com.xinzhu.overmind.client.hook.g {
        n() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getPackagesForUid";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int intValue = ((Integer) args[0]).intValue();
            if (intValue == 1000) {
                return method.invoke(who, args);
            }
            if (intValue == Overmind.getHostUid()) {
                intValue = com.xinzhu.overmind.client.e.getVUid();
            }
            String[] m4 = com.xinzhu.overmind.client.frameworks.f.d().m(intValue);
            com.xinzhu.overmind.b.c(c.f64218f, "getPackagesForUid result " + intValue + " " + Arrays.toString(m4));
            return m4;
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class o extends com.xinzhu.overmind.client.hook.g {
        o() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getProviderInfo";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            ComponentName componentName = (ComponentName) args[0];
            ProviderInfo n4 = Overmind.getMindPackageManager().n(componentName, com.xinzhu.overmind.utils.q.a(args[1]), com.xinzhu.overmind.client.e.getUserId());
            if (n4 != null) {
                return n4;
            }
            if (com.xinzhu.overmind.client.hook.env.a.e(componentName)) {
                return method.invoke(who, args);
            }
            return null;
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class p extends com.xinzhu.overmind.client.hook.g {
        p() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getReceiverInfo";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            ComponentName componentName = (ComponentName) args[0];
            ActivityInfo o3 = Overmind.getMindPackageManager().o(componentName, com.xinzhu.overmind.utils.q.a(args[1]), com.xinzhu.overmind.client.e.getUserId());
            if (o3 != null) {
                return o3;
            }
            if (com.xinzhu.overmind.client.hook.env.a.e(componentName)) {
                return method.invoke(who, args);
            }
            return null;
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class q extends com.xinzhu.overmind.client.hook.g {
        q() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getServiceInfo";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            ComponentName componentName = (ComponentName) args[0];
            ServiceInfo q3 = Overmind.getMindPackageManager().q(componentName, com.xinzhu.overmind.utils.q.a(args[1]), com.xinzhu.overmind.client.e.getUserId());
            if (q3 != null) {
                return q3;
            }
            if (com.xinzhu.overmind.client.hook.env.a.e(componentName)) {
                return method.invoke(who, args);
            }
            return null;
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class r extends com.xinzhu.overmind.client.hook.g {
        r() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getSharedLibraries";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.d(args);
            com.xinzhu.overmind.utils.helpers.a.f(args);
            int a4 = com.xinzhu.overmind.utils.q.a(args[1]);
            if ((4194304 & a4) != 0) {
                args[1] = Integer.valueOf(a4 & (-4194305));
            }
            return method.invoke(who, args);
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class s extends com.xinzhu.overmind.client.hook.g {
        s() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "queryContentProviders";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            return com.xinzhu.overmind.utils.helpers.f.a(Overmind.getMindPackageManager().v(com.xinzhu.overmind.client.e.getVProcessName(), Process.myUid(), com.xinzhu.overmind.utils.q.a(args[2]), com.xinzhu.overmind.client.e.getUserId()));
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class t extends com.xinzhu.overmind.client.hook.g {
        t() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "queryIntentActivities";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            ArrayList arrayList = new ArrayList();
            try {
                Object invoke = method.invoke(who, args);
                if (invoke != null) {
                    Method declaredMethod = invoke.getClass().getDeclaredMethod("getList", new Class[0]);
                    declaredMethod.setAccessible(true);
                    List<ResolveInfo> list = (List) declaredMethod.invoke(invoke, new Object[0]);
                    if (list != null) {
                        for (ResolveInfo resolveInfo : list) {
                            if (com.xinzhu.overmind.client.hook.env.a.f(resolveInfo.activityInfo.packageName)) {
                                arrayList.add(resolveInfo);
                            }
                        }
                    }
                }
                int a4 = com.xinzhu.overmind.utils.q.a(args[2]);
                int intValue = ((Integer) args[3]).intValue();
                List<ResolveInfo> w3 = com.xinzhu.overmind.client.frameworks.f.d().w((Intent) args[0], a4, (String) args[1], intValue);
                if (w3 != null) {
                    arrayList.addAll(w3);
                }
                com.xinzhu.haunted.android.content.pm.j c4 = com.xinzhu.haunted.android.content.pm.j.c(arrayList);
                Objects.requireNonNull(c4);
                return c4.f63141a;
            } catch (Throwable th) {
                th.printStackTrace();
                com.xinzhu.haunted.android.content.pm.j c5 = com.xinzhu.haunted.android.content.pm.j.c(arrayList);
                Objects.requireNonNull(c5);
                return c5.f63141a;
            }
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class u extends com.xinzhu.overmind.client.hook.g {
        u() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "queryIntentReceivers";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            ArrayList arrayList = new ArrayList();
            try {
                Object invoke = method.invoke(who, args);
                if (invoke != null) {
                    Method declaredMethod = invoke.getClass().getDeclaredMethod("getList", new Class[0]);
                    declaredMethod.setAccessible(true);
                    List<ResolveInfo> list = (List) declaredMethod.invoke(invoke, new Object[0]);
                    if (list != null) {
                        for (ResolveInfo resolveInfo : list) {
                            if (com.xinzhu.overmind.client.hook.env.a.f(resolveInfo.activityInfo.packageName)) {
                                arrayList.add(resolveInfo);
                            }
                        }
                    }
                }
                int a4 = com.xinzhu.overmind.utils.q.a(args[2]);
                int intValue = ((Integer) args[3]).intValue();
                List<ResolveInfo> u3 = com.xinzhu.overmind.client.frameworks.f.d().u((Intent) args[0], a4, (String) args[1], intValue);
                if (u3 != null) {
                    arrayList.addAll(u3);
                }
                com.xinzhu.haunted.android.content.pm.j c4 = com.xinzhu.haunted.android.content.pm.j.c(arrayList);
                Objects.requireNonNull(c4);
                return c4.f63141a;
            } catch (Throwable th) {
                th.printStackTrace();
                com.xinzhu.haunted.android.content.pm.j c5 = com.xinzhu.haunted.android.content.pm.j.c(arrayList);
                Objects.requireNonNull(c5);
                return c5.f63141a;
            }
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class v extends com.xinzhu.overmind.client.hook.g {
        v() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "queryIntentServices";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            ArrayList arrayList = new ArrayList();
            try {
                Object invoke = method.invoke(who, args);
                if (invoke != null) {
                    Method declaredMethod = invoke.getClass().getDeclaredMethod("getList", new Class[0]);
                    declaredMethod.setAccessible(true);
                    List<ResolveInfo> list = (List) declaredMethod.invoke(invoke, new Object[0]);
                    if (list != null) {
                        for (ResolveInfo resolveInfo : list) {
                            if (com.xinzhu.overmind.client.hook.env.a.f(resolveInfo.serviceInfo.packageName)) {
                                arrayList.add(resolveInfo);
                            }
                        }
                    }
                }
                int a4 = com.xinzhu.overmind.utils.q.a(args[2]);
                int intValue = ((Integer) args[3]).intValue();
                List<ResolveInfo> x3 = com.xinzhu.overmind.client.frameworks.f.d().x((Intent) args[0], a4, (String) args[1], intValue);
                if (x3 != null) {
                    arrayList.addAll(x3);
                }
                com.xinzhu.haunted.android.content.pm.j c4 = com.xinzhu.haunted.android.content.pm.j.c(arrayList);
                Objects.requireNonNull(c4);
                return c4.f63141a;
            } catch (Throwable th) {
                th.printStackTrace();
                com.xinzhu.haunted.android.content.pm.j c5 = com.xinzhu.haunted.android.content.pm.j.c(arrayList);
                Objects.requireNonNull(c5);
                return c5.f63141a;
            }
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class w extends com.xinzhu.overmind.client.hook.g {
        w() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "resolveContentProvider";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            ProviderInfo z3 = Overmind.getMindPackageManager().z((String) args[0], com.xinzhu.overmind.utils.q.a(args[1]), com.xinzhu.overmind.client.e.getUserId());
            return z3 == null ? method.invoke(who, args) : z3;
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class x extends com.xinzhu.overmind.client.hook.g {
        x() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "resolveIntent";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            ResolveInfo A = Overmind.getMindPackageManager().A((Intent) args[0], (String) args[1], com.xinzhu.overmind.utils.q.a(args[2]), com.xinzhu.overmind.client.e.getUserId());
            return A != null ? A : method.invoke(who, args);
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class y extends com.xinzhu.overmind.client.hook.g {
        y() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "resolveService";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int a4 = com.xinzhu.overmind.utils.q.a(args[2]);
            ResolveInfo B = com.xinzhu.overmind.client.frameworks.f.d().B((Intent) args[0], a4, (String) args[1], com.xinzhu.overmind.client.e.getUserId());
            if (B == null) {
                com.xinzhu.overmind.utils.helpers.a.f(args);
                ResolveInfo resolveInfo = (ResolveInfo) method.invoke(who, args);
                if (resolveInfo == null || !com.xinzhu.overmind.client.hook.env.a.f(resolveInfo.serviceInfo.packageName)) {
                    return null;
                }
                return resolveInfo;
            }
            return B;
        }
    }

    /* compiled from: PackageManagerStub.java */
    /* loaded from: classes.dex */
    static class z extends com.xinzhu.overmind.client.hook.g {
        z() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "setApplicationEnabledSetting";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return 0;
        }
    }

    public c() {
        super(com.xinzhu.haunted.android.app.g.X().asBinder());
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return com.xinzhu.haunted.android.app.g.X();
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        com.xinzhu.haunted.android.app.g.n0((IInterface) proxyInvocation);
        m("package");
        PackageManager n4 = new com.xinzhu.haunted.android.app.k(new com.xinzhu.haunted.android.app.g(Overmind.mainThread()).O()).n();
        if (n4 != null) {
            try {
                com.xinzhu.overmind.utils.s.n("android.app.ApplicationPackageManager").f("mPM").r(n4, proxyInvocation);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        ContextFixer.fix(Overmind.getContext());
        try {
            Class.forName("huawei.android.app.HwApiCacheMangerEx");
            com.xinzhu.haunted.app.a c4 = com.xinzhu.haunted.app.a.c();
            if (c4.a()) {
                c4.e(Overmind.getPackageManager());
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new x());
        d(new h());
        d(new a0());
        d(new k());
        d(new o());
        d(new q());
        d(new e());
        d(new p());
        d(new i());
        d(new j());
        d(new g());
        d(new s());
        d(new y());
        d(new w());
        d(new b());
        d(new m());
        d(new n());
        d(new f());
        d(new z());
        d(new a("checkPermission", 1, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new t());
        d(new v());
        d(new u());
        d(new com.xinzhu.overmind.client.hook.common.c("getInstallerPackageName", com.xinzhu.overmind.client.hook.env.b.f64119e));
        if (com.xinzhu.overmind.utils.e.v()) {
            d(new com.xinzhu.overmind.client.hook.common.c("notifyDexLoad", 0));
            d(new com.xinzhu.overmind.client.hook.common.c("notifyPackageUse", 0));
            Boolean bool = Boolean.FALSE;
            d(new com.xinzhu.overmind.client.hook.common.c("setInstantAppCookie", bool));
            d(new com.xinzhu.overmind.client.hook.common.c("isInstantApp", bool));
        }
        Boolean bool2 = Boolean.TRUE;
        d(new com.xinzhu.overmind.client.hook.common.c("performDexOpt", bool2));
        d(new com.xinzhu.overmind.client.hook.common.c("performDexOptIfNeeded", Boolean.FALSE));
        d(new com.xinzhu.overmind.client.hook.common.c("performDexOptSecondary", bool2));
        d(new com.xinzhu.overmind.client.hook.common.c("addOnPermissionsChangeListener", 0));
        d(new com.xinzhu.overmind.client.hook.common.c("removeOnPermissionsChangeListener", 0));
        d(new com.xinzhu.overmind.client.hook.common.c("addPermissionAsync", bool2));
        d(new com.xinzhu.overmind.client.hook.common.c("addPermission", bool2));
        d(new d());
        d(new C0418c());
        d(new r());
        d(new l());
        d(new com.xinzhu.overmind.client.hook.common.d("shouldShowRequestPermissionRationale", com.xinzhu.overmind.client.hook.common.d.f64084f, com.xinzhu.overmind.client.hook.common.d.f64085g));
    }
}
