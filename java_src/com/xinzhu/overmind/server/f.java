package com.xinzhu.overmind.server;

import android.os.Environment;
import android.util.ArrayMap;
import androidx.annotation.VisibleForTesting;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.xinzhu.overmind.utils.u;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
/* compiled from: MindSystemConfig.java */
/* loaded from: classes3.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    static final String f64463b = "MindSystemConfig";

    /* renamed from: c  reason: collision with root package name */
    static f f64464c = null;

    /* renamed from: d  reason: collision with root package name */
    private static final int f64465d = 2;

    /* renamed from: e  reason: collision with root package name */
    private static final int f64466e = -1;

    /* renamed from: a  reason: collision with root package name */
    final ArrayMap<String, b> f64467a = new ArrayMap<>();

    /* compiled from: MindSystemConfig.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f64468a;

        /* renamed from: b  reason: collision with root package name */
        public int[] f64469b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f64470c;

        a(String name, boolean perUser) {
            this.f64468a = name;
            this.f64470c = perUser;
        }
    }

    /* compiled from: MindSystemConfig.java */
    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f64471a;

        /* renamed from: b  reason: collision with root package name */
        public final String f64472b;

        /* renamed from: c  reason: collision with root package name */
        public final String[] f64473c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f64474d;

        b(String name, String filename, String[] dependencies) {
            this(name, filename, dependencies, false);
        }

        b(String name, String filename, String[] dependencies, boolean isNative) {
            this.f64471a = name;
            this.f64472b = filename;
            this.f64473c = dependencies;
            this.f64474d = isNative;
        }
    }

    f() {
        d();
        h();
    }

    public static f a() {
        f fVar;
        synchronized (f.class) {
            if (f64464c == null) {
                f64464c = new f();
            }
            fVar = f64464c;
        }
        return fVar;
    }

    private void c(String name, File permFile, XmlPullParser parser) {
        u.j(f64463b, SimpleComparison.LESS_THAN_OPERATION + name + "> not allowed in partition of " + permFile + " at " + parser.getPositionDescription());
    }

    private void d() {
        e(com.xinzhu.overmind.a.a(Environment.getRootDirectory(), "etc", "permissions"), -1);
        e(com.xinzhu.overmind.a.a(new File("/vendor"), "etc", "permissions"), -1);
        e(com.xinzhu.overmind.a.a(new File("/odm"), "etc", "permissions"), -1);
        e(com.xinzhu.overmind.a.a(new File("/oem"), "etc", "permissions"), -1);
        e(com.xinzhu.overmind.a.a(new File("/product"), "etc", "permissions"), -1);
        e(com.xinzhu.overmind.a.a(new File("/system_ext"), "etc", "permissions"), -1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a4, code lost:
        com.xinzhu.overmind.utils.v.c(r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void f(java.io.File r13, int r14) {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xinzhu.overmind.server.f.f(java.io.File, int):void");
    }

    private void g(File listFile) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(listFile));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (!readLine.isEmpty() && !readLine.startsWith("#")) {
                        String str = readLine.trim().split(" ")[0];
                        b bVar = new b(str, str, new String[0], true);
                        this.f64467a.put(bVar.f64471a, bVar);
                    }
                } else {
                    bufferedReader.close();
                    return;
                }
            }
        } catch (IOException e4) {
            u.k(f64463b, "Failed to read public libraries file " + listFile, e4);
        }
    }

    private void h() {
        g(new File("/vendor/etc/public.libraries.txt"));
        String[] strArr = {"/system/etc", "/system_ext/etc", "/product/etc"};
        for (int i2 = 0; i2 < 3; i2++) {
            String str = strArr[i2];
            File[] listFiles = new File(str).listFiles();
            if (listFiles == null) {
                u.j(f64463b, "Public libraries file folder missing: " + str);
            } else {
                for (File file : listFiles) {
                    String name = file.getName();
                    if (name.startsWith("public.libraries-") && name.endsWith(".txt")) {
                        g(file);
                    }
                }
            }
        }
    }

    public ArrayMap<String, b> b() {
        return this.f64467a;
    }

    @VisibleForTesting
    public void e(File libraryDir, int permissionFlag) {
        File[] listFiles;
        if (!libraryDir.exists() || !libraryDir.isDirectory()) {
            if (permissionFlag == -1) {
                u.j(f64463b, "No directory " + libraryDir + ", skipping");
            }
        } else if (libraryDir.canRead()) {
            File file = null;
            for (File file2 : libraryDir.listFiles()) {
                if (file2.isFile()) {
                    if (file2.getPath().endsWith("etc/permissions/platform.xml")) {
                        file = file2;
                    } else if (!file2.getPath().endsWith(".xml")) {
                        u.e(f64463b, "Non-xml file " + file2 + " in " + libraryDir + " directory, ignoring");
                    } else if (file2.canRead()) {
                        f(file2, permissionFlag);
                    } else {
                        u.j(f64463b, "Permissions library file " + file2 + " cannot be read");
                    }
                }
            }
            if (file != null) {
                f(file, permissionFlag);
            }
        } else {
            u.j(f64463b, "Directory " + libraryDir + " cannot be read");
        }
    }
}
