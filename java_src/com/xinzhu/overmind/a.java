package com.xinzhu.overmind;

import android.util.ArrayMap;
import android.util.Base64;
import com.join.mgps.mod.utils.d;
import com.xinzhu.overmind.utils.e;
import com.xinzhu.overmind.utils.j;
import java.io.File;
import java.security.SecureRandom;
import java.util.Locale;
/* compiled from: MindEnvironment.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63939a = "a";

    /* renamed from: b  reason: collision with root package name */
    private static File f63940b;

    /* renamed from: c  reason: collision with root package name */
    private static File f63941c;

    /* renamed from: d  reason: collision with root package name */
    private static File f63942d;

    /* renamed from: e  reason: collision with root package name */
    private static File f63943e;

    /* renamed from: f  reason: collision with root package name */
    private static File f63944f;

    /* renamed from: g  reason: collision with root package name */
    private static File f63945g = Overmind.getContext().getExternalFilesDir("virtual");

    /* renamed from: h  reason: collision with root package name */
    public static File f63946h = new File(l(), "junit.jar");

    /* renamed from: i  reason: collision with root package name */
    public static String f63947i = "armeabi-v7a";

    /* renamed from: j  reason: collision with root package name */
    public static String f63948j = d.f51074d;

    /* renamed from: k  reason: collision with root package name */
    public static String f63949k = "arm64-v8a";

    /* renamed from: l  reason: collision with root package name */
    public static ArrayMap<String, String> f63950l = new ArrayMap<>();

    static {
        File parentFile = new File(Overmind.getContext().getApplicationInfo().dataDir).getParentFile();
        f63940b = parentFile;
        try {
            f63940b = parentFile.getCanonicalFile();
        } catch (Throwable unused) {
        }
        f63941c = new File(f63940b, Overmind.getMainPkg());
        f63942d = new File(f63941c, "virtual");
        f63943e = new File(f63940b, Overmind.getPluginPkg());
        f63944f = new File(f63943e, "virtual");
        f63950l.put(f63947i, "arm");
        f63950l.put(f63948j, "arm");
        f63950l.put(f63949k, "arm64");
    }

    public static File A(String packageName, int userId) {
        return new File(B(packageName, userId), "cache");
    }

    public static File B(String packageName, int userId) {
        return new File(E(userId), String.format(Locale.CHINA, "Android/data/%s", packageName));
    }

    public static File C(String packageName, int userId) {
        return new File(B(packageName, userId), "files");
    }

    public static File D() {
        return f63945g;
    }

    public static File E(int userId) {
        return new File(f63945g, String.format(Locale.CHINA, "%d/", Integer.valueOf(userId)));
    }

    public static File F() {
        return f63945g;
    }

    public static File G(String packageName) {
        if (e.v()) {
            byte[] bArr = new byte[16];
            new SecureRandom().nextBytes(bArr);
            return new File(String.format("/data/app/%s-%s/base.apk", packageName, Base64.encodeToString(bArr, 10)));
        }
        return new File(String.format("/data/app/%s-1/base.apk", packageName));
    }

    public static String H(String abi) {
        String str = f63950l.get(abi);
        if (str != null) {
            return str;
        }
        throw new RuntimeException("Invalid abi " + abi);
    }

    public static File I(String baseCodePath, String splitName) {
        String substring = baseCodePath.substring(0, baseCodePath.lastIndexOf(47));
        return new File(substring, splitName + ".apk");
    }

    public static File J(String packageName) {
        return new File(d(packageName), "package.conf");
    }

    public static File K(String packageName, String splitName) {
        File file = f63942d;
        return new File(file, "data/app/" + packageName + "/split_" + splitName + ".apk");
    }

    public static File L(String packageName, String splitName) {
        File file = f63944f;
        return new File(file, "data/app/" + packageName + "/split_" + splitName + ".apk");
    }

    public static File M() {
        return new File(f63942d, "system");
    }

    public static File N() {
        return new File(f63944f, "system");
    }

    public static File O() {
        return new File(M(), "uid.conf");
    }

    public static File P(int userId) {
        return new File(f63942d, String.format(Locale.CHINA, "data/user/%d", Integer.valueOf(userId)));
    }

    public static File Q(int userId) {
        return new File(f63944f, String.format(Locale.CHINA, "data/user/%d", Integer.valueOf(userId)));
    }

    public static File R() {
        return new File(M(), "user.conf");
    }

    public static File S() {
        return f63942d;
    }

    public static File T() {
        return f63944f;
    }

    public static File U(String baseCodePath, String splitName) {
        String substring = baseCodePath.substring(0, baseCodePath.lastIndexOf(47));
        return new File(substring, "/split_" + splitName + ".apk");
    }

    public static File V() {
        return new File(M(), "xposed-module.conf");
    }

    public static void W() {
        j.p(f63942d);
        j.p(f63945g);
        j.p(M());
        j.p(l());
    }

    public static File a(File base, String... segments) {
        for (String str : segments) {
            if (base == null) {
                base = new File(str);
            } else {
                base = new File(base, str);
            }
        }
        return base;
    }

    public static File b(int userId) {
        return new File(P(userId), "accounts");
    }

    public static File c(int userId) {
        return new File(Q(userId), "accounts");
    }

    public static File d(String packageName) {
        File file = f63942d;
        return new File(file, "data/app/" + packageName);
    }

    public static File e(String packageName) {
        File file = f63944f;
        return new File(file, "data/app/" + packageName);
    }

    public static File f(String packageName) {
        return new File(d(packageName), "lib");
    }

    public static File g(String packageName) {
        return new File(e(packageName), "lib");
    }

    public static File h() {
        return d("");
    }

    public static File i() {
        return e("");
    }

    public static File j(String packageName) {
        File file = f63942d;
        return new File(file, "data/app/" + packageName + "/base.apk");
    }

    public static File k(String packageName) {
        File file = f63944f;
        return new File(file, "data/app/" + packageName + "/base.apk");
    }

    public static File l() {
        return new File(f63942d, "cache");
    }

    public static File m() {
        return new File(f63944f, "cache");
    }

    public static File n(String packageName, int userId) {
        return new File(r(packageName, userId), "cache");
    }

    public static File o(String packageName, int userId) {
        return new File(s(packageName, userId), "cache");
    }

    public static File p(String packageName, int userId) {
        return new File(r(packageName, userId), "databases");
    }

    public static File q(String packageName, int userId) {
        return new File(s(packageName, userId), "databases");
    }

    public static File r(String packageName, int userId) {
        return new File(f63942d, String.format(Locale.CHINA, "data/user/%d/%s", Integer.valueOf(userId), packageName));
    }

    public static File s(String packageName, int userId) {
        return new File(f63944f, String.format(Locale.CHINA, "data/user/%d/%s", Integer.valueOf(userId), packageName));
    }

    public static File t(String packageName, int userId) {
        return new File(r(packageName, userId), "files");
    }

    public static File u(String packageName, int userId) {
        return new File(s(packageName, userId), "files");
    }

    public static File v(String packageName, int userId) {
        return new File(r(packageName, userId), "lib");
    }

    public static File w(String packageName, int userId) {
        return new File(s(packageName, userId), "lib");
    }

    public static File x(String packageName, int userId) {
        return new File(f63942d, String.format(Locale.CHINA, "data/user_de/%d/%s", Integer.valueOf(userId), packageName));
    }

    public static File y(String packageName, int userId) {
        return new File(f63944f, String.format(Locale.CHINA, "data/user_de/%d/%s", Integer.valueOf(userId), packageName));
    }

    public static File z() {
        return new File(M(), "enabled-component.conf");
    }
}
