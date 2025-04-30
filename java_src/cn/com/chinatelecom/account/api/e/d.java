package cn.com.chinatelecom.account.api.e;

import android.content.Context;
import android.net.Proxy;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.security.MessageDigest;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.UUID;
import java.util.regex.Pattern;
import okio.Utf8;
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8628a = "cn.com.chinatelecom.account.api.e.d";

    /* renamed from: b  reason: collision with root package name */
    private static String f8629b = "";

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f8630c = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");

    /* renamed from: d  reason: collision with root package name */
    private static String f8631d = "";

    public static String a() {
        String uuid = UUID.randomUUID().toString();
        try {
            uuid = UUID.nameUUIDFromBytes((uuid + System.currentTimeMillis() + Math.random()).getBytes("utf8")).toString();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return !TextUtils.isEmpty(uuid) ? uuid.replace("-", "") : uuid;
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(f8631d)) {
            String e4 = e(context);
            f8631d = e4;
            if (TextUtils.isEmpty(e4)) {
                String f4 = f(context);
                f8631d = f4;
                a(context, f4);
            }
        }
        return f8631d;
    }

    private static void a(Context context, String str) {
        if (TextUtils.isEmpty(str) || context == null) {
            return;
        }
        c.a(context, "key_d_i_u", str);
    }

    public static boolean a(Object obj, String str) {
        Method declaredMethod = obj.getClass().getDeclaredMethod(str, new Class[0]);
        declaredMethod.setAccessible(true);
        return ((Boolean) declaredMethod.invoke(obj, new Object[0])).booleanValue();
    }

    public static boolean a(String str) {
        return str != null && f8630c.matcher(str).matches();
    }

    private static String b(Context context, String str) {
        try {
            Class<?> loadClass = context.getClassLoader().loadClass(l.a(new byte[]{13, 2, 8, BinaryMemcacheOpcodes.GATQ, 3, 5, 8, 66, 3, 31, 66, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.GATQ, 3, BinaryMemcacheOpcodes.TOUCH, 9, BinaryMemcacheOpcodes.GATQ, BinaryMemcacheOpcodes.FLUSHQ, 5, 9, 31}));
            return (String) loadClass.getMethod("get", String.class).invoke(loadClass, str);
        } catch (Exception unused) {
            return "";
        }
    }

    private static String b(String str) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            byte[] bytes = str.getBytes();
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bytes);
            byte[] digest = messageDigest.digest();
            char[] cArr2 = new char[digest.length * 2];
            int i2 = 0;
            for (byte b4 : digest) {
                int i4 = i2 + 1;
                cArr2[i2] = cArr[(b4 >>> 4) & 15];
                i2 = i4 + 1;
                cArr2[i4] = cArr[b4 & 15];
            }
            return new String(cArr2);
        } catch (Exception unused) {
            return null;
        }
    }

    public static StringBuffer b() {
        StringBuffer stringBuffer = new StringBuffer();
        Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
        while (networkInterfaces.hasMoreElements()) {
            NetworkInterface nextElement = networkInterfaces.nextElement();
            String name = nextElement.getName();
            if (name == null || (!name.contains("wlan") && !name.equals("eth0"))) {
                Enumeration<InetAddress> inetAddresses = nextElement.getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement2 = inetAddresses.nextElement();
                    if (!nextElement2.isLoopbackAddress() && !nextElement2.isLinkLocalAddress()) {
                        String hostAddress = nextElement2.getHostAddress();
                        if (!TextUtils.isEmpty(hostAddress)) {
                            if (stringBuffer.length() > 0) {
                                stringBuffer.append(",");
                            }
                            stringBuffer.append(hostAddress);
                        }
                    }
                }
            }
        }
        return stringBuffer;
    }

    public static boolean b(Context context) {
        int port;
        String str;
        boolean z3 = Build.VERSION.SDK_INT >= 14;
        String a4 = l.a(new byte[]{4, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.TOUCH, 66, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.GATQ, 3, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.INCREMENTQ, BinaryMemcacheOpcodes.GATKQ, 3, 31, BinaryMemcacheOpcodes.FLUSHQ});
        String a5 = l.a(new byte[]{4, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.TOUCH, 66, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.GATQ, 3, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.INCREMENTQ, 60, 3, BinaryMemcacheOpcodes.GATQ, BinaryMemcacheOpcodes.FLUSHQ});
        if (z3) {
            str = System.getProperty(a4);
            String property = System.getProperty(a5);
            if (property == null) {
                property = "-1";
            }
            port = Integer.parseInt(property);
        } else {
            String host = Proxy.getHost(context);
            port = Proxy.getPort(context);
            str = host;
        }
        return (TextUtils.isEmpty(str) || port == -1) ? false : true;
    }

    public static boolean c() {
        String a4 = l.a(new byte[]{67, 31, BinaryMemcacheOpcodes.INCREMENTQ, 31, BinaryMemcacheOpcodes.FLUSHQ, 9, 1, 67, 14, 5, 2, 67, 31, BinaryMemcacheOpcodes.APPENDQ});
        String a5 = l.a(new byte[]{67, 31, BinaryMemcacheOpcodes.INCREMENTQ, 31, BinaryMemcacheOpcodes.FLUSHQ, 9, 1, 67, BinaryMemcacheOpcodes.DELETEQ, 14, 5, 2, 67, 31, BinaryMemcacheOpcodes.APPENDQ});
        if (new File(a4).exists() && c(a4)) {
            return true;
        }
        return new File(a5).exists() && c(a5);
    }

    public static boolean c(Context context) {
        return g(context) || h(context) || i(context);
    }

    private static boolean c(String str) {
        Process process = null;
        try {
            Runtime runtime = Runtime.getRuntime();
            process = runtime.exec("ls -l " + str);
            String readLine = new BufferedReader(new InputStreamReader(process.getInputStream())).readLine();
            if (readLine != null && readLine.length() >= 4) {
                char charAt = readLine.charAt(3);
                if (charAt == 's' || charAt == 'x') {
                    process.destroy();
                    return true;
                }
            }
            process.destroy();
            return false;
        } catch (Throwable th) {
            if (process != null) {
                process.destroy();
            }
            throw th;
        }
    }

    public static boolean d() {
        Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
        if (networkInterfaces != null) {
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface nextElement = networkInterfaces.nextElement();
                if (nextElement.isUp() && !nextElement.getInterfaceAddresses().isEmpty()) {
                    String a4 = l.a(new byte[]{BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.APPENDQ, 2, 92});
                    String a5 = l.a(new byte[]{BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.TOUCH, 92});
                    if (a4.equals(nextElement.getName()) || a5.equals(nextElement.getName())) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x020e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0219 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean d(android.content.Context r29) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.com.chinatelecom.account.api.e.d.d(android.content.Context):boolean");
    }

    private static String e(Context context) {
        return c.b(context, "key_d_i_u", "");
    }

    private static String f(Context context) {
        String b4 = b(UUID.randomUUID().toString() + "default");
        return TextUtils.isEmpty(b4) ? "default" : b4;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(2:2|3)|(7:5|6|7|(2:9|(1:14)(1:12))|15|(0)|14)|18|6|7|(0)|15|(0)|14) */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean g(android.content.Context r5) {
        /*
            r0 = 32
            byte[] r0 = new byte[r0]
            r0 = {x0032: FILL_ARRAY_DATA  , data: [8, 9, 66, 30, 3, 14, 26, 66, 13, 2, 8, 30, 3, 5, 8, 66, 20, 28, 3, 31, 9, 8, 66, 5, 2, 31, 24, 13, 0, 0, 9, 30} // fill-array
            java.lang.String r0 = cn.com.chinatelecom.account.api.e.l.a(r0)
            r1 = 20
            byte[] r1 = new byte[r1]
            r1 = {x0046: FILL_ARRAY_DATA  , data: [15, 3, 1, 66, 31, 13, 25, 30, 5, 7, 66, 31, 25, 14, 31, 24, 30, 13, 24, 9} // fill-array
            java.lang.String r1 = cn.com.chinatelecom.account.api.e.l.a(r1)
            r2 = 2
            r3 = 1
            r4 = 0
            android.content.Context r0 = r5.createPackageContext(r0, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L21
            if (r0 == 0) goto L21
            r0 = 1
            goto L22
        L21:
            r0 = 0
        L22:
            android.content.Context r5 = r5.createPackageContext(r1, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L2a
            if (r5 == 0) goto L2a
            r5 = 1
            goto L2b
        L2a:
            r5 = 0
        L2b:
            if (r0 != 0) goto L31
            if (r5 == 0) goto L30
            goto L31
        L30:
            return r4
        L31:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.com.chinatelecom.account.api.e.d.g(android.content.Context):boolean");
    }

    private static boolean h(Context context) {
        Throwable th;
        BufferedReader bufferedReader;
        FileReader fileReader;
        try {
            String a4 = l.a(new byte[]{67, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.GATQ, 3, 15, 67});
            String a5 = l.a(new byte[]{67, 1, 13, BinaryMemcacheOpcodes.TOUCH, 31});
            String a6 = l.a(new byte[]{15, 3, 1, 66, 31, 13, BinaryMemcacheOpcodes.APPENDQ, BinaryMemcacheOpcodes.GATQ, 5, 7, 66, 31, BinaryMemcacheOpcodes.APPENDQ, 14, 31, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.GATQ, 13, BinaryMemcacheOpcodes.FLUSHQ, 9});
            String a7 = l.a(new byte[]{52, BinaryMemcacheOpcodes.TOUCH, 3, 31, 9, 8, 46, BinaryMemcacheOpcodes.GATQ, 5, 8, 11, 9, 66, 6, 13, BinaryMemcacheOpcodes.GATQ});
            HashSet<String> hashSet = new HashSet();
            fileReader = new FileReader(a4 + Process.myPid() + a5);
            try {
                bufferedReader = new BufferedReader(fileReader);
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        } else if (readLine.endsWith(".so") || readLine.endsWith(".jar")) {
                            hashSet.add(readLine.substring(readLine.lastIndexOf(" ") + 1));
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                        }
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (Exception e5) {
                                e5.printStackTrace();
                            }
                        }
                        throw th;
                    }
                }
                for (String str : hashSet) {
                    if (str.contains(a6)) {
                        try {
                            bufferedReader.close();
                        } catch (Exception e6) {
                            e6.printStackTrace();
                        }
                        try {
                            fileReader.close();
                        } catch (Exception e7) {
                            e7.printStackTrace();
                        }
                        return true;
                    } else if (str.contains(a7)) {
                        try {
                            bufferedReader.close();
                        } catch (Exception e8) {
                            e8.printStackTrace();
                        }
                        try {
                            fileReader.close();
                        } catch (Exception e9) {
                            e9.printStackTrace();
                        }
                        return true;
                    }
                }
                try {
                    bufferedReader.close();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                try {
                    fileReader.close();
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                return false;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedReader = null;
            fileReader = null;
        }
    }

    private static boolean i(Context context) {
        StackTraceElement[] stackTrace;
        try {
            throw new Exception("we have exception");
        } catch (Exception e4) {
            String a4 = l.a(new byte[]{15, 3, 1, 66, 13, 2, 8, BinaryMemcacheOpcodes.GATQ, 3, 5, 8, 66, 5, 2, BinaryMemcacheOpcodes.FLUSHQ, 9, BinaryMemcacheOpcodes.GATQ, 2, 13, 0, 66, 3, 31, 66, 54, BinaryMemcacheOpcodes.INCREMENTQ, 11, 3, BinaryMemcacheOpcodes.FLUSHQ, 9, 37, 2, 5, BinaryMemcacheOpcodes.FLUSHQ});
            String a5 = l.a(new byte[]{8, 9, 66, BinaryMemcacheOpcodes.GATQ, 3, 14, BinaryMemcacheOpcodes.PREPENDQ, 66, 13, 2, 8, BinaryMemcacheOpcodes.GATQ, 3, 5, 8, 66, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.TOUCH, 3, 31, 9, 8, 66, 52, BinaryMemcacheOpcodes.TOUCH, 3, 31, 9, 8, 46, BinaryMemcacheOpcodes.GATQ, 5, 8, 11, 9});
            String a6 = l.a(new byte[]{8, 9, 66, BinaryMemcacheOpcodes.GATQ, 3, 14, BinaryMemcacheOpcodes.PREPENDQ, 66, 13, 2, 8, BinaryMemcacheOpcodes.GATQ, 3, 5, 8, 66, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.TOUCH, 3, 31, 9, 8, 66, 52, BinaryMemcacheOpcodes.TOUCH, 3, 31, 9, 8, 46, BinaryMemcacheOpcodes.GATQ, 5, 8, 11, 9});
            String a7 = l.a(new byte[]{5, 2, BinaryMemcacheOpcodes.PREPENDQ, 3, 7, 9, 8});
            String a8 = l.a(new byte[]{1, 13, 5, 2});
            String a9 = l.a(new byte[]{4, 13, 2, 8, 0, 9, BinaryMemcacheOpcodes.GATKQ, 3, 3, 7, 9, 8, BinaryMemcacheOpcodes.SASL_AUTH, 9, BinaryMemcacheOpcodes.FLUSHQ, 4, 3, 8});
            String a10 = l.a(new byte[]{15, 3, 1, 66, 31, 13, BinaryMemcacheOpcodes.APPENDQ, BinaryMemcacheOpcodes.GATQ, 5, 7, 66, 31, BinaryMemcacheOpcodes.APPENDQ, 14, 31, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.GATQ, 13, BinaryMemcacheOpcodes.FLUSHQ, 9, 66, BinaryMemcacheOpcodes.SASL_AUTH, Utf8.REPLACEMENT_BYTE, 72, 94});
            int i2 = 0;
            for (StackTraceElement stackTraceElement : e4.getStackTrace()) {
                if (stackTraceElement.getClassName().equals(a4) && (i2 = i2 + 1) == 2) {
                    return true;
                }
                if (stackTraceElement.getClassName().equals(a10) && stackTraceElement.getMethodName().equals(a7)) {
                    return true;
                }
                if (stackTraceElement.getClassName().equals(a5) && stackTraceElement.getMethodName().equals(a8)) {
                    return true;
                }
                if (stackTraceElement.getClassName().equals(a6) && stackTraceElement.getMethodName().equals(a9)) {
                    return true;
                }
            }
            return false;
        }
    }
}
