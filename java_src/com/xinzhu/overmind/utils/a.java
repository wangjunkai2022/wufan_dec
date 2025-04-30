package com.xinzhu.overmind.utils;

import com.xinzhu.overmind.Overmind;
import java.io.File;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* compiled from: AbiUtils.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static Map<File, a> f64676b = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private HashSet<String> f64677a = new HashSet<>();

    public a(File apkFile) {
        ZipFile zipFile;
        File[] fileArr;
        ZipFile zipFile2;
        ZipFile zipFile3 = null;
        if (apkFile.isDirectory()) {
            File[] listFiles = apkFile.listFiles();
            Objects.requireNonNull(listFiles);
            for (File file : listFiles) {
                if (file.getName().endsWith(".apk")) {
                    try {
                        zipFile2 = new ZipFile(file);
                        try {
                            try {
                                Enumeration<? extends ZipEntry> entries = zipFile2.entries();
                                while (entries.hasMoreElements()) {
                                    String name = entries.nextElement().getName();
                                    if (name.startsWith("lib/arm64-v8a")) {
                                        this.f64677a.add("arm64-v8a");
                                    } else if (name.startsWith("lib/armeabi-v7a")) {
                                        this.f64677a.add("armeabi-v7a");
                                    } else if (name.startsWith("lib/armeabi")) {
                                        this.f64677a.add(com.join.mgps.mod.utils.d.f51074d);
                                    }
                                }
                                l.a(zipFile2);
                            } catch (Throwable th) {
                                th = th;
                                zipFile3 = zipFile2;
                                l.a(zipFile3);
                                throw th;
                            }
                        } catch (Exception e4) {
                            e = e4;
                            e.printStackTrace();
                            l.a(zipFile2);
                        }
                    } catch (Exception e5) {
                        e = e5;
                        zipFile2 = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            }
            return;
        }
        try {
            try {
                zipFile = new ZipFile(apkFile);
            } catch (Exception e6) {
                e = e6;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            Enumeration<? extends ZipEntry> entries2 = zipFile.entries();
            while (entries2.hasMoreElements()) {
                String name2 = entries2.nextElement().getName();
                if (name2.startsWith("lib/arm64-v8a")) {
                    this.f64677a.add("arm64-v8a");
                } else if (name2.startsWith("lib/armeabi-v7a")) {
                    this.f64677a.add("armeabi-v7a");
                } else if (name2.startsWith("lib/armeabi")) {
                    this.f64677a.add(com.join.mgps.mod.utils.d.f51074d);
                }
            }
            l.a(zipFile);
        } catch (Exception e7) {
            e = e7;
            zipFile3 = zipFile;
            e.printStackTrace();
            l.a(zipFile3);
        } catch (Throwable th4) {
            th = th4;
            zipFile3 = zipFile;
            l.a(zipFile3);
            throw th;
        }
    }

    public static HashSet<String> a(File apkFile) {
        a aVar = f64676b.get(apkFile);
        if (aVar == null) {
            aVar = new a(apkFile);
            f64676b.put(apkFile, aVar);
        }
        return aVar.f64677a;
    }

    public static boolean e(File apkFile) {
        a aVar = f64676b.get(apkFile);
        if (aVar == null) {
            aVar = new a(apkFile);
            f64676b.put(apkFile, aVar);
        }
        if (aVar.d() || Overmind.isPluginPkgInstalled()) {
            return true;
        }
        if (Overmind.is64Bit()) {
            return aVar.c();
        }
        return aVar.b();
    }

    public boolean b() {
        return this.f64677a.contains(com.join.mgps.mod.utils.d.f51074d) || this.f64677a.contains("armeabi-v7a");
    }

    public boolean c() {
        return this.f64677a.contains("arm64-v8a");
    }

    public boolean d() {
        return this.f64677a.isEmpty();
    }
}
