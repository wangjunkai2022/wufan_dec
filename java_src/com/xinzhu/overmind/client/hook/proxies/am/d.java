package com.xinzhu.overmind.client.hook.proxies.am;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.frameworks.accounts.ChooseTypeAndAccountActivity;
import com.xinzhu.overmind.client.stub.StubTrampolineActivity;
import com.xinzhu.overmind.client.stub.StubTrampolineReceiver;
import com.xinzhu.overmind.client.stub.StubTrampolineService;
import com.xinzhu.overmind.client.stub.record.StubTrampolineRecord;
import com.xinzhu.overmind.entity.PendingIntentRecord;
import com.xinzhu.overmind.server.am.MindTaskInfo;
import java.lang.reflect.Method;
import java.util.List;
import java.util.ListIterator;
/* compiled from: CommonStub.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static final String f64154a = "CommonStub";

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class a extends com.xinzhu.overmind.client.hook.g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "activityDestroyed";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            Overmind.getMindActivityManager().m((IBinder) args[0]);
            return method.invoke(who, args);
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class b extends com.xinzhu.overmind.client.hook.g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "activityResumed";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            Overmind.getMindActivityManager().n((IBinder) args[0]);
            return method.invoke(who, args);
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class c extends com.xinzhu.overmind.client.hook.g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "finishActivity";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            Overmind.getMindActivityManager().o((IBinder) args[0]);
            return method.invoke(who, args);
        }
    }

    /* compiled from: CommonStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.am.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0407d extends com.xinzhu.overmind.client.hook.g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "finishActivityAffinity";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            Overmind.getMindActivityManager().p((IBinder) args[0]);
            return Boolean.FALSE;
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class e extends com.xinzhu.overmind.client.hook.g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getAppTasks";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.d(args);
            return method.invoke(who, args);
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class f extends com.xinzhu.overmind.client.hook.g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getCallingActivity";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return Overmind.getMindActivityManager().e((IBinder) args[0]);
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class g extends com.xinzhu.overmind.client.hook.g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getCallingPackage";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return Overmind.getMindActivityManager().f((IBinder) args[0]);
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class h extends com.xinzhu.overmind.client.hook.g {
        private int f() {
            return com.xinzhu.overmind.utils.e.g() ? 6 : 5;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getIntentSender";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            Intent intent;
            String str = (String) args[1];
            com.xinzhu.overmind.utils.helpers.a.d(args);
            int a4 = com.xinzhu.overmind.utils.helpers.a.a(args, Intent[].class);
            if (a4 < 0) {
                a4 = f();
            }
            Intent[] intentArr = (Intent[]) args[a4];
            int i2 = a4 + 2;
            int intValue = ((Integer) args[i2]).intValue();
            args[i2] = Integer.valueOf((Build.VERSION.SDK_INT >= 23 ? (-67108865) & intValue : intValue) & (-9) & (-129));
            com.xinzhu.overmind.utils.helpers.a.f(args);
            int intValue2 = ((Integer) args[0]).intValue();
            if (intentArr.length <= 0) {
                intent = null;
            } else if (intentArr.length == 1) {
                intent = intentArr[0];
            } else {
                throw new RuntimeException("getIntentSender failed, more than 1 intent in array.");
            }
            Intent intent2 = new Intent(intent);
            intent2.replaceExtras(new Intent());
            intent2.setComponent(null);
            if (intValue2 == 1) {
                intent2.setComponent(new ComponentName(Overmind.get().getMainPackageName(), StubTrampolineReceiver.class.getName()));
            } else if (intValue2 != 2 && intValue2 != 3) {
                if (intValue2 == 5) {
                    args[0] = 4;
                }
                intent2.setComponent(new ComponentName(Overmind.get().getMainPackageName(), StubTrampolineService.class.getName()));
            } else {
                intent2.setComponent(new ComponentName(Overmind.get().getMainPackageName(), StubTrampolineActivity.class.getName()));
            }
            StubTrampolineRecord.saveStub(intent2, intent, com.xinzhu.overmind.client.e.getUserId());
            Intent[] intentArr2 = new Intent[1];
            intentArr2[0] = intent2;
            args[a4] = intentArr2;
            IInterface iInterface = (IInterface) method.invoke(who, args);
            if (iInterface != null) {
                com.xinzhu.overmind.client.frameworks.a.d().u(new PendingIntentRecord(str, com.xinzhu.overmind.client.e.getVUid(), com.xinzhu.overmind.client.e.getUserId(), iInterface.asBinder(), intent, intValue, intValue2));
            }
            return iInterface;
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class i extends h {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.h, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getIntentSenderWithFeature";
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class j extends h {
        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.h, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getIntentSenderWithSourceToken";
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class k extends com.xinzhu.overmind.client.hook.g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getRecentTasks";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            List<?> list;
            try {
                com.xinzhu.overmind.utils.helpers.a.f(args);
                Object invoke = method.invoke(who, args);
                boolean b4 = com.xinzhu.overmind.utils.helpers.f.b(invoke);
                if (b4) {
                    list = new com.xinzhu.haunted.android.content.pm.j(invoke).d();
                } else {
                    list = (List) invoke;
                }
                if (list != null && list.size() != 0) {
                    ListIterator<?> listIterator = list.listIterator();
                    while (listIterator.hasNext()) {
                        ActivityManager.RecentTaskInfo recentTaskInfo = (ActivityManager.RecentTaskInfo) listIterator.next();
                        MindTaskInfo j4 = com.xinzhu.overmind.client.frameworks.a.d().j(recentTaskInfo.id);
                        if (j4 != null) {
                            ComponentName componentName = j4.f64421c;
                            recentTaskInfo.origActivity = componentName;
                            recentTaskInfo.baseIntent = j4.f64420b;
                            if (Build.VERSION.SDK_INT >= 23) {
                                recentTaskInfo.topActivity = j4.f64422d;
                                recentTaskInfo.baseActivity = componentName;
                            }
                        } else {
                            listIterator.remove();
                        }
                    }
                }
                return b4 ? com.xinzhu.overmind.utils.helpers.f.a(list) : list;
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class l extends com.xinzhu.overmind.client.hook.g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getTasks";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            List list = (List) method.invoke(who, args);
            if (list != null && list.size() != 0) {
                ListIterator listIterator = list.listIterator();
                while (listIterator.hasNext()) {
                    ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) listIterator.next();
                    MindTaskInfo j4 = com.xinzhu.overmind.client.frameworks.a.d().j(runningTaskInfo.id);
                    if (j4 != null) {
                        try {
                            if (Build.VERSION.SDK_INT >= 29) {
                                runningTaskInfo.origActivity = j4.f64421c;
                                runningTaskInfo.baseIntent = j4.f64420b;
                            }
                            runningTaskInfo.topActivity = j4.f64422d;
                            runningTaskInfo.baseActivity = j4.f64421c;
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    } else {
                        listIterator.remove();
                    }
                }
            }
            return list;
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class m extends com.xinzhu.overmind.client.hook.g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "startActivities";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            Intent[] intentArr = (Intent[]) args[2];
            String[] strArr = (String[]) args[3];
            IBinder iBinder = (IBinder) args[4];
            Bundle bundle = (Bundle) args[5];
            if (!com.xinzhu.overmind.utils.helpers.c.d(intentArr)) {
                return method.invoke(who, args);
            }
            for (Intent intent : intentArr) {
                intent.setExtrasClassLoader(who.getClass().getClassLoader());
            }
            return Integer.valueOf(Overmind.getMindActivityManager().x(com.xinzhu.overmind.client.e.getUserId(), com.xinzhu.overmind.client.e.getVPackageName(), intentArr, strArr, iBinder, bundle));
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class n extends com.xinzhu.overmind.client.hook.g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "startActivity";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            Object obj = args[com.xinzhu.overmind.utils.helpers.a.a(args, Intent.class)];
            com.xinzhu.overmind.utils.helpers.a.d(args);
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                if (intent.getParcelableExtra("_VM_|_target_") != null) {
                    return method.invoke(who, args);
                }
                if (com.xinzhu.overmind.utils.helpers.c.b(intent)) {
                    intent.setData(com.xinzhu.overmind.client.hook.provider.a.a(com.xinzhu.overmind.client.e.getApplication(), intent.getData()));
                    return method.invoke(who, args);
                }
                String dataString = intent.getDataString();
                if (dataString != null) {
                    if (dataString.equals("package:" + com.xinzhu.overmind.client.e.getVPackageName())) {
                        intent.setData(Uri.parse("package:" + Overmind.getHostPkg()));
                    }
                }
                if (ChooseTypeAndAccountActivity.h(intent)) {
                    Intent intent2 = new Intent();
                    intent2.setComponent(new ComponentName(Overmind.getMainPkg(), ChooseTypeAndAccountActivity.class.getName()));
                    intent2.putExtras(intent);
                    args[f()] = intent2;
                    return method.invoke(who, args);
                }
                if (intent.getPackage() != null) {
                    String str = intent.getPackage();
                    if (str.equals(Overmind.getMainPkg()) || str.equals(Overmind.getPluginPkg())) {
                        return method.invoke(who, args);
                    }
                }
                ResolveInfo y3 = Overmind.getMindPackageManager().y(intent, 128, com.xinzhu.overmind.utils.helpers.g.o(args), com.xinzhu.overmind.client.e.getUserId());
                if (y3 == null) {
                    if (intent.getPackage() != null && Overmind.get().isInstalled(intent.getPackage())) {
                        return 0;
                    }
                    return method.invoke(who, args);
                }
                intent.setExtrasClassLoader(who.getClass().getClassLoader());
                Intent intent3 = new Intent(intent);
                if (intent3.getComponent() == null) {
                    ActivityInfo activityInfo = y3.activityInfo;
                    intent3.setClassName(activityInfo.packageName, activityInfo.name);
                }
                Overmind.getMindActivityManager().y(com.xinzhu.overmind.client.e.getUserId(), com.xinzhu.overmind.client.e.getVPackageName(), intent3, com.xinzhu.overmind.utils.helpers.g.o(args), com.xinzhu.overmind.utils.helpers.g.q(args), com.xinzhu.overmind.utils.helpers.g.s(args), com.xinzhu.overmind.utils.helpers.g.m(args), com.xinzhu.overmind.utils.helpers.g.d(args), com.xinzhu.overmind.utils.helpers.g.i(args));
                return 0;
            }
            return method.invoke(who, args);
        }

        protected int f() {
            return com.xinzhu.overmind.utils.e.g() ? 3 : 2;
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class o extends n {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.n, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "startActivityAndWait";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.n, com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            return super.d(who, method, args);
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class p extends n {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.n, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "startActivityAsCaller";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.n, com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            return super.d(who, method, args);
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class q extends n {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.n, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "startActivityAsUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.n, com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            return super.d(who, method, args);
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class r extends com.xinzhu.overmind.client.hook.g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "startActivityIntentSender";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int i2 = com.xinzhu.overmind.utils.e.v() ? 3 : 2;
            int i4 = i2 + 2;
            int i5 = i2 + 3;
            int i6 = i2 + 4;
            Intent intent = (Intent) args[i2];
            IBinder iBinder = (IBinder) args[i4];
            String str = (String) args[i5];
            int intValue = ((Integer) args[i6]).intValue();
            int intValue2 = ((Integer) args[i2 + 5]).intValue();
            int intValue3 = ((Integer) args[i2 + 6]).intValue();
            Bundle bundle = (Bundle) args[i2 + 7];
            if (intent == null) {
                intent = new Intent();
                args[i2] = intent;
            }
            new com.xinzhu.haunted.android.content.m(intent).d("_VM_|_trampoline_result_to_", iBinder);
            intent.putExtra("_VM_|_trampoline_result_who_", str);
            intent.putExtra("_VM_|_trampoline_request_code_", intValue);
            intent.putExtra("_VM_|_trampoline_options_", bundle);
            intent.putExtra("_VM_|_trampoline_calling_package_", com.xinzhu.overmind.client.e.getVPackageName());
            intent.putExtra("_VM_|_trampoline_flagsMask_", intValue2);
            intent.putExtra("_VM_|_trampoline_flagsValues_", intValue3);
            args[i4] = null;
            args[i5] = null;
            args[i6] = -1;
            return method.invoke(who, args);
        }
    }

    /* compiled from: CommonStub.java */
    /* loaded from: classes.dex */
    static class s extends n {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.n, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "startActivityWithConfig";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.n, com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.f(args);
            return super.d(who, method, args);
        }
    }
}
