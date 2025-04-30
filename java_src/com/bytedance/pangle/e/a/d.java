package com.bytedance.pangle.e.a;

import android.content.pm.PackageInfo;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import java.io.Closeable;
import java.io.File;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes2.dex */
public final class d {
    public static e a(File file) {
        ZipFile zipFile;
        a aVar;
        int b4;
        int i2;
        try {
            if (!file.exists()) {
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, file.getAbsolutePath() + " not exists!");
                com.bytedance.pangle.util.f.a((Closeable) null);
                return null;
            }
            ZipFile zipFile2 = new ZipFile(file);
            try {
                ZipEntry entry = zipFile2.getEntry("AndroidManifest.xml");
                if (entry == null) {
                    ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "没有找到AndroidManifest.xml entry");
                    com.bytedance.pangle.util.f.a(zipFile2);
                    return null;
                }
                aVar = new a();
                try {
                    InputStream inputStream = zipFile2.getInputStream(entry);
                    aVar.a();
                    if (inputStream != null) {
                        aVar.f10193b = new b(inputStream);
                    }
                    do {
                        b4 = aVar.b();
                        if (b4 == 1) {
                            ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "已达到END_DOCUMENT");
                            try {
                                aVar.a();
                            } catch (Throwable unused) {
                            }
                            com.bytedance.pangle.util.f.a(zipFile2);
                            return null;
                        }
                    } while (b4 != 2);
                    int length = aVar.f10192a != 2 ? -1 : aVar.f10194c.length / 5;
                    String str = null;
                    String str2 = null;
                    for (int i4 = 0; i4 != length; i4++) {
                        if ("versionCode".equals(aVar.a(i4))) {
                            str = a(aVar, i4);
                        } else if ("package".equals(aVar.a(i4))) {
                            str2 = a(aVar, i4);
                        }
                    }
                    try {
                        i2 = Integer.parseInt(str);
                    } catch (Throwable unused2) {
                        i2 = -1;
                    }
                    if (i2 == -1) {
                        ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "versionCode获取失败:".concat(String.valueOf(str)));
                        try {
                            aVar.a();
                        } catch (Throwable unused3) {
                        }
                        com.bytedance.pangle.util.f.a(zipFile2);
                        return null;
                    }
                    e eVar = new e(str2, i2);
                    try {
                        aVar.a();
                    } catch (Throwable unused4) {
                    }
                    com.bytedance.pangle.util.f.a(zipFile2);
                    return eVar;
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    zipFile = zipFile2;
                    th = th2;
                    try {
                        PackageInfo packageArchiveInfo = Zeus.getAppApplication().getPackageManager().getPackageArchiveInfo(file.getPath(), 0);
                        if (packageArchiveInfo == null) {
                            ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "packageArchiveInfo == null", th);
                            return null;
                        }
                        e eVar2 = new e(packageArchiveInfo.packageName, packageArchiveInfo.versionCode);
                        if (aVar != null) {
                            try {
                                aVar.a();
                            } catch (Throwable unused5) {
                            }
                        }
                        com.bytedance.pangle.util.f.a(zipFile);
                        return eVar2;
                    } finally {
                        if (aVar != null) {
                            try {
                                aVar.a();
                            } catch (Throwable unused6) {
                            }
                        }
                        com.bytedance.pangle.util.f.a(zipFile);
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                aVar = null;
            }
        } catch (Throwable th4) {
            th = th4;
            zipFile = null;
            aVar = null;
        }
    }

    private static String a(int i2) {
        return (i2 >>> 24) == 1 ? "android:" : "";
    }

    private static String a(a aVar, int i2) {
        int b4 = aVar.b(i2);
        int c4 = aVar.c(i2);
        if (b4 == 3) {
            return aVar.d(i2);
        }
        return b4 == 2 ? String.format("?%s%08X", a(c4), Integer.valueOf(c4)) : (b4 < 16 || b4 > 31) ? String.format("<0x%X, type 0x%02X>", Integer.valueOf(c4), Integer.valueOf(b4)) : String.valueOf(c4);
    }
}
