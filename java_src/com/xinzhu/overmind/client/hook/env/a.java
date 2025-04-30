package com.xinzhu.overmind.client.hook.env;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import com.alipay.sdk.util.j;
import com.join.mgps.receiver.BootReceiver_;
import com.xinzhu.haunted.android.content.n;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.accounts.MindAccountManagerService;
import com.xinzhu.overmind.utils.e;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
/* compiled from: ClientSystemEnv.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final List<String> f64106a;

    /* renamed from: b  reason: collision with root package name */
    private static final List<String> f64107b;

    /* renamed from: c  reason: collision with root package name */
    private static final List<String> f64108c;

    /* renamed from: d  reason: collision with root package name */
    private static final List<String> f64109d;

    /* renamed from: e  reason: collision with root package name */
    private static final List<String> f64110e;

    /* renamed from: f  reason: collision with root package name */
    private static final List<String> f64111f;

    /* renamed from: g  reason: collision with root package name */
    private static final List<String> f64112g;

    /* renamed from: h  reason: collision with root package name */
    private static final List<String> f64113h;

    /* renamed from: i  reason: collision with root package name */
    private static final String f64114i = ".overmind";

    static {
        ArrayList arrayList = new ArrayList();
        f64106a = arrayList;
        ArrayList arrayList2 = new ArrayList();
        f64107b = arrayList2;
        ArrayList arrayList3 = new ArrayList();
        f64108c = arrayList3;
        ArrayList arrayList4 = new ArrayList();
        f64109d = arrayList4;
        ArrayList arrayList5 = new ArrayList();
        f64110e = arrayList5;
        ArrayList arrayList6 = new ArrayList();
        f64111f = arrayList6;
        ArrayList arrayList7 = new ArrayList();
        f64112g = arrayList7;
        ArrayList arrayList8 = new ArrayList();
        f64113h = arrayList8;
        arrayList.add(q.a.f73954a);
        arrayList.add("com.google.android.webview");
        arrayList.add("com.google.android.webview.dev");
        arrayList.add("com.google.android.webview.beta");
        arrayList.add("com.google.android.webview.canary");
        arrayList.add("com.android.webview");
        arrayList.add("com.android.camera");
        arrayList.add("com.android.chrome");
        arrayList.add("com.android.providers.downloads");
        arrayList.add("com.huawei.webview");
        arrayList2.add("com.noshufou.android.su");
        arrayList2.add("com.noshufou.android.su.elite");
        arrayList2.add("eu.chainfire.supersu");
        arrayList2.add("com.koushikdutta.superuser");
        arrayList2.add("com.thirdparty.superuser");
        arrayList2.add("com.yellowes.su");
        arrayList2.add("com.topjohnwu.magisk");
        arrayList8.addAll(arrayList2);
        arrayList3.add("de.robv.android.xposed.installer");
        arrayList4.add("com.huawei.hwid");
        arrayList4.add("com.vivo.sdkplugin");
        arrayList5.add("com.tencent.mm");
        arrayList5.add(j.f9851b);
        arrayList5.add("com.tencent.mobileqq");
        arrayList6.add("android.permission.ACCOUNT_MANAGER");
        arrayList6.add("android.permission.RECEIVE_BOOT_COMPLETED");
        arrayList6.add("android.permission.BACKUP");
        arrayList7.add(MindAccountManagerService.ACTION_VISIBLE_ACCOUNTS_CHANGED);
        arrayList7.add(MindAccountManagerService.ACTION_ACCOUNT_REMOVED);
        arrayList7.add(BootReceiver_.f51451a);
        arrayList7.add("android.intent.action.PACKAGE_CHANGED");
        arrayList7.add(BootReceiver_.f51452b);
        arrayList7.add("android.intent.action.USER_ADDED");
        arrayList7.add("android.intent.action.USER_REMOVED");
        arrayList7.add("android.accounts.LOGIN_ACCOUNTS_CHANGED");
    }

    public static List<String> a() {
        return f64109d;
    }

    public static boolean b(String perm) {
        return f64111f.contains(perm);
    }

    public static boolean c(String packageName) {
        if (Overmind.get().isHideRoot() && f64107b.contains(packageName)) {
            return true;
        }
        return Overmind.get().isHideXposed() && f64108c.contains(packageName);
    }

    public static boolean d(String packageName) {
        return f64113h.contains(packageName);
    }

    public static boolean e(ComponentName componentName) {
        return componentName != null && f(componentName.getPackageName());
    }

    public static boolean f(String packageName) {
        ApplicationInfo d4;
        List<String> list = f64106a;
        if (list.contains(packageName) || packageName.equals(Overmind.getMainPkg()) || packageName.equals(Overmind.getPluginPkg()) || f64110e.contains(packageName)) {
            return true;
        }
        if (b.f(packageName)) {
            return false;
        }
        if (e.j()) {
            d4 = Overmind.getHostPm().e(packageName, 0L, Overmind.getHostUserId());
        } else {
            d4 = Overmind.getHostPm().d(packageName, 0, Overmind.getHostUserId());
        }
        if (d4 != null) {
            int i2 = d4.flags;
            if ((i2 & 1) != 0 || (i2 & 128) != 0) {
                list.add(packageName);
                return true;
            }
        }
        return false;
    }

    public static boolean g(String action) {
        return f64112g.contains(action);
    }

    public static String h(String action) {
        if (action == null) {
            return null;
        }
        return action.endsWith(f64114i) ? action.substring(0, action.indexOf(f64114i)) : action;
    }

    public static Intent i(Intent intent) {
        if (intent == null || !intent.getAction().endsWith(f64114i)) {
            return intent;
        }
        Intent intent2 = new Intent(intent);
        intent2.setAction(h(intent2.getAction()));
        return intent2;
    }

    public static String j(String action) {
        if (action == null) {
            return null;
        }
        if (f64112g.contains(action)) {
            return action + f64114i;
        }
        return action;
    }

    public static Intent k(Intent intent) {
        if (intent == null || !g(intent.getAction())) {
            return intent;
        }
        Intent intent2 = new Intent(intent);
        intent2.setAction(j(intent2.getAction()));
        return intent2;
    }

    public static void l(IntentFilter filter) {
        ArrayList<String> h4;
        if (filter == null || (h4 = new n(filter).h()) == null) {
            return;
        }
        ListIterator<String> listIterator = h4.listIterator();
        while (listIterator.hasNext()) {
            listIterator.set(j(listIterator.next()));
        }
    }
}
