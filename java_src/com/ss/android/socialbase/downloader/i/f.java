package com.ss.android.socialbase.downloader.i;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.os.Process;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.papa91.arc.ext.Log;
import com.ss.android.socialbase.downloader.depend.ai;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.impls.l;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.InterruptedIOException;
import java.io.UnsupportedEncodingException;
import java.net.ConnectException;
import java.net.HttpRetryException;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.PortUnreachableException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import okhttp3.internal.http2.StreamResetException;
import org.json.JSONObject;
/* compiled from: DownloadUtils.java */
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f58252a = "f";

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f58253b = Pattern.compile(".*\\d+ *- *(\\d+) */ *\\d+");

    /* renamed from: c  reason: collision with root package name */
    private static String f58254c = null;

    /* renamed from: d  reason: collision with root package name */
    private static volatile SparseArray<Boolean> f58255d = new SparseArray<>();

    /* renamed from: e  reason: collision with root package name */
    private static volatile SparseArray<List<ai>> f58256e = new SparseArray<>();

    /* renamed from: f  reason: collision with root package name */
    private static final char[] f58257f = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: g  reason: collision with root package name */
    private static Pattern f58258g = null;

    /* renamed from: h  reason: collision with root package name */
    private static Pattern f58259h = null;

    /* renamed from: i  reason: collision with root package name */
    private static ConnectivityManager f58260i;

    /* renamed from: j  reason: collision with root package name */
    private static Boolean f58261j;

    /* renamed from: k  reason: collision with root package name */
    private static Boolean f58262k;

    public static String a(byte[] bArr) {
        Objects.requireNonNull(bArr, "bytes is null");
        return a(bArr, 0, bArr.length);
    }

    public static boolean a(int i2) {
        return i2 == 0 || i2 == 2;
    }

    public static long b(com.ss.android.socialbase.downloader.network.g gVar) {
        if (gVar == null) {
            return -1L;
        }
        String b4 = b(gVar, "Content-Range");
        if (TextUtils.isEmpty(b4)) {
            return -1L;
        }
        try {
            Matcher matcher = Pattern.compile("bytes (\\d+)-(\\d+)/\\d+").matcher(b4);
            if (matcher.find()) {
                return (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
            }
        } catch (Exception e4) {
            String str = f58252a;
            com.ss.android.socialbase.downloader.c.a.d(str, "parse content-length from content-range failed " + e4);
        }
        return -1L;
    }

    public static boolean b(long j4) {
        return j4 == -1;
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return String.format("%s.tp", str);
    }

    public static boolean c(int i2) {
        return i2 == 200 || i2 == 201 || i2 == 0;
    }

    public static boolean d(int i2) {
        return i2 == 206 || i2 == 200;
    }

    public static boolean d(DownloadInfo downloadInfo) {
        boolean z3 = false;
        if (!downloadInfo.isDeleteCacheIfCheckFailed() && TextUtils.isEmpty(downloadInfo.getLastModified())) {
            com.ss.android.socialbase.downloader.c.a.b(f58252a, "dcache::last modify is emtpy, so just return cache");
        } else {
            String str = f58252a;
            com.ss.android.socialbase.downloader.c.a.b(str, "dcache::curt=" + System.currentTimeMillis() + " expired=" + downloadInfo.getCacheExpiredTime());
            if (System.currentTimeMillis() > downloadInfo.getCacheExpiredTime()) {
                z3 = true;
            }
        }
        String str2 = f58252a;
        com.ss.android.socialbase.downloader.c.a.b(str2, "cacheExpired::dcache::name=" + downloadInfo.getName() + " expired=" + z3);
        return z3;
    }

    public static String e(String str) {
        if (str != null) {
            try {
                if (str.length() != 0) {
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    messageDigest.update(str.getBytes("UTF-8"));
                    return a(messageDigest.digest());
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static boolean f(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        String d4 = d(com.ss.android.socialbase.downloader.downloader.c.N());
        return d4 != null && d4.equals(str);
    }

    public static String g(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt <= 31 || charAt >= 127) {
                sb.append(String.format("\\u%04x", Integer.valueOf(charAt)));
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static boolean h(Throwable th) {
        if (th == null) {
            return false;
        }
        if (th instanceof BaseException) {
            BaseException baseException = (BaseException) th;
            int errorCode = baseException.getErrorCode();
            if (errorCode == 1006) {
                return true;
            }
            if (errorCode == 1023 || errorCode == 1039 || errorCode == 1040 || errorCode == 1054 || errorCode == 1064) {
                String message = baseException.getMessage();
                return !TextUtils.isEmpty(message) && message.contains("ENOSPC");
            }
            return false;
        } else if (th instanceof IOException) {
            String j4 = j(th);
            return !TextUtils.isEmpty(j4) && j4.contains("ENOSPC");
        } else {
            return false;
        }
    }

    private static String i() {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/cmdline"), "iso-8859-1"));
        } catch (Throwable unused) {
            bufferedReader = null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            while (true) {
                int read = bufferedReader.read();
                if (read <= 0) {
                    break;
                }
                sb.append((char) read);
            }
            if (com.ss.android.socialbase.downloader.c.a.a()) {
                com.ss.android.socialbase.downloader.c.a.b("Process", "get processName = " + sb.toString());
            }
            String sb2 = sb.toString();
            a(bufferedReader);
            return sb2;
        } catch (Throwable unused2) {
            a(bufferedReader);
            return null;
        }
    }

    private static String j(String str) {
        Matcher matcher;
        if (str == null) {
            return null;
        }
        try {
            if (f58258g == null) {
                f58258g = Pattern.compile("attachment;\\s*filename\\s*=\\s*\"([^\"]*)\"");
            }
            matcher = f58258g.matcher(str);
        } catch (Exception unused) {
        }
        if (matcher.find()) {
            return matcher.group(1);
        }
        if (f58259h == null) {
            f58259h = Pattern.compile("attachment;\\s*filename\\s*=\\s*(.*)");
        }
        Matcher matcher2 = f58259h.matcher(str);
        if (matcher2.find()) {
            return matcher2.group(1);
        }
        return null;
    }

    private static boolean k(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("deleteDirIfEmpty on thread: ");
        sb.append(Thread.currentThread());
        if (!TextUtils.isEmpty(str)) {
            File file = new File(str);
            return file.isDirectory() && file.delete();
        }
        return false;
    }

    public static String a(byte[] bArr, int i2, int i4) {
        Objects.requireNonNull(bArr, "bytes is null");
        if (i2 >= 0 && i2 + i4 <= bArr.length) {
            int i5 = i4 * 2;
            char[] cArr = new char[i5];
            int i6 = 0;
            for (int i7 = 0; i7 < i4; i7++) {
                int i8 = bArr[i7 + i2] & 255;
                int i9 = i6 + 1;
                char[] cArr2 = f58257f;
                cArr[i6] = cArr2[i8 >> 4];
                i6 = i9 + 1;
                cArr[i9] = cArr2[i8 & 15];
            }
            return new String(cArr, 0, i5);
        }
        throw new IndexOutOfBoundsException();
    }

    public static void c(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        File file = new File(str, str2);
        if (file.exists()) {
            StringBuilder sb = new StringBuilder();
            sb.append("deleteFile: ");
            sb.append(str);
            sb.append(net.lingala.zip4j.util.e.F0);
            sb.append(str2);
            file.delete();
        }
    }

    public static boolean f(Throwable th) {
        if (th == null) {
            return false;
        }
        String j4 = j(th);
        return !TextUtils.isEmpty(j4) && j4.contains("Requested Range Not Satisfiable");
    }

    public static long d(String str) throws BaseException {
        try {
            StatFs statFs = new StatFs(str);
            if (Build.VERSION.SDK_INT >= 18) {
                return statFs.getAvailableBytes();
            }
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (IllegalArgumentException e4) {
            throw new BaseException(1050, e4);
        } catch (Throwable th) {
            throw new BaseException(1052, th);
        }
    }

    public static boolean e(Throwable th) {
        if (th == null) {
            return false;
        }
        String j4 = j(th);
        return !TextUtils.isEmpty(j4) && j4.contains("Precondition Failed");
    }

    public static long f(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return 0L;
        }
        List<com.ss.android.socialbase.downloader.model.b> c4 = com.ss.android.socialbase.downloader.downloader.c.x().c(downloadInfo.getId());
        int chunkCount = downloadInfo.getChunkCount();
        boolean z3 = chunkCount > 1;
        if (downloadInfo.isBreakpointAvailable()) {
            if (z3) {
                if (c4 == null || chunkCount != c4.size()) {
                    return 0L;
                }
                return b(c4);
            }
            return downloadInfo.getCurBytes();
        }
        return 0L;
    }

    public static boolean g(Throwable th) {
        return com.ss.android.socialbase.downloader.downloader.c.M().a(th);
    }

    public static boolean c(DownloadInfo downloadInfo) {
        return a(downloadInfo, downloadInfo.isForce(), downloadInfo.getMd5());
    }

    public static com.ss.android.socialbase.downloader.constants.f e(int i2) {
        com.ss.android.socialbase.downloader.constants.f fVar = com.ss.android.socialbase.downloader.constants.f.MAIN;
        com.ss.android.socialbase.downloader.constants.f fVar2 = com.ss.android.socialbase.downloader.constants.f.SUB;
        if (i2 != fVar2.ordinal()) {
            fVar2 = com.ss.android.socialbase.downloader.constants.f.NOTIFICATION;
            if (i2 != fVar2.ordinal()) {
                return fVar;
            }
        }
        return fVar2;
    }

    public static File g() {
        String str;
        try {
            str = Environment.getExternalStorageState();
        } catch (Exception unused) {
            str = "";
        }
        if ("mounted".equals(str)) {
            return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        }
        return null;
    }

    public static long b(String str) {
        if (str == null) {
            return -1L;
        }
        String[] split = str.split(net.lingala.zip4j.util.e.F0);
        if (split.length >= 2) {
            try {
                return Long.parseLong(split[1]);
            } catch (NumberFormatException unused) {
                String str2 = f58252a;
                com.ss.android.socialbase.downloader.c.a.d(str2, "parse instance length failed with " + str);
            }
        }
        return -1L;
    }

    public static boolean c(String str, String str2, String str3) {
        return a(b(str, str2, str3));
    }

    public static boolean h(String str) {
        Context N;
        if (com.ss.android.socialbase.downloader.g.a.c().b("save_path_security") > 0 && (N = com.ss.android.socialbase.downloader.downloader.c.N()) != null && !TextUtils.isEmpty(str) && !str.startsWith("/data")) {
            if (!str.contains("Android/data/" + N.getPackageName())) {
                return false;
            }
        }
        return true;
    }

    public static boolean i(Throwable th) {
        if (th instanceof BaseException) {
            int errorCode = ((BaseException) th).getErrorCode();
            return errorCode == 1055 || errorCode == 1023 || errorCode == 1041 || errorCode == 1022 || errorCode == 1048 || errorCode == 1056 || errorCode == 1057 || errorCode == 1058 || errorCode == 1059 || errorCode == 1060 || errorCode == 1061 || errorCode == 1067 || errorCode == 1049 || errorCode == 1047 || errorCode == 1051 || errorCode == 1004 || errorCode == 1011 || errorCode == 1002 || errorCode == 1013;
        }
        return false;
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i4 = i2 * 2;
            try {
                bArr[i2] = (byte) (Integer.parseInt(str.substring(i4, i4 + 2), 16) & 255);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        try {
            return new String(bArr, "utf-8");
        } catch (Exception e5) {
            e5.printStackTrace();
            return str;
        }
    }

    public static boolean c(com.ss.android.socialbase.downloader.network.g gVar) {
        if (gVar == null) {
            return false;
        }
        return a.a(8) ? HttpHeaders.Values.CHUNKED.equals(gVar.a("Transfer-Encoding")) || a(gVar) == -1 : a(gVar) == -1;
    }

    public static long e(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return -1L;
        }
        List<com.ss.android.socialbase.downloader.model.b> c4 = com.ss.android.socialbase.downloader.downloader.c.x().c(downloadInfo.getId());
        if (downloadInfo.getChunkCount() == 1) {
            return downloadInfo.getCurBytes();
        }
        if (c4 == null || c4.size() <= 1) {
            return 0L;
        }
        long d4 = d(c4);
        if (d4 >= 0) {
            return d4;
        }
        return 0L;
    }

    public static String j(Throwable th) {
        if (th == null) {
            return "";
        }
        try {
            return th.toString();
        } catch (Throwable th2) {
            th2.printStackTrace();
            return "throwable getMsg error";
        }
    }

    public static boolean d(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        return new File(str, str2).exists();
    }

    public static String f() {
        return a(Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.c.N()).getGlobalSaveTempDir(), false);
    }

    public static String b(String str, String str2) {
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return null;
        }
        return !TextUtils.isEmpty(str2) ? str2 : str;
    }

    public static long i(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        Matcher matcher = Pattern.compile("max-age=([0-9]+)").matcher(str);
        if (matcher.find()) {
            try {
                return Long.parseLong(matcher.group(1));
            } catch (Throwable th) {
                th.printStackTrace();
                return 0L;
            }
        }
        return 0L;
    }

    public static boolean c(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager a4 = a(context);
            if (a4 == null || (activeNetworkInfo = a4.getActiveNetworkInfo()) == null) {
                return false;
            }
            return activeNetworkInfo.isConnected();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean h() {
        Context N = com.ss.android.socialbase.downloader.downloader.c.N();
        return (N == null || b(N) || !c(N)) ? false : true;
    }

    public static long b(List<com.ss.android.socialbase.downloader.model.b> list) {
        long j4 = 0;
        for (com.ss.android.socialbase.downloader.model.b bVar : list) {
            j4 += bVar.o();
        }
        return j4;
    }

    public static String d(Context context) {
        String str = f58254c;
        if (TextUtils.isEmpty(str)) {
            try {
                int myPid = Process.myPid();
                ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
                if (activityManager != null) {
                    for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                        if (runningAppProcessInfo.pid == myPid) {
                            if (com.ss.android.socialbase.downloader.c.a.a()) {
                                com.ss.android.socialbase.downloader.c.a.b("Process", "processName = " + runningAppProcessInfo.processName);
                            }
                            String str2 = runningAppProcessInfo.processName;
                            f58254c = str2;
                            return str2;
                        }
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            String i2 = i();
            f58254c = i2;
            return i2;
        }
        return str;
    }

    public static String e() {
        return a(Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.c.N()).getGlobalSaveDir(), true);
    }

    public static void b(DownloadInfo downloadInfo) {
        com.ss.android.socialbase.downloader.g.a a4;
        JSONObject d4;
        if (downloadInfo == null || (d4 = (a4 = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId())).d("download_dir")) == null) {
            return;
        }
        String optString = d4.optString("ins_desc");
        if (!TextUtils.isEmpty(optString)) {
            c(downloadInfo.getSavePath(), optString);
        }
        String title = downloadInfo.getTitle();
        if (TextUtils.isEmpty(title)) {
            title = downloadInfo.getName();
        }
        String a5 = a(title, a4);
        String savePath = downloadInfo.getSavePath();
        if (TextUtils.isEmpty(a5) || TextUtils.isEmpty(savePath)) {
            return;
        }
        File file = new File(a5);
        for (File file2 = new File(savePath); file != null && file2 != null && file2.isDirectory() && TextUtils.equals(file.getName(), file2.getName()); file2 = file2.getParentFile()) {
            k(file2.getPath());
            file = file.getParentFile();
        }
    }

    public static boolean c() {
        Boolean bool = f58262k;
        if (bool != null) {
            return bool.booleanValue();
        }
        String d4 = d(com.ss.android.socialbase.downloader.downloader.c.N());
        if (d4 != null) {
            if (d4.equals(com.ss.android.socialbase.downloader.downloader.c.N().getPackageName() + ":downloader")) {
                f58262k = Boolean.TRUE;
                return f58262k.booleanValue();
            }
        }
        f58262k = Boolean.FALSE;
        return f58262k.booleanValue();
    }

    public static long a(com.ss.android.socialbase.downloader.network.g gVar) {
        if (gVar == null) {
            return -1L;
        }
        String b4 = b(gVar, "Content-Length");
        if (TextUtils.isEmpty(b4) && a.a(1)) {
            return b(gVar);
        }
        try {
            return Long.parseLong(b4);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static String e(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String e4 = e(str2);
        return (TextUtils.isEmpty(e4) || str.contains(e4)) ? str : new File(str, e4).getAbsolutePath();
    }

    public static String a(com.ss.android.socialbase.downloader.network.g gVar, String str) {
        String j4 = j(gVar.a("Content-Disposition"));
        return TextUtils.isEmpty(j4) ? e(str) : j4;
    }

    public static boolean c(Throwable th) {
        if (th == null) {
            return false;
        }
        String j4 = j(th);
        return !TextUtils.isEmpty(j4) && j4.contains("network not available");
    }

    public static com.ss.android.socialbase.downloader.model.e a(DownloadInfo downloadInfo, String str, String str2, int i2) throws BaseException {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            File file = new File(str, str2);
            boolean z3 = false;
            if (file.exists() && file.isDirectory()) {
                throw new BaseException(1035, new IOException(String.format("path is :%s, path is directory:%B:", str, Boolean.valueOf(file.isDirectory()))));
            }
            if (!file.exists()) {
                try {
                    File file2 = new File(str);
                    if (!file2.exists() || !file2.isDirectory()) {
                        if (!file2.exists()) {
                            if (!file2.mkdirs() && !file2.exists()) {
                                if (com.ss.android.socialbase.downloader.g.a.a(downloadInfo).a("opt_mkdir_failed", 0) != 1) {
                                    throw new BaseException(1030, "download savePath directory can not created:" + str);
                                }
                                int i4 = 0;
                                while (!z3) {
                                    int i5 = i4 + 1;
                                    if (i4 >= 3) {
                                        break;
                                    }
                                    try {
                                        Thread.sleep(10L);
                                        z3 = file2.mkdirs();
                                        i4 = i5;
                                    } catch (InterruptedException unused) {
                                    }
                                }
                                if (!z3) {
                                    if (d(downloadInfo.getSavePath()) < 16384) {
                                        throw new BaseException(1006, "download savePath directory can not created:" + str);
                                    }
                                    throw new BaseException(1030, "download savePath directory can not created:" + str);
                                }
                            }
                        } else {
                            file2.delete();
                            if (!file2.mkdirs() && !file2.exists()) {
                                throw new BaseException(1031, "download savePath is not directory:path=" + str);
                            }
                            throw new BaseException(1031, "download savePath is not directory:" + str);
                        }
                    }
                    file.createNewFile();
                } catch (IOException e4) {
                    throw new BaseException(1036, e4);
                }
            }
            return new com.ss.android.socialbase.downloader.model.e(file, i2);
        }
        throw new BaseException(1021, new IOException("path must be not empty"));
    }

    public static boolean c(BaseException baseException) {
        if (baseException == null) {
            return false;
        }
        return baseException.getErrorCode() == 1011 || (baseException.getCause() != null && (baseException.getCause() instanceof SSLHandshakeException));
    }

    public static boolean d() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public static boolean d(Throwable th) {
        if (th == null) {
            return false;
        }
        String j4 = j(th);
        return !TextUtils.isEmpty(j4) && j4.contains("Exception in connect");
    }

    private static void c(Throwable th, String str) throws com.ss.android.socialbase.downloader.exception.g {
        com.ss.android.socialbase.downloader.exception.g a4 = com.ss.android.socialbase.downloader.downloader.c.M().a(th, null);
        if (a4 == null) {
            a4 = com.ss.android.socialbase.downloader.downloader.c.M().a(th.getCause(), null);
        }
        if (a4 == null) {
            return;
        }
        throw new com.ss.android.socialbase.downloader.exception.g(a4.getErrorCode(), b(a4, str)).a(a4.a());
    }

    private static long d(List<com.ss.android.socialbase.downloader.model.b> list) {
        if (list == null || list.isEmpty()) {
            return -1L;
        }
        long j4 = -1;
        for (com.ss.android.socialbase.downloader.model.b bVar : list) {
            if (bVar != null && (bVar.n() <= bVar.p() || bVar.p() == 0)) {
                if (j4 == -1 || j4 > bVar.n()) {
                    j4 = bVar.n();
                }
            }
        }
        return j4;
    }

    public static long c(long j4) {
        return System.currentTimeMillis() - j4;
    }

    public static boolean c(List<com.ss.android.socialbase.downloader.model.c> list) {
        if (list == null || list.size() == 0) {
            return false;
        }
        for (com.ss.android.socialbase.downloader.model.c cVar : list) {
            if (cVar != null && !TextUtils.isEmpty(cVar.a()) && !TextUtils.isEmpty(cVar.b()) && "download-tc21-1-15".equals(cVar.a()) && "download-tc21-1-15".equals(cVar.b())) {
                return true;
            }
        }
        return false;
    }

    public static int b(String str, String str2, String str3) {
        return com.ss.android.a.c.a(str3, new File(str, str2));
    }

    public static String b(int i2) {
        String str = "ttmd5 check code = " + i2 + ", ";
        if (i2 != 99) {
            switch (i2) {
                case 0:
                    return str + "md5 match";
                case 1:
                    return str + "md5 not match";
                case 2:
                    return str + "md5 empty";
                case 3:
                    return str + "ttmd5 version not support";
                case 4:
                    return str + "ttmd5 tag parser error";
                case 5:
                    return str + "file not exist";
                case 6:
                    return str + "get file md5 error";
                default:
                    return str;
            }
        }
        return str + "unknown error";
    }

    @TargetApi(19)
    private static void b(File file, File file2, boolean z3) throws IOException {
        if (file2.exists() && file2.isDirectory()) {
            throw new IOException("Destination '" + file2 + "' exists but is a directory");
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileChannel channel = fileInputStream.getChannel();
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            FileChannel channel2 = fileOutputStream.getChannel();
            try {
                long size = channel.size();
                long j4 = 0;
                while (j4 < size) {
                    long j5 = size - j4;
                    long transferFrom = channel2.transferFrom(channel, j4, j5 > 31457280 ? 31457280L : j5);
                    if (transferFrom == 0) {
                        break;
                    }
                    j4 += transferFrom;
                }
                if (channel2 != null) {
                    channel2.close();
                }
                fileOutputStream.close();
                channel.close();
                fileInputStream.close();
                long length = file.length();
                long length2 = file2.length();
                if (length == length2) {
                    if (z3) {
                        file2.setLastModified(file.lastModified());
                        return;
                    }
                    return;
                }
                throw new IOException("Failed to copy full contents from '" + file + "' to '" + file2 + "' Expected length: " + length + " Actual: " + length2);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (channel2 != null) {
                        try {
                            channel2.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        } catch (Throwable th4) {
            try {
                throw th4;
            } catch (Throwable th5) {
                try {
                    fileInputStream.close();
                } catch (Throwable th6) {
                    th4.addSuppressed(th6);
                }
                throw th5;
            }
        }
    }

    public static List<com.ss.android.socialbase.downloader.model.b> a(List<com.ss.android.socialbase.downloader.model.b> list) {
        SparseArray sparseArray = new SparseArray();
        SparseArray sparseArray2 = new SparseArray();
        for (com.ss.android.socialbase.downloader.model.b bVar : list) {
            if (bVar != null) {
                if (bVar.d()) {
                    sparseArray.put(bVar.s(), bVar);
                    List<com.ss.android.socialbase.downloader.model.b> list2 = (List) sparseArray2.get(bVar.s());
                    if (list2 != null) {
                        for (com.ss.android.socialbase.downloader.model.b bVar2 : list2) {
                            bVar2.a(bVar);
                        }
                        bVar.a(list2);
                    }
                } else {
                    com.ss.android.socialbase.downloader.model.b bVar3 = (com.ss.android.socialbase.downloader.model.b) sparseArray.get(bVar.b());
                    if (bVar3 != null) {
                        List<com.ss.android.socialbase.downloader.model.b> g4 = bVar3.g();
                        if (g4 == null) {
                            g4 = new ArrayList<>();
                            bVar3.a(g4);
                        }
                        bVar.a(bVar3);
                        g4.add(bVar);
                    } else {
                        List list3 = (List) sparseArray2.get(bVar.b());
                        if (list3 == null) {
                            list3 = new ArrayList();
                            sparseArray2.put(bVar.b(), list3);
                        }
                        list3.add(bVar);
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            arrayList.add(sparseArray.get(sparseArray.keyAt(i2)));
        }
        return arrayList.isEmpty() ? list : arrayList;
    }

    public static boolean b(File file, File file2) throws BaseException {
        StringBuilder sb = new StringBuilder();
        sb.append("moveFile1: src:");
        sb.append(file.getPath());
        sb.append(" dest:");
        sb.append(file2.getPath());
        boolean renameTo = file.renameTo(file2);
        if (!renameTo) {
            renameTo = a(file, file2);
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("moveFile2: src:");
                sb2.append(file.getPath());
                sb2.append(" dest:");
                sb2.append(file2.getPath());
                file.delete();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return renameTo;
    }

    public static boolean b(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager a4 = a(context);
            if (a4 != null && (activeNetworkInfo = a4.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
                return 1 == activeNetworkInfo.getType();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static String a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return String.format("%s%s%s", str, File.separator, str2);
    }

    public static String a(String str, String str2, String str3) {
        String a4;
        if ((TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) || TextUtils.isEmpty(str3)) {
            return null;
        }
        if (!TextUtils.isEmpty(str2)) {
            a4 = a(str2, str3);
        } else {
            a4 = a(str, str3);
        }
        if (TextUtils.isEmpty(a4)) {
            return null;
        }
        return String.format("%s.tp", a4);
    }

    public static boolean b() {
        return !c() && com.ss.android.socialbase.downloader.downloader.c.c() && l.a(true).g();
    }

    public static boolean b(Throwable th) {
        if (th == null) {
            return false;
        }
        String j4 = j(th);
        if (!(th instanceof com.ss.android.socialbase.downloader.exception.b) || (((com.ss.android.socialbase.downloader.exception.b) th).a() != 403 && (TextUtils.isEmpty(j4) || !j4.contains("403")))) {
            return !TextUtils.isEmpty(j4) && j4.contains("Forbidden");
        }
        return true;
    }

    public static void a(DownloadInfo downloadInfo) {
        a(downloadInfo, true);
    }

    public static void a(DownloadInfo downloadInfo, boolean z3) {
        if (downloadInfo == null) {
            return;
        }
        if (z3) {
            try {
                c(downloadInfo.getSavePath(), downloadInfo.getName());
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        }
        c(downloadInfo.getTempPath(), downloadInfo.getTempName());
        if (downloadInfo.isSavePathRedirected()) {
            b(downloadInfo);
        }
        if (z3) {
            String e4 = e(downloadInfo.getUrl());
            if (TextUtils.isEmpty(e4) || TextUtils.isEmpty(downloadInfo.getSavePath()) || !downloadInfo.getSavePath().contains(e4)) {
                return;
            }
            k(downloadInfo.getSavePath());
        }
    }

    public static boolean b(BaseException baseException) {
        if (baseException instanceof com.ss.android.socialbase.downloader.exception.b) {
            com.ss.android.socialbase.downloader.exception.b bVar = (com.ss.android.socialbase.downloader.exception.b) baseException;
            if (bVar.a() == 412 || bVar.a() == 416) {
                return true;
            }
        }
        return false;
    }

    public static String b(Throwable th, String str) {
        if (str == null) {
            return j(th);
        }
        return str + "-" + j(th);
    }

    public static void b(List<com.ss.android.socialbase.downloader.model.c> list, DownloadInfo downloadInfo) {
        long ttnetProtectTimeout = downloadInfo.getTtnetProtectTimeout();
        if (ttnetProtectTimeout > 300) {
            list.add(new com.ss.android.socialbase.downloader.model.c("extra_ttnet_protect_timeout", String.valueOf(ttnetProtectTimeout)));
        }
    }

    public static String b(com.ss.android.socialbase.downloader.network.g gVar, String str) {
        if (gVar == null || TextUtils.isEmpty(str)) {
            return null;
        }
        String a4 = gVar.a(str);
        if (com.ss.android.socialbase.downloader.g.a.c().b("fix_get_http_resp_head_ignore_case", true)) {
            if (TextUtils.isEmpty(a4)) {
                a4 = gVar.a(str.toLowerCase());
            }
            return TextUtils.isEmpty(a4) ? gVar.a(str.toUpperCase()) : a4;
        }
        return a4;
    }

    public static boolean a(Context context, String str) {
        return (context == null || TextUtils.isEmpty(str) || context.checkCallingOrSelfPermission(str) != 0) ? false : true;
    }

    public static boolean a(DownloadInfo downloadInfo, boolean z3, String str) {
        if (!z3 && !TextUtils.isEmpty(downloadInfo.getSavePath()) && !TextUtils.isEmpty(downloadInfo.getName())) {
            try {
                if (new File(downloadInfo.getSavePath(), downloadInfo.getName()).exists()) {
                    if (c(downloadInfo.getSavePath(), downloadInfo.getName(), str)) {
                        return true;
                    }
                }
            } catch (OutOfMemoryError e4) {
                e4.printStackTrace();
            }
        }
        return false;
    }

    public static boolean b(BaseException baseException, DownloadInfo downloadInfo) {
        return downloadInfo != null && downloadInfo.isOnlyWifi() && c(com.ss.android.socialbase.downloader.downloader.c.N());
    }

    public static int a(File file, String str) {
        return com.ss.android.a.c.a(str, file);
    }

    public static double a(long j4) {
        double d4 = j4;
        Double.isNaN(d4);
        return d4 / 1048576.0d;
    }

    /* JADX WARN: Removed duplicated region for block: B:88:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x019c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.ss.android.socialbase.downloader.model.DownloadInfo r18, com.ss.android.socialbase.downloader.depend.x r19, com.ss.android.socialbase.downloader.depend.ai r20) {
        /*
            Method dump skipped, instructions count: 622
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.i.f.a(com.ss.android.socialbase.downloader.model.DownloadInfo, com.ss.android.socialbase.downloader.depend.x, com.ss.android.socialbase.downloader.depend.ai):void");
    }

    private static void a(int i2, boolean z3, BaseException baseException) {
        synchronized (f58255d) {
            List<ai> list = f58256e.get(i2);
            if (list != null) {
                for (ai aiVar : list) {
                    if (aiVar != null) {
                        if (z3) {
                            aiVar.a();
                        } else {
                            aiVar.a(baseException);
                        }
                    }
                }
            }
            String str = f58252a;
            com.ss.android.socialbase.downloader.c.a.b(str, "handleTempSaveCallback id:" + i2);
            f58255d.remove(i2);
        }
    }

    public static void a(DownloadInfo downloadInfo, String str) throws BaseException {
        if (downloadInfo == null || TextUtils.isEmpty(str) || str.equals(downloadInfo.getName())) {
            return;
        }
        File file = new File(downloadInfo.getSavePath(), str);
        File file2 = new File(downloadInfo.getSavePath(), downloadInfo.getName());
        StringBuilder sb = new StringBuilder();
        sb.append("copyFileFromExistFileWithSameName: existFile:");
        sb.append(file.getPath());
        sb.append(" targetFile:");
        sb.append(file2.getPath());
        if (file2.exists() && !file2.canWrite()) {
            throw new BaseException(1001, "targetPath file exists but read-only");
        }
        if (!a(file, file2)) {
            throw new BaseException(1001, String.format("Can't copy the exist file(%s/%s) to the target file(%s/%s)", downloadInfo.getSavePath(), str, downloadInfo.getSavePath(), downloadInfo.getName()));
        }
    }

    public static boolean a(File file, File file2) throws BaseException {
        return a(file, file2, true);
    }

    public static boolean a(File file, File file2, boolean z3) throws BaseException {
        if (file != null && file2 != null) {
            try {
                if (file.exists() && !file.isDirectory() && !file.getCanonicalPath().equals(file2.getCanonicalPath())) {
                    File parentFile = file2.getParentFile();
                    if (parentFile != null && !parentFile.mkdirs() && !parentFile.isDirectory()) {
                        throw new BaseException(1053, "Destination '" + parentFile + "' directory cannot be created");
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("copyFile: srcFile:");
                    sb.append(file.getPath());
                    sb.append(" destFile:");
                    sb.append(file2.getPath());
                    if (file2.exists() && !file2.canWrite()) {
                        throw new IOException("Destination '" + file2 + "' exists but is read-only");
                    }
                    b(file, file2, z3);
                    return true;
                }
            } catch (BaseException e4) {
                throw e4;
            } catch (Throwable th) {
                a(th, "CopyFile");
                return false;
            }
        }
        return false;
    }

    public static boolean a(int i2, String str) {
        if (a.a(16777216)) {
            return i2 == 206 || i2 == 1;
        } else if (i2 >= 400) {
            return false;
        } else {
            return i2 == 206 || i2 == 1 || "bytes".equals(str);
        }
    }

    public static List<com.ss.android.socialbase.downloader.model.c> a(List<com.ss.android.socialbase.downloader.model.c> list, String str, com.ss.android.socialbase.downloader.model.b bVar) {
        return a(list, str, bVar.m(), bVar.p());
    }

    public static List<com.ss.android.socialbase.downloader.model.c> a(List<com.ss.android.socialbase.downloader.model.c> list, String str, long j4, long j5) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0) {
            for (com.ss.android.socialbase.downloader.model.c cVar : list) {
                if (cVar != null) {
                    arrayList.add(cVar);
                }
            }
        }
        if (!TextUtils.isEmpty(str)) {
            arrayList.add(new com.ss.android.socialbase.downloader.model.c("If-Match", str));
        }
        arrayList.add(new com.ss.android.socialbase.downloader.model.c("Accept-Encoding", "identity"));
        String format = j5 <= 0 ? String.format("bytes=%s-", String.valueOf(j4)) : String.format("bytes=%s-%s", String.valueOf(j4), String.valueOf(j5));
        arrayList.add(new com.ss.android.socialbase.downloader.model.c("Range", format));
        String str2 = f58252a;
        com.ss.android.socialbase.downloader.c.a.b(str2, " range CurrentOffset:" + j4 + " EndOffset:" + j5 + ", range = " + format);
        return arrayList;
    }

    public static boolean a(int i2, String str, String str2) {
        return i2 == -3 && !d(str, str2);
    }

    public static ConnectivityManager a(Context context) {
        ConnectivityManager connectivityManager = f58260i;
        if (connectivityManager == null) {
            ConnectivityManager connectivityManager2 = (ConnectivityManager) context.getSystemService("connectivity");
            f58260i = connectivityManager2;
            return connectivityManager2;
        }
        return connectivityManager;
    }

    public static boolean a() {
        Boolean bool = f58261j;
        if (bool != null) {
            return bool.booleanValue();
        }
        String d4 = d(com.ss.android.socialbase.downloader.downloader.c.N());
        if (d4 == null || !d4.contains(":")) {
            f58261j = Boolean.valueOf(d4 != null && d4.equals(com.ss.android.socialbase.downloader.downloader.c.N().getPackageName()));
        } else {
            f58261j = Boolean.FALSE;
        }
        return f58261j.booleanValue();
    }

    public static boolean a(Throwable th) {
        if (th == null) {
            return false;
        }
        String j4 = j(th);
        if (!(th instanceof SocketTimeoutException)) {
            if (TextUtils.isEmpty(j4)) {
                return false;
            }
            if (!j4.contains("time out") && !j4.contains("Time-out")) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(BaseException baseException) {
        return baseException != null && baseException.getErrorCode() == 1051;
    }

    public static void a(Throwable th, String str) throws BaseException {
        String str2 = !TextUtils.isEmpty(str) ? str : "";
        if (!(th instanceof BaseException)) {
            if (!(th instanceof SSLHandshakeException)) {
                if (!a(th)) {
                    if (!e(th)) {
                        if (!f(th)) {
                            if (!b(th)) {
                                if (!c(th)) {
                                    if (!d(th)) {
                                        if (th instanceof IOException) {
                                            c(th, str);
                                            a((IOException) th, str);
                                            return;
                                        }
                                        throw new BaseException(1000, b(th, str2));
                                    }
                                    throw new BaseException(1041, b(th, str2));
                                }
                                throw new BaseException(1049, b(th, str2));
                            }
                            throw new BaseException(1047, b(th, str2));
                        }
                        throw new com.ss.android.socialbase.downloader.exception.b(1004, 416, b(th, str2));
                    }
                    throw new com.ss.android.socialbase.downloader.exception.b(1004, TTAdConstant.IMAGE_URL_CODE, b(th, str2));
                }
                throw new BaseException(1048, b(th, str2));
            }
            throw new BaseException(1011, b(th, str2));
        }
        BaseException baseException = (BaseException) th;
        baseException.setErrorMsg(str2 + "-" + baseException.getErrorMessage());
        throw baseException;
    }

    public static void a(IOException iOException, String str) throws BaseException {
        if (str == null) {
            str = "";
        }
        String b4 = b(iOException, str);
        if (!(iOException instanceof ConnectException)) {
            if (!(iOException instanceof UnknownHostException)) {
                if (!(iOException instanceof NoRouteToHostException)) {
                    if (!(iOException instanceof UnknownServiceException)) {
                        if (!(iOException instanceof PortUnreachableException)) {
                            if (!(iOException instanceof SocketTimeoutException)) {
                                if (!(iOException instanceof SocketException)) {
                                    if (!(iOException instanceof HttpRetryException)) {
                                        if (!(iOException instanceof ProtocolException)) {
                                            if (!(iOException instanceof MalformedURLException)) {
                                                if (!(iOException instanceof FileNotFoundException)) {
                                                    if (!(iOException instanceof InterruptedIOException)) {
                                                        if (!(iOException instanceof UnsupportedEncodingException)) {
                                                            if (!(iOException instanceof EOFException)) {
                                                                if (!(iOException instanceof StreamResetException)) {
                                                                    if (!(iOException instanceof SSLException)) {
                                                                        if (h(iOException)) {
                                                                            throw new BaseException(1006, b4);
                                                                        }
                                                                        throw new BaseException((int) Log.LogWrapper.MAX_MSG_LEN, b4);
                                                                    }
                                                                    throw new BaseException(1011, b4);
                                                                }
                                                                throw new BaseException(1067, b4);
                                                            }
                                                            throw new BaseException(1066, b4);
                                                        }
                                                        throw new BaseException(1065, b4);
                                                    }
                                                    throw new BaseException(1064, b4);
                                                }
                                                throw new BaseException(1063, b4);
                                            }
                                            throw new BaseException(1062, b4);
                                        }
                                        throw new BaseException(1061, b4);
                                    }
                                    throw new BaseException(1060, b4);
                                }
                                throw new BaseException(1059, b4);
                            }
                            throw new BaseException(1048, b4);
                        }
                        throw new BaseException(1058, b4);
                    }
                    throw new BaseException(1057, b4);
                }
                throw new BaseException(1056, b4);
            }
            throw new BaseException(1055, b4);
        }
        throw new BaseException(1041, b4);
    }

    public static boolean a(BaseException baseException, DownloadInfo downloadInfo) {
        if (baseException == null) {
            return false;
        }
        int errorCode = baseException.getErrorCode();
        if (errorCode == 1000 || errorCode == 1032 || errorCode == 1033 || errorCode == 1034 || errorCode == 1008 || errorCode == 1026 || errorCode == 1027 || errorCode == 1044 || errorCode == 1020) {
            return true;
        }
        return (errorCode == 1049 || errorCode == 1055 || errorCode == 1006 || downloadInfo == null || downloadInfo.getCurBytes() >= 8388608) ? false : true;
    }

    public static <K> HashMap<Integer, K> a(SparseArray<K> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        HashMap<Integer, K> hashMap = new HashMap<>();
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            int keyAt = sparseArray.keyAt(i2);
            hashMap.put(Integer.valueOf(keyAt), sparseArray.valueAt(i2));
        }
        return hashMap;
    }

    public static <K> void a(SparseArray<K> sparseArray, Map<Integer, K> map) {
        if (map == null || sparseArray == null) {
            return;
        }
        for (Integer num : map.keySet()) {
            if (num != null) {
                sparseArray.put(num.intValue(), map.get(num));
            }
        }
    }

    public static boolean a(List<com.ss.android.socialbase.downloader.model.c> list, List<com.ss.android.socialbase.downloader.model.c> list2) {
        if (list == list2) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        return new HashSet(list).equals(new HashSet(list2));
    }

    public static void a(Closeable... closeableArr) {
        if (closeableArr == null) {
            return;
        }
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public static void a(Cursor... cursorArr) {
        if (cursorArr == null) {
            return;
        }
        for (Cursor cursor : cursorArr) {
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public static String a(String str, int i2) {
        return i2 == 0 ? "" : (TextUtils.isEmpty(str) || str.length() <= i2) ? str : str.substring(0, i2);
    }

    public static String a(String str, com.ss.android.socialbase.downloader.g.a aVar) {
        JSONObject d4;
        String format;
        if (aVar == null || (d4 = aVar.d("download_dir")) == null) {
            return "";
        }
        String optString = d4.optString("dir_name");
        if (!TextUtils.isEmpty(optString) && optString.startsWith(net.lingala.zip4j.util.e.F0)) {
            optString = optString.substring(1);
        }
        if (TextUtils.isEmpty(optString)) {
            return optString;
        }
        if (!optString.contains("%s")) {
            format = optString + str;
        } else {
            try {
                format = String.format(optString, str);
            } catch (Throwable unused) {
            }
        }
        optString = format;
        return optString.length() > 255 ? optString.substring(optString.length() - 255) : optString;
    }

    private static String a(File file, boolean z3) {
        Context N = com.ss.android.socialbase.downloader.downloader.c.N();
        if (a(file)) {
            return file.getAbsolutePath();
        }
        int i2 = N.getApplicationInfo().targetSdkVersion;
        if (Build.VERSION.SDK_INT >= 29 && ((i2 == 29 && !Environment.isExternalStorageLegacy()) || i2 > 29)) {
            File externalFilesDir = N.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
            if (a(externalFilesDir)) {
                return externalFilesDir.getAbsolutePath();
            }
        } else {
            if (z3) {
                File g4 = g();
                if (a(g4)) {
                    return g4.getAbsolutePath();
                }
            }
            File externalFilesDir2 = N.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
            if (a(externalFilesDir2)) {
                return externalFilesDir2.getAbsolutePath();
            }
        }
        return N.getFilesDir().getAbsolutePath();
    }

    public static boolean a(File file) {
        if (file == null) {
            return false;
        }
        try {
            if (file.exists() || file.mkdirs()) {
                return file.isDirectory();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void a(List<com.ss.android.socialbase.downloader.model.c> list, DownloadInfo downloadInfo) {
        long throttleNetSpeed = downloadInfo.getThrottleNetSpeed();
        if (throttleNetSpeed > 0) {
            list.add(new com.ss.android.socialbase.downloader.model.c("extra_throttle_net_speed", String.valueOf(throttleNetSpeed)));
        }
    }

    public static int a(Object obj, int i2) {
        try {
            return ((Integer) obj).intValue();
        } catch (ClassCastException unused) {
            return i2;
        }
    }

    public static String a(Object obj, String str) {
        try {
            return (String) obj;
        } catch (ClassCastException unused) {
            return str;
        }
    }

    public static boolean a(Object obj, boolean z3) {
        try {
            return ((Boolean) obj).booleanValue();
        } catch (ClassCastException unused) {
            return z3;
        }
    }
}
