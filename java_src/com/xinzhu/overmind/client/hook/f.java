package com.xinzhu.overmind.client.hook;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.xinzhu.overmind.client.VMCore;
import java.io.File;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
/* compiled from: IOManager.java */
@SuppressLint({"SdCardPath"})
/* loaded from: classes.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    public static final String f64126b = "f";

    /* renamed from: c  reason: collision with root package name */
    private static f f64127c = new f();

    /* renamed from: d  reason: collision with root package name */
    private static final Map<String, Map<String, String>> f64128d = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f64129a = new LinkedHashMap();

    private void a(Map<String, String> rule, String path) {
        rule.put(path, path + "-fake");
    }

    public static f d() {
        return f64127c;
    }

    private void e(Map<String, String> rule) {
        a(rule, "/system/bin/failsafe/su");
        a(rule, "/data/local/su");
        a(rule, "/data/local/bin/su");
        a(rule, "/data/local/xbin/su");
        a(rule, "/system/sd/bin/su");
        a(rule, "/system/sd/xbin/su");
        a(rule, "/sbin");
        a(rule, "/data/local/sbin");
        a(rule, "/su");
        a(rule, "/system/sbin");
        a(rule, "/system/sd/sbin");
        a(rule, "/apex/com.android.runtime/bin/daemonsu");
        a(rule, "/apex/com.android.runtime/bin/su");
        a(rule, "/data/adb/magisk/magisk");
        a(rule, "/data/data-lib/com.kingroot.RushRoot");
        a(rule, "/data/data-lib/com.kingroot.kinguser");
        a(rule, "/data/data/com.kingoapp.apk");
        a(rule, "/data/data/com.kingroot.kinguser");
        a(rule, "/data/data/com.topjohnwu.magisk");
        a(rule, "/data/app/com.topjohnwu.magisk");
        a(rule, "/data/data/eu.chainfire.supersu");
        a(rule, "/data/data/kingoroot.supersu");
        a(rule, "/data/user/0/com.kingroot.kinguser");
        a(rule, "/data/user_de/0/com.kingroot.kinguser");
        a(rule, "/data/user_de/0/eu.chainfire.supersu");
        a(rule, "/dev/__properties__/u:object_r:supersu_prop:s0");
        a(rule, "/dev/com.koushikdutta.superuser.daemon");
        a(rule, "/dev/kingroot");
        a(rule, "/dev/kinguser_req_cache");
        a(rule, "/init.supersu.rc");
        a(rule, "/magisk");
        a(rule, "/root/magisk");
        a(rule, "/storage/emulated/0/daemonsu");
        a(rule, "/storage/emulated/0/su");
        a(rule, "/system/addon.d/51-addonsu.sh");
        a(rule, "/system/app/KingoUser.apk");
        a(rule, "/system/app/Superuser.apk");
        a(rule, "/system/app/SuperSU.apk");
        a(rule, "/system/app/Superuser");
        a(rule, "/system/app/SuperSU");
        a(rule, "/system/bin/.ext/.su");
        a(rule, "/system/bin/su");
        a(rule, "/system/etc/.has_su_daemon");
        a(rule, "/system/etc/.installed_su_daemon");
        a(rule, "/system/etc/init.d/99SuperSUDaemon");
        a(rule, "/system/etc/init/superuser.rc");
        a(rule, "/system/su");
        a(rule, "/system/usr/we-need-root/su-backup");
        a(rule, "/system/xbin/daemonsu");
        a(rule, "/system/xbin/ku.sud");
        a(rule, "/system/xbin/mu");
        a(rule, "/system/xbin/start_kusud.sh");
        a(rule, "/system/xbin/su");
        a(rule, "/vendor/bin/daemonsu");
        a(rule, "/vendor/bin/su");
        a(rule, "root/magiskinit");
        a(rule, "root/magiskinit");
    }

    public void b(String origPath, String redirectPath) {
        if (TextUtils.isEmpty(origPath) || TextUtils.isEmpty(redirectPath) || this.f64129a.get(origPath) != null) {
            return;
        }
        this.f64129a.put(origPath, redirectPath);
        File file = new File(redirectPath);
        if (!file.exists()) {
            file.mkdirs();
        }
        if (origPath.endsWith(net.lingala.zip4j.util.e.F0)) {
            origPath = origPath.substring(0, origPath.length() - 1);
        }
        if (redirectPath.endsWith(net.lingala.zip4j.util.e.F0)) {
            redirectPath = redirectPath.substring(0, redirectPath.length() - 1);
        }
        String str = f64126b;
        com.xinzhu.overmind.b.c(str, "addRedirect " + origPath + " --> " + redirectPath);
        VMCore.addIORule(origPath, redirectPath);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x01f9, code lost:
        r0.put("/storage/emulated/0/", r14 + net.lingala.zip4j.util.e.F0);
        r0.put("/sdcard/", r14 + net.lingala.zip4j.util.e.F0);
        r0.put("/mnt/sdcard/", r14 + net.lingala.zip4j.util.e.F0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(java.lang.String r14, java.util.Map<java.lang.String, java.lang.String> r15) {
        /*
            Method dump skipped, instructions count: 622
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xinzhu.overmind.client.hook.f.c(java.lang.String, java.util.Map):void");
    }

    public File f(File path) {
        if (path == null) {
            return null;
        }
        return new File(h(path.getAbsolutePath()));
    }

    public File g(File path, Map<String, String> rule) {
        if (path == null) {
            return null;
        }
        return new File(i(path.getAbsolutePath(), rule));
    }

    public String h(String path) {
        if (TextUtils.isEmpty(path)) {
            return path;
        }
        for (String str : this.f64129a.keySet()) {
            if (path.startsWith(str)) {
                CharSequence charSequence = (String) this.f64129a.get(str);
                Objects.requireNonNull(charSequence);
                return path.replace(str, charSequence);
            }
        }
        return path;
    }

    public String i(String path, Map<String, String> rule) {
        if (TextUtils.isEmpty(path)) {
            return path;
        }
        for (String str : rule.keySet()) {
            if (path.startsWith(str)) {
                CharSequence charSequence = (String) rule.get(str);
                Objects.requireNonNull(charSequence);
                return path.replace(str, charSequence);
            }
        }
        return path;
    }

    public String j(String path) {
        if (TextUtils.isEmpty(path)) {
            return path;
        }
        for (CharSequence charSequence : this.f64129a.keySet()) {
            String str = this.f64129a.get(charSequence);
            if (str != null && path.startsWith(str)) {
                return path.replace(str, charSequence);
            }
        }
        return path;
    }
}
