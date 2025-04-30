package com.join.android.app.common.utils;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.widget.Toast;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
/* compiled from: PermissionPageUtils.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: b  reason: collision with root package name */
    private Context f17237b;

    /* renamed from: a  reason: collision with root package name */
    private final String f17236a = "PermissionPageManager";

    /* renamed from: c  reason: collision with root package name */
    private String f17238c = "com.join.android.app.mgsim.wufun";

    public g(Context context) {
        this.f17237b = context;
    }

    private void a(String str) {
        PackageInfo packageInfo;
        try {
            try {
                packageInfo = this.f17237b.getPackageManager().getPackageInfo(str, 0);
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                packageInfo = null;
            }
            if (packageInfo == null) {
                f();
                return;
            }
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setPackage(packageInfo.packageName);
            List<ResolveInfo> queryIntentActivities = this.f17237b.getPackageManager().queryIntentActivities(intent, 0);
            StringBuilder sb = new StringBuilder();
            sb.append("resolveinfoList");
            sb.append(queryIntentActivities.size());
            for (int i2 = 0; i2 < queryIntentActivities.size(); i2++) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(queryIntentActivities.get(i2).activityInfo.packageName);
                sb2.append(queryIntentActivities.get(i2).activityInfo.name);
            }
            ResolveInfo next = queryIntentActivities.iterator().next();
            if (next != null) {
                ActivityInfo activityInfo = next.activityInfo;
                String str2 = activityInfo.packageName;
                String str3 = activityInfo.name;
                Intent intent2 = new Intent("android.intent.action.MAIN");
                intent2.addCategory("android.intent.category.LAUNCHER");
                intent2.setComponent(new ComponentName(str2, str3));
                try {
                    this.f17237b.startActivity(intent2);
                } catch (Exception e5) {
                    f();
                    e5.printStackTrace();
                }
            }
        } catch (Exception e6) {
            e6.printStackTrace();
        }
    }

    private Intent b() {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 9) {
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", this.f17237b.getPackageName(), null));
        } else if (i2 <= 8) {
            intent.setAction("android.intent.action.VIEW");
            intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
            intent.putExtra("com.android.settings.ApplicationPkgName", this.f17237b.getPackageName());
        }
        return intent;
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x004f: MOVE  (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:23:0x004f */
    private static String c() {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        BufferedReader bufferedReader3 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ro.miui.ui.version.name").getInputStream()), 1024);
                try {
                    String readLine = bufferedReader.readLine();
                    bufferedReader.close();
                    try {
                        bufferedReader.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    return readLine;
                } catch (IOException e5) {
                    e = e5;
                    e.printStackTrace();
                    try {
                        bufferedReader.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                bufferedReader3 = bufferedReader2;
                try {
                    bufferedReader3.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
                throw th;
            }
        } catch (IOException e8) {
            e = e8;
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
            bufferedReader3.close();
            throw th;
        }
    }

    private void d() {
        a("com.yulong.android.security:remote");
    }

    private void e() {
        try {
            Intent intent = new Intent(this.f17238c);
            intent.setFlags(268435456);
            intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.PermissionSettingActivity"));
            this.f17237b.startActivity(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
            try {
                Intent intent2 = new Intent(this.f17238c);
                intent2.setFlags(268435456);
                intent2.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.SingleAppActivity"));
                this.f17237b.startActivity(intent2);
            } catch (Exception e5) {
                try {
                    Intent intent3 = new Intent(this.f17238c);
                    intent3.setFlags(268435456);
                    intent3.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.MainActivity"));
                    this.f17237b.startActivity(intent3);
                } catch (Exception e6) {
                    e6.printStackTrace();
                    f();
                }
                e5.printStackTrace();
            }
        }
    }

    private void f() {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", this.f17237b.getPackageName(), null));
        try {
            this.f17237b.startActivity(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void g() {
        try {
            Intent intent = new Intent(this.f17238c);
            intent.setComponent(new ComponentName("com.android.settings", "com.android.settings.Settings$AccessLockSummaryActivity"));
            this.f17237b.startActivity(intent);
        } catch (Exception e4) {
            Toast.makeText(this.f17237b, "跳转失败", 1).show();
            e4.printStackTrace();
            f();
        }
    }

    private void h() {
        try {
            Intent intent = new Intent("com.meizu.safe.security.SHOW_APPSEC");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.putExtra("packageName", this.f17238c);
            this.f17237b.startActivity(intent);
        } catch (ActivityNotFoundException e4) {
            e4.printStackTrace();
            f();
        }
    }

    private void i() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setComponent(new ComponentName("com.oppo.launcher", "com.oppo.launcher.shortcut.ShortcutSettingsActivity"));
        try {
            this.f17237b.startActivity(intent);
        } catch (Exception e4) {
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setComponent(new ComponentName("com.color.safecenter", "com.color.safecenter.permission.PermissionManagerActivity"));
            try {
                this.f17237b.startActivity(intent);
            } catch (Exception e5) {
                a("com.coloros.safecenter");
                e5.printStackTrace();
            }
            e4.printStackTrace();
        }
    }

    private void j() {
        f();
    }

    private void k() {
        try {
            Intent intent = new Intent(this.f17238c);
            intent.setComponent(new ComponentName("com.sonymobile.cta", "com.sonymobile.cta.SomcCTAMainActivity"));
            this.f17237b.startActivity(intent);
        } catch (Exception e4) {
            Toast.makeText(this.f17237b, "跳转失败", 1).show();
            e4.printStackTrace();
            f();
        }
    }

    private void l() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setComponent(new ComponentName("com.bbk.launcher2", "com.bbk.launcher2.installshortcut.PurviewActivity"));
        try {
            this.f17237b.startActivity(intent);
        } catch (Exception e4) {
            a("com.iqoo.secure");
            e4.printStackTrace();
        }
    }

    private void m() {
        String c4 = c();
        StringBuilder sb = new StringBuilder();
        sb.append("goMiaoMiMainager --- rom : ");
        sb.append(c4);
        Intent intent = new Intent();
        if ("V6".equals(c4) || "V7".equals(c4)) {
            intent.setAction("miui.intent.action.APP_PERM_EDITOR");
            intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
            intent.putExtra("extra_pkgname", this.f17238c);
            this.f17237b.startActivity(intent);
        }
        f();
    }

    public void n() {
        String str = Build.MANUFACTURER;
        StringBuilder sb = new StringBuilder();
        sb.append("jumpPermissionPage --- name : ");
        sb.append(str);
        str.hashCode();
        char c4 = 65535;
        switch (str.hashCode()) {
            case -1678088054:
                if (str.equals("Coolpad")) {
                    c4 = 0;
                    break;
                }
                break;
            case -1675632421:
                if (str.equals("Xiaomi")) {
                    c4 = 1;
                    break;
                }
                break;
            case 2427:
                if (str.equals("LG")) {
                    c4 = 2;
                    break;
                }
                break;
            case 2432928:
                if (str.equals("OPPO")) {
                    c4 = 3;
                    break;
                }
                break;
            case 2582855:
                if (str.equals("Sony")) {
                    c4 = 4;
                    break;
                }
                break;
            case 3620012:
                if (str.equals("vivo")) {
                    c4 = 5;
                    break;
                }
                break;
            case 74224812:
                if (str.equals("Meizu")) {
                    c4 = 6;
                    break;
                }
                break;
            case 1864941562:
                if (str.equals("samsung")) {
                    c4 = 7;
                    break;
                }
                break;
            case 2141820391:
                if (str.equals("HUAWEI")) {
                    c4 = '\b';
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                d();
                return;
            case 1:
                m();
                return;
            case 2:
                g();
                return;
            case 3:
                i();
                return;
            case 4:
                k();
                return;
            case 5:
                l();
                return;
            case 6:
                h();
                return;
            case 7:
                j();
                return;
            case '\b':
                e();
                return;
            default:
                f();
                return;
        }
    }
}
