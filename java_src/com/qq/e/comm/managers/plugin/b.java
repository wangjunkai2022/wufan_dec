package com.qq.e.comm.managers.plugin;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.qq.e.comm.constants.CustomPkgConstants;
import com.qq.e.comm.constants.Sig;
import com.qq.e.comm.managers.status.SDKStatus;
import com.qq.e.comm.util.GDTLogger;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile String f56459a;

    public static synchronized String a(Context context) {
        ActivityManager.RunningAppProcessInfo next;
        synchronized (b.class) {
            if (!TextUtils.isEmpty(f56459a)) {
                return f56459a;
            } else if (Build.VERSION.SDK_INT >= 28) {
                f56459a = Application.getProcessName();
                return f56459a;
            } else {
                int myPid = Process.myPid();
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses();
                if (runningAppProcesses != null) {
                    Iterator<ActivityManager.RunningAppProcessInfo> it2 = runningAppProcesses.iterator();
                    while (it2.hasNext()) {
                        try {
                            next = it2.next();
                        } catch (Exception unused) {
                        }
                        if (next.pid == myPid) {
                            f56459a = next.processName;
                            return f56459a;
                        }
                        continue;
                    }
                }
                return null;
            }
        }
    }

    public static synchronized String a(String str) {
        synchronized (b.class) {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            String str2 = f56459a;
            if (TextUtils.isEmpty(str2)) {
                return str;
            }
            boolean endsWith = str2.endsWith("_");
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(endsWith ? "" : "_");
            String str3 = null;
            try {
                String str4 = new String(str2);
                try {
                    str3 = d.a(MessageDigest.getInstance("MD5").digest(str4.getBytes("UTF-8")));
                } catch (Exception unused) {
                    str3 = str4;
                }
            } catch (Exception unused2) {
            }
            sb.append(str3);
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(Context context, File file, File file2) throws Throwable {
        AssetManager assets = context.getAssets();
        try {
            h.b();
            boolean z3 = false;
            if (Arrays.binarySearch(assets.list("gdt_plugin"), "gdtadv2.jar") >= 0) {
                String str = "gdt_plugin" + File.separator + "gdtadv2.jar";
                String str2 = Sig.ASSET_PLUGIN_SIG;
                if (str2 == null) {
                    str2 = "";
                }
                h.c(SDKStatus.getBuildInPluginVersion() + "#####" + str2, file2);
                if (TextUtils.isEmpty(CustomPkgConstants.getAssetPluginXorKey())) {
                    z3 = h.a(assets.open(str), file);
                } else {
                    InputStream open = assets.open(str);
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    byte[] bytes = CustomPkgConstants.getAssetPluginXorKey().getBytes(Charset.forName("UTF-8"));
                    byte[] bArr = new byte[1024];
                    int length = bytes.length;
                    int i2 = 0;
                    int i4 = 0;
                    while (true) {
                        int read = open.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        int i5 = 0;
                        while (i5 < read) {
                            int i6 = i4 + 1;
                            if (i4 >= 64) {
                                bArr[i5] = (byte) (bytes[i2 % length] ^ bArr[i5]);
                                i2++;
                            }
                            i5++;
                            i4 = i6;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                    open.close();
                    fileOutputStream.close();
                    z3 = true;
                }
            }
            if (!z3) {
                throw new Exception("Plugin prepare failed");
            }
        } catch (Throwable th) {
            GDTLogger.e("插件加载失败", th);
            throw th;
        }
    }
}
