package com.bytedance.pangle.plugin;

import android.content.pm.PackageInfo;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.PluginClassLoader;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusPluginEventCallback;
import com.bytedance.pangle.b.b;
import com.bytedance.pangle.d.b;
import com.bytedance.pangle.f.e;
import com.bytedance.pangle.g;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.f;
import com.join.mgps.Util.g0;
import dalvik.system.DexFile;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final g f10282a = g.a();

    /* loaded from: classes2.dex */
    public static class a extends IOException {
        /* synthetic */ a(String str, byte b4) {
            this(str);
        }

        /* synthetic */ a(String str, Throwable th, byte b4) {
            this(str, th);
        }

        private a(String str) {
            super(str);
        }

        private a(String str, Throwable th) {
            super(str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(File file, String str, int i2) {
        g gVar;
        String str2 = str;
        StringBuilder sb = new StringBuilder();
        try {
            try {
                gVar = f10282a;
            } catch (a e4) {
                e = e4;
            }
            try {
                gVar.a(1000, 0, str, i2, null);
                com.bytedance.pangle.log.b a4 = com.bytedance.pangle.log.b.a(ZeusLogger.TAG_INSTALL, "PluginInstaller", "install:".concat(String.valueOf(str)));
                a(com.bytedance.pangle.b.b.f10079e, b.a.f10098n, str, i2, -1L, null);
                f.a(com.bytedance.pangle.c.c.a(str, i2));
                long a5 = a4.a("cleanDir");
                if (a5 > 30 || a5 < 0) {
                    sb.append("cleanDir cost:");
                    sb.append(a5);
                    sb.append(";");
                }
                try {
                    if (e.a(file.getAbsolutePath(), str2)) {
                        long a6 = a4.a("checkSignature");
                        if (a6 > 30 || a6 < 0) {
                            sb.append("checkSignature cost:");
                            sb.append(a6);
                            sb.append(";");
                        }
                        if (GlobalParam.getInstance().checkMatchHostAbi()) {
                            try {
                                if (!com.bytedance.pangle.c.b.a(file)) {
                                    throw new a("插件包包含so不符合宿主ABI类型", (byte) 0);
                                }
                            } catch (Exception e5) {
                                a(com.bytedance.pangle.b.b.f10080f, b.a.f10107w, str, i2, -1L, null);
                                f10282a.a(ZeusPluginEventCallback.EVENT_FINISH_INSTALLATION, -5, str, i2, e5);
                                throw new a("插件包包含so不符合宿主ABI类型", e5, (byte) 0);
                            }
                        }
                        long a7 = a4.a("checkMathHostAbi");
                        if (a7 > 30 || a7 < 0) {
                            sb.append("checkMathHostAbi cost:");
                            sb.append(a7);
                            sb.append(";");
                        }
                        b(file, str, i2);
                        long a8 = a4.a("checkPermissions");
                        if (a8 > 30 || a8 < 0) {
                            sb.append("checkPermissions cost:");
                            sb.append(a8);
                            sb.append(";");
                        }
                        String c4 = c(file, str, i2);
                        long a9 = a4.a("copyApk");
                        if (a9 > 30 || a9 < 0) {
                            sb.append("copyApk cost:");
                            sb.append(a9);
                            sb.append(";");
                        }
                        StringBuilder sb2 = new StringBuilder();
                        int a10 = new com.bytedance.pangle.res.a.c().a(new File(c4), false, sb2);
                        if (a10 != 100 && a10 != 200) {
                            String sb3 = sb2.toString();
                            a(com.bytedance.pangle.b.b.f10080f, b.a.f10108x, str, i2, -1L, sb3);
                            gVar.a(ZeusPluginEventCallback.EVENT_FINISH_INSTALLATION, -2, str, i2, null);
                            throw new a("modifyRes failed. result = " + a10 + ", errorLog = " + sb3, (byte) 0);
                        }
                        long a11 = a4.a(a10 == 100 ? "modifyRes" : "noModifyRes");
                        if (a11 > 30 || a11 < 0) {
                            sb.append("modifyRes cost:");
                            sb.append(a11);
                            sb.append(";");
                        }
                        try {
                            com.bytedance.pangle.c.b.a(new File(com.bytedance.pangle.c.c.b(str, i2)), new File(com.bytedance.pangle.c.c.d(str, i2)), str2);
                            long a12 = a4.a("copySo");
                            if (a12 > 30 || a12 < 0) {
                                sb.append("copySo cost:");
                                sb.append(a12);
                                sb.append(";");
                            }
                            try {
                                String c5 = com.bytedance.pangle.c.c.c(str, i2);
                                String d4 = com.bytedance.pangle.c.c.d(str, i2);
                                String absolutePath = file.getAbsolutePath();
                                if (Build.VERSION.SDK_INT < 26) {
                                    try {
                                        if (com.bytedance.pangle.c.d.a(Zeus.getAppApplication())) {
                                            DexFile.loadDex(absolutePath, null, 0).close();
                                        }
                                    } catch (Exception e6) {
                                        e6.printStackTrace();
                                    }
                                }
                                String b4 = com.bytedance.pangle.c.c.b(str, i2);
                                if (GlobalParam.getInstance().isFastDex2oat()) {
                                    int i4 = Build.VERSION.SDK_INT;
                                    if (i4 >= 21 && i4 < 26) {
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append(c5);
                                        sb4.append(File.separator);
                                        String substring = b4.substring(b4.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                                        String substring2 = substring.substring(substring.lastIndexOf(g0.f27568a));
                                        String str3 = i4 >= 26 ? ".odex" : ".dex";
                                        if (!".dex".equals(substring2)) {
                                            if (!".zip".equals(substring2) && !".apk".equals(substring2)) {
                                                substring = substring + str3;
                                            }
                                            substring = substring.replace(substring2, str3);
                                        }
                                        sb4.append(substring);
                                        String sb5 = sb4.toString();
                                        File file2 = new File(sb5);
                                        if (!file2.exists() || !com.bytedance.pangle.d.c.a(file2)) {
                                            int i5 = b.a.f10131b;
                                            ArrayList arrayList = new ArrayList();
                                            arrayList.add("dex2oat");
                                            if (i4 >= 24) {
                                                arrayList.add("--runtime-arg");
                                                arrayList.add("-classpath");
                                                arrayList.add("--runtime-arg");
                                                arrayList.add(m.a.f72566d);
                                            }
                                            arrayList.add("--instruction-set=" + com.bytedance.pangle.d.b.a());
                                            if (i5 == b.a.f10130a) {
                                                arrayList.add("--compiler-filter=verify-none");
                                            } else if (i5 == b.a.f10131b) {
                                                arrayList.add("--compiler-filter=interpret-only");
                                            } else {
                                                int i6 = b.a.f10132c;
                                            }
                                            arrayList.add("--dex-file=".concat(b4));
                                            arrayList.add("--oat-file=".concat(String.valueOf(sb5)));
                                            com.bytedance.pangle.d.a.a((String[]) arrayList.toArray(new String[arrayList.size()]));
                                        }
                                    }
                                }
                                PluginClassLoader pluginClassLoader = new PluginClassLoader(b4, c5, d4, null);
                                if (!TextUtils.isEmpty("")) {
                                    pluginClassLoader.loadClass("");
                                }
                                long a13 = a4.a("dexOpt");
                                if (a13 > 30 || a13 < 0) {
                                    sb.append("dexOpt cost:");
                                    sb.append(a13);
                                    sb.append(";");
                                }
                                f.a(file);
                                long a14 = a4.a("cleanPluginApk");
                                if (a14 > 30 || a14 < 0) {
                                    sb.append("cleanPluginApk cost:");
                                    sb.append(a14);
                                    sb.append(";");
                                }
                                a(com.bytedance.pangle.b.b.f10080f, b.a.f10099o, str, i2, a4.a(), sb.toString());
                                a4.b("success");
                                f10282a.a(ZeusPluginEventCallback.EVENT_FINISH_INSTALLATION, 0, str, i2, null);
                                return true;
                            } catch (Exception e7) {
                                a(com.bytedance.pangle.b.b.f10080f, b.a.f10106v, str, i2, -1L, null);
                                f10282a.a(ZeusPluginEventCallback.EVENT_FINISH_INSTALLATION, -8, str, i2, e7);
                                throw new a("dexOpt失败", e7, (byte) 0);
                            }
                        } catch (Exception e8) {
                            a(com.bytedance.pangle.b.b.f10080f, b.a.f10104t, str, i2, -1L, null);
                            f10282a.a(ZeusPluginEventCallback.EVENT_FINISH_INSTALLATION, -7, str, i2, e8);
                            throw new a("安装包动态库拷贝失败", e8, (byte) 0);
                        }
                    }
                    throw new RuntimeException("安装包签名校验失败[1]");
                } catch (Exception e9) {
                    a(com.bytedance.pangle.b.b.f10080f, b.a.f10101q, str, i2, -1L, null);
                    f10282a.a(ZeusPluginEventCallback.EVENT_FINISH_INSTALLATION, -3, str, i2, e9);
                    throw new a(e9.getMessage(), e9, (byte) 0);
                }
            } catch (a e10) {
                e = e10;
                str2 = str;
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "PluginInstaller " + str2 + " install failed.", e);
                return false;
            }
        } catch (Exception e11) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "PluginInstaller " + str + " install failed unknown error.", e11);
            a(com.bytedance.pangle.b.b.f10080f, b.a.f10100p, str, i2, -1L, sb.toString());
            f10282a.a(ZeusPluginEventCallback.EVENT_FINISH_INSTALLATION, -1, str, i2, e11);
            return false;
        }
    }

    private static void b(File file, String str, int i2) {
        String[] strArr;
        try {
            PackageInfo packageInfo = Zeus.getAppApplication().getPackageManager().getPackageInfo(Zeus.getAppApplication().getPackageName(), 4096);
            PackageInfo packageArchiveInfo = Zeus.getAppApplication().getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 4096);
            List asList = Arrays.asList(packageInfo.requestedPermissions);
            String[] strArr2 = packageArchiveInfo.requestedPermissions;
            if (strArr2 == null || strArr2.length <= 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (String str2 : packageArchiveInfo.requestedPermissions) {
                if (!asList.contains(str2)) {
                    arrayList.add(str2);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            ZeusLogger.w("PluginInstaller", "The following permissions are declared in the plugin but not in the host: ".concat(String.valueOf(arrayList)));
            if (GlobalParam.getInstance().checkPermission()) {
                throw new a("The following permissions are declared in the plugin but not in the host: ".concat(String.valueOf(arrayList)), (byte) 0);
            }
        } catch (Exception e4) {
            a(com.bytedance.pangle.b.b.f10080f, b.a.f10102r, str, i2, -1L, null);
            f10282a.a(ZeusPluginEventCallback.EVENT_FINISH_INSTALLATION, -4, str, i2, e4);
            throw new a("安装包权限校验失败", e4, (byte) 0);
        }
    }

    private static String c(File file, String str, int i2) {
        String b4 = com.bytedance.pangle.c.c.b(str, i2);
        try {
            String absolutePath = file.getAbsolutePath();
            if (!TextUtils.isEmpty(absolutePath) && !TextUtils.isEmpty(b4)) {
                File file2 = new File(absolutePath);
                File file3 = new File(b4);
                if (file2.exists() && file2.isFile() && file2.canRead()) {
                    if (file3.getParentFile() != null && !file3.getParentFile().exists()) {
                        file3.getParentFile().mkdirs();
                    }
                    FileInputStream fileInputStream = new FileInputStream(absolutePath);
                    FileOutputStream fileOutputStream = new FileOutputStream(b4);
                    FileChannel channel = fileInputStream.getChannel();
                    FileChannel channel2 = fileOutputStream.getChannel();
                    channel2.write(channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size()));
                    channel.close();
                    channel2.close();
                    fileInputStream.close();
                    fileOutputStream.close();
                }
            }
            return b4;
        } catch (Exception e4) {
            a(com.bytedance.pangle.b.b.f10080f, b.a.f10103s, str, i2, -1L, null);
            f10282a.a(ZeusPluginEventCallback.EVENT_FINISH_INSTALLATION, -6, str, i2, e4);
            throw new a("安装包拷贝失败", e4, (byte) 0);
        }
    }

    private static void a(String str, int i2, @NonNull String str2, int i4, long j4, String str3) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject.putOpt("status_code", com.bytedance.pangle.log.c.a(Integer.valueOf(i2)));
            jSONObject.putOpt("plugin_package_name", com.bytedance.pangle.log.c.a(str2));
            jSONObject.putOpt("version_code", com.bytedance.pangle.log.c.a(Integer.valueOf(i4)));
            jSONObject3.putOpt("duration", Integer.valueOf(com.bytedance.pangle.log.c.b(Long.valueOf(j4))));
            jSONObject2.putOpt("message", com.bytedance.pangle.log.c.a(str3));
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        com.bytedance.pangle.b.b.a().a(str, jSONObject, jSONObject3, jSONObject2);
    }
}
