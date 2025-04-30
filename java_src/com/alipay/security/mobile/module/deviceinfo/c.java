package com.alipay.security.mobile.module.deviceinfo;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.umeng.analytics.pro.ai;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static c f9902a = new c();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a implements Comparator<Camera.Size> {
        private a() {
        }

        /* synthetic */ a(c cVar, byte b4) {
            this();
        }

        private static int a(Camera.Size size, Camera.Size size2) {
            int i2 = size.width;
            int i4 = size2.width;
            if (i2 == i4) {
                return 0;
            }
            return i2 > i4 ? 1 : -1;
        }

        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(Camera.Size size, Camera.Size size2) {
            int i2 = size.width;
            int i4 = size2.width;
            if (i2 == i4) {
                return 0;
            }
            return i2 > i4 ? 1 : -1;
        }
    }

    private c() {
    }

    public static Map<String, Integer> A(Context context) {
        HashMap hashMap = new HashMap();
        try {
            List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
            if (installedPackages != null && installedPackages.size() > 0) {
                for (PackageInfo packageInfo : installedPackages) {
                    hashMap.put(packageInfo.packageName, Integer.valueOf(packageInfo.applicationInfo.uid));
                }
            }
        } catch (Throwable unused) {
        }
        return hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0053, code lost:
        if (r2 == null) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String B() {
        /*
            r0 = 0
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L4a
            java.lang.String r2 = "/proc/cpuinfo"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L4a
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L37
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L37
            java.lang.String r3 = r2.readLine()     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L30
            java.lang.String r4 = ":\\s+"
            r5 = 2
            java.lang.String[] r3 = r3.split(r4, r5)     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L30
            if (r3 == 0) goto L27
            int r4 = r3.length     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L30
            r5 = 1
            if (r4 <= r5) goto L27
            r0 = r3[r5]     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L30
            r1.close()     // Catch: java.io.IOException -> L23
        L23:
            r2.close()     // Catch: java.io.IOException -> L26
        L26:
            return r0
        L27:
            r1.close()     // Catch: java.io.IOException -> L2a
        L2a:
            r2.close()     // Catch: java.io.IOException -> L56
            goto L56
        L2e:
            r0 = move-exception
            goto L3d
        L30:
            goto L4c
        L32:
            r2 = move-exception
            r6 = r2
            r2 = r0
            r0 = r6
            goto L3d
        L37:
            r2 = r0
            goto L4c
        L39:
            r1 = move-exception
            r2 = r0
            r0 = r1
            r1 = r2
        L3d:
            if (r1 == 0) goto L44
            r1.close()     // Catch: java.io.IOException -> L43
            goto L44
        L43:
        L44:
            if (r2 == 0) goto L49
            r2.close()     // Catch: java.io.IOException -> L49
        L49:
            throw r0
        L4a:
            r1 = r0
            r2 = r1
        L4c:
            if (r1 == 0) goto L53
            r1.close()     // Catch: java.io.IOException -> L52
            goto L53
        L52:
        L53:
            if (r2 == 0) goto L56
            goto L2a
        L56:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.deviceinfo.c.B():java.lang.String");
    }

    private static String C(Context context) {
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    return telephonyManager.getSimOperator();
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    private static String D(Context context) {
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    return telephonyManager.getSimOperatorName();
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    private static boolean E() {
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null) {
                return defaultAdapter.isEnabled();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String F() {
        /*
            java.lang.String r0 = ""
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L68
            java.lang.String r2 = "/proc/version"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L68
            r2 = 0
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L43
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L43
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L43
            r5 = 8192(0x2000, float:1.14794E-41)
            r3.<init>(r4, r5)     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L43
            r2 = r0
        L17:
            java.lang.String r4 = r3.readLine()     // Catch: java.lang.Throwable -> L34 java.io.IOException -> L37
            if (r4 == 0) goto L2d
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L34 java.io.IOException -> L37
            r5.<init>()     // Catch: java.lang.Throwable -> L34 java.io.IOException -> L37
            r5.append(r2)     // Catch: java.lang.Throwable -> L34 java.io.IOException -> L37
            r5.append(r4)     // Catch: java.lang.Throwable -> L34 java.io.IOException -> L37
            java.lang.String r2 = r5.toString()     // Catch: java.lang.Throwable -> L34 java.io.IOException -> L37
            goto L17
        L2d:
            r3.close()     // Catch: java.io.IOException -> L4b
            r1.close()     // Catch: java.io.IOException -> L4b
            goto L4b
        L34:
            r0 = move-exception
            r2 = r3
            goto L3c
        L37:
            r6 = r3
            r3 = r2
            r2 = r6
            goto L44
        L3b:
            r0 = move-exception
        L3c:
            r2.close()     // Catch: java.io.IOException -> L42
            r1.close()     // Catch: java.io.IOException -> L42
        L42:
            throw r0
        L43:
            r3 = r0
        L44:
            r2.close()     // Catch: java.io.IOException -> L4a
            r1.close()     // Catch: java.io.IOException -> L4a
        L4a:
            r2 = r3
        L4b:
            boolean r1 = com.alipay.security.mobile.module.commonutils.a.d(r2)
            if (r1 == 0) goto L68
            java.lang.String r1 = "version "
            int r1 = r2.indexOf(r1)
            int r1 = r1 + 8
            java.lang.String r1 = r2.substring(r1)
            java.lang.String r2 = " "
            int r2 = r1.indexOf(r2)
            r3 = 0
            java.lang.String r0 = r1.substring(r3, r2)
        L68:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.deviceinfo.c.F():java.lang.String");
    }

    private static String G(Context context) {
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    return telephonyManager.getVoiceMailNumber();
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    private static String H(Context context) {
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    return telephonyManager.getVoiceMailAlphaTag();
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    private static String I(Context context) {
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            StringBuilder sb = new StringBuilder();
            sb.append(displayMetrics.densityDpi);
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    private String J(Context context) {
        String format;
        K(context.getApplicationContext());
        StringBuilder sb = new StringBuilder();
        int i2 = -1;
        try {
            if (Integer.parseInt(Build.VERSION.SDK) > 8) {
                i2 = Camera.getNumberOfCameras();
            }
        } catch (Throwable unused) {
        }
        for (int i4 = 0; i4 < i2; i4++) {
            Locale locale = Locale.ENGLISH;
            Object[] objArr = new Object[2];
            Integer valueOf = Integer.valueOf(i4);
            if (i4 == 0) {
                objArr[0] = valueOf;
                objArr[1] = c(context, i4);
                format = String.format(locale, "%1$d:%2$s", objArr);
            } else {
                objArr[0] = valueOf;
                objArr[1] = c(context, i4);
                format = String.format(locale, "#%1$d:%2$s", objArr);
            }
            sb.append(format);
        }
        return sb.toString();
    }

    private static float K(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Point point = new Point(displayMetrics.widthPixels, displayMetrics.heightPixels);
        return point.y / point.x;
    }

    public static c a() {
        return f9902a;
    }

    public static String b(Context context) {
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    return telephonyManager.getDeviceId();
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0097, code lost:
        if (r2 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009b, code lost:
        if (r2 == null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String c(android.content.Context r14, int r15) {
        /*
            r13 = this;
            java.lang.String r0 = "%2$d*%3$d"
            java.lang.String r1 = ""
            android.content.Context r14 = r14.getApplicationContext()
            float r14 = K(r14)
            r2 = 0
            android.hardware.Camera r2 = android.hardware.Camera.open(r15)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            android.hardware.Camera$Parameters r3 = r2.getParameters()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            java.util.List r3 = r3.getSupportedPreviewSizes()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            com.alipay.security.mobile.module.deviceinfo.c$a r4 = new com.alipay.security.mobile.module.deviceinfo.c$a     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r5 = 0
            r4.<init>(r13, r5)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            java.util.Collections.sort(r3, r4)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            java.util.Iterator r4 = r3.iterator()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r6 = 0
        L27:
            boolean r7 = r4.hasNext()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r8 = 1
            if (r7 == 0) goto L56
            java.lang.Object r7 = r4.next()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            android.hardware.Camera$Size r7 = (android.hardware.Camera.Size) r7     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            int r9 = r7.width     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r10 = 600(0x258, float:8.41E-43)
            if (r9 < r10) goto L53
            float r9 = (float) r9     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            int r7 = r7.height     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            float r7 = (float) r7     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            float r9 = r9 / r7
            float r9 = r9 - r14
            float r7 = java.lang.Math.abs(r9)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            double r9 = (double) r7     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r11 = 4584304132692975288(0x3f9eb851eb851eb8, double:0.03)
            int r7 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r7 > 0) goto L50
            r7 = 1
            goto L51
        L50:
            r7 = 0
        L51:
            if (r7 != 0) goto L56
        L53:
            int r6 = r6 + 1
            goto L27
        L56:
            int r14 = r3.size()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            if (r6 != r14) goto L62
            int r14 = r3.size()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            int r6 = r14 + (-1)
        L62:
            java.lang.Object r14 = r3.get(r6)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            android.hardware.Camera$Size r14 = (android.hardware.Camera.Size) r14     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            if (r14 == 0) goto L8b
            java.util.Locale r3 = java.util.Locale.ENGLISH     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r4 = 3
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            java.lang.Integer r15 = java.lang.Integer.valueOf(r15)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r4[r5] = r15     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            int r15 = r14.width     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            java.lang.Integer r15 = java.lang.Integer.valueOf(r15)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r4[r8] = r15     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r15 = 2
            int r14 = r14.height     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            java.lang.Integer r14 = java.lang.Integer.valueOf(r14)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r4[r15] = r14     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            java.lang.String r14 = java.lang.String.format(r3, r0, r4)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L96 java.lang.RuntimeException -> L9a
            r1 = r14
        L8b:
            r2.release()
            goto L9e
        L8f:
            r14 = move-exception
            if (r2 == 0) goto L95
            r2.release()
        L95:
            throw r14
        L96:
            if (r2 == 0) goto L9e
            goto L8b
        L9a:
            if (r2 == 0) goto L9e
            goto L8b
        L9e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.deviceinfo.c.c(android.content.Context, int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x006d, code lost:
        if (r3 == null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String d() {
        /*
            java.lang.String r0 = "0000000000000000"
            r1 = 0
            java.lang.Runtime r2 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            java.lang.String r3 = "cat /proc/cpuinfo | grep Serial"
            java.lang.Process r2 = r2.exec(r3)     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            java.io.LineNumberReader r2 = new java.io.LineNumberReader     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r1 = 1
            r4 = 1
        L1d:
            r5 = 100
            if (r4 >= r5) goto L4b
            java.lang.String r5 = r2.readLine()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            if (r5 == 0) goto L4b
            java.lang.String r6 = "Serial"
            int r6 = r5.indexOf(r6)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            if (r6 < 0) goto L43
            java.lang.String r4 = ":"
            int r4 = r5.indexOf(r4)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            int r4 = r4 + r1
            int r1 = r5.length()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            java.lang.String r1 = r5.substring(r4, r1)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            java.lang.String r0 = r1.trim()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            goto L4b
        L43:
            int r4 = r4 + 1
            goto L1d
        L46:
            r0 = move-exception
            r1 = r2
            goto L58
        L49:
            r1 = r2
            goto L66
        L4b:
            r2.close()     // Catch: java.io.IOException -> L4e
        L4e:
            r3.close()     // Catch: java.io.IOException -> L70
            goto L70
        L52:
            r0 = move-exception
            goto L58
        L54:
            goto L66
        L56:
            r0 = move-exception
            r3 = r1
        L58:
            if (r1 == 0) goto L5f
            r1.close()     // Catch: java.io.IOException -> L5e
            goto L5f
        L5e:
        L5f:
            if (r3 == 0) goto L64
            r3.close()     // Catch: java.io.IOException -> L64
        L64:
            throw r0
        L65:
            r3 = r1
        L66:
            if (r1 == 0) goto L6d
            r1.close()     // Catch: java.io.IOException -> L6c
            goto L6d
        L6c:
        L6d:
            if (r3 == 0) goto L70
            goto L4e
        L70:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.deviceinfo.c.d():java.lang.String");
    }

    public static String e(Context context) {
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    return telephonyManager.getSubscriberId();
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static String g(Context context) {
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                return telephonyManager != null ? telephonyManager.getLine1Number() : "";
            } catch (Exception unused) {
                return "";
            }
        }
        return "";
    }

    public static String h() {
        String x3 = x();
        return !com.alipay.security.mobile.module.commonutils.a.b(x3) ? x3 : z();
    }

    public static String i(Context context) {
        List<Sensor> sensorList;
        if (context != null) {
            try {
                SensorManager sensorManager = (SensorManager) context.getSystemService(ai.ac);
                if (sensorManager == null || (sensorList = sensorManager.getSensorList(-1)) == null || sensorList.size() <= 0) {
                    return null;
                }
                StringBuilder sb = new StringBuilder();
                for (Sensor sensor : sensorList) {
                    sb.append(sensor.getName());
                    sb.append(sensor.getVersion());
                    sb.append(sensor.getVendor());
                }
                return com.alipay.security.mobile.module.commonutils.a.g(sb.toString());
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0050, code lost:
        if (r0 == null) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String j() {
        /*
            java.lang.String r0 = "/proc/meminfo"
            r1 = 0
            r2 = 0
            java.io.FileReader r4 = new java.io.FileReader     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L48
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L48
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L2f java.io.IOException -> L34
            r5 = 8192(0x2000, float:1.14794E-41)
            r0.<init>(r4, r5)     // Catch: java.lang.Throwable -> L2f java.io.IOException -> L34
            java.lang.String r1 = r0.readLine()     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L35
            if (r1 == 0) goto L26
            java.lang.String r5 = "\\s+"
            java.lang.String[] r1 = r1.split(r5)     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L35
            r5 = 1
            r1 = r1[r5]     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L35
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L35
            long r1 = (long) r1
            r2 = r1
        L26:
            r4.close()     // Catch: java.io.IOException -> L29
        L29:
            r0.close()     // Catch: java.io.IOException -> L53
            goto L53
        L2d:
            r1 = move-exception
            goto L3b
        L2f:
            r0 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L3b
        L34:
            r0 = r1
        L35:
            r1 = r4
            goto L49
        L37:
            r0 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L3b:
            if (r4 == 0) goto L42
            r4.close()     // Catch: java.io.IOException -> L41
            goto L42
        L41:
        L42:
            if (r0 == 0) goto L47
            r0.close()     // Catch: java.io.IOException -> L47
        L47:
            throw r1
        L48:
            r0 = r1
        L49:
            if (r1 == 0) goto L50
            r1.close()     // Catch: java.io.IOException -> L4f
            goto L50
        L4f:
        L50:
            if (r0 == 0) goto L53
            goto L29
        L53:
            java.lang.String r0 = java.lang.String.valueOf(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.deviceinfo.c.j():java.lang.String");
    }

    public static String k(Context context) {
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            return Integer.toString(displayMetrics.widthPixels) + WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD + Integer.toString(displayMetrics.heightPixels);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String l() {
        long j4;
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            j4 = statFs.getBlockCount() * statFs.getBlockSize();
        } catch (Exception unused) {
            j4 = 0;
        }
        return String.valueOf(j4);
    }

    public static String m(Context context) {
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            StringBuilder sb = new StringBuilder();
            sb.append(displayMetrics.widthPixels);
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String n() {
        long j4 = 0;
        try {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                j4 = statFs.getBlockSize() * statFs.getBlockCount();
            }
        } catch (Exception unused) {
        }
        return String.valueOf(j4);
    }

    public static String o(Context context) {
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            StringBuilder sb = new StringBuilder();
            sb.append(displayMetrics.heightPixels);
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String p() {
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            return (defaultAdapter == null || defaultAdapter.isEnabled()) ? defaultAdapter.getAddress() : "";
        } catch (Exception unused) {
            return null;
        }
    }

    public static String q(Context context) {
        try {
            return ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo().getMacAddress();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String r() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls.newInstance(), "gsm.version.baseband", "no message");
        } catch (Exception unused) {
            return null;
        }
    }

    public static String s(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getSimSerialNumber();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String t() {
        try {
            return Build.SERIAL;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String u(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x006d, code lost:
        if (r3 == null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String v() {
        /*
            java.lang.String r0 = "-1"
            r1 = 0
            java.lang.Runtime r2 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            java.lang.String r3 = "cat /proc/cpuinfo | grep Hardware"
            java.lang.Process r2 = r2.exec(r3)     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L65
            java.io.LineNumberReader r2 = new java.io.LineNumberReader     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r1 = 1
            r4 = 1
        L1d:
            r5 = 100
            if (r4 >= r5) goto L4b
            java.lang.String r5 = r2.readLine()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            if (r5 == 0) goto L4b
            java.lang.String r6 = "Hardware"
            int r6 = r5.indexOf(r6)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            if (r6 < 0) goto L43
            java.lang.String r4 = ":"
            int r4 = r5.indexOf(r4)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            int r4 = r4 + r1
            int r1 = r5.length()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            java.lang.String r1 = r5.substring(r4, r1)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            java.lang.String r0 = r1.trim()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49
            goto L4b
        L43:
            int r4 = r4 + 1
            goto L1d
        L46:
            r0 = move-exception
            r1 = r2
            goto L58
        L49:
            r1 = r2
            goto L66
        L4b:
            r2.close()     // Catch: java.io.IOException -> L4e
        L4e:
            r3.close()     // Catch: java.io.IOException -> L70
            goto L70
        L52:
            r0 = move-exception
            goto L58
        L54:
            goto L66
        L56:
            r0 = move-exception
            r3 = r1
        L58:
            if (r1 == 0) goto L5f
            r1.close()     // Catch: java.io.IOException -> L5e
            goto L5f
        L5e:
        L5f:
            if (r3 == 0) goto L64
            r3.close()     // Catch: java.io.IOException -> L64
        L64:
            throw r0
        L65:
            r3 = r1
        L66:
            if (r1 == 0) goto L6d
            r1.close()     // Catch: java.io.IOException -> L6c
            goto L6d
        L6c:
        L6d:
            if (r3 == 0) goto L70
            goto L4e
        L70:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.deviceinfo.c.v():java.lang.String");
    }

    public static String w(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return String.valueOf(telephonyManager.getNetworkType());
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String x() {
        FileReader fileReader;
        Throwable th;
        BufferedReader bufferedReader;
        try {
            fileReader = new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq");
            try {
                bufferedReader = new BufferedReader(fileReader, 8192);
                try {
                    String readLine = bufferedReader.readLine();
                    if (!com.alipay.security.mobile.module.commonutils.a.b(readLine)) {
                        String trim = readLine.trim();
                        try {
                            bufferedReader.close();
                        } catch (IOException unused) {
                        }
                        try {
                            fileReader.close();
                        } catch (IOException unused2) {
                        }
                        return trim;
                    }
                } catch (IOException unused3) {
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        bufferedReader.close();
                    } catch (IOException unused4) {
                    }
                    try {
                        fileReader.close();
                    } catch (IOException unused5) {
                    }
                    throw th;
                }
            } catch (IOException unused6) {
                bufferedReader = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (IOException unused7) {
            bufferedReader = null;
            fileReader = null;
        } catch (Throwable th4) {
            fileReader = null;
            th = th4;
            bufferedReader = null;
        }
        try {
            bufferedReader.close();
        } catch (IOException unused8) {
        }
        try {
            fileReader.close();
        } catch (IOException unused9) {
        }
        return null;
    }

    public static String y(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
            return wifiManager.isWifiEnabled() ? wifiManager.getConnectionInfo().getBSSID() : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
        r1 = r3[1].trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0038, code lost:
        r2.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String z() {
        /*
            java.lang.String r0 = "/proc/cpuinfo"
            r1 = 0
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L5b
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L5b
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L43 java.io.IOException -> L48
            r3 = 8192(0x2000, float:1.14794E-41)
            r0.<init>(r2, r3)     // Catch: java.lang.Throwable -> L43 java.io.IOException -> L48
        Lf:
            java.lang.String r3 = r0.readLine()     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
            if (r3 == 0) goto L38
            boolean r4 = com.alipay.security.mobile.module.commonutils.a.b(r3)     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
            if (r4 != 0) goto Lf
            java.lang.String r4 = ":"
            java.lang.String[] r3 = r3.split(r4)     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
            if (r3 == 0) goto Lf
            int r4 = r3.length     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
            r5 = 1
            if (r4 <= r5) goto Lf
            r4 = 0
            r4 = r3[r4]     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
            java.lang.String r6 = "BogoMIPS"
            boolean r4 = r4.contains(r6)     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
            if (r4 == 0) goto Lf
            r3 = r3[r5]     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
            java.lang.String r1 = r3.trim()     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
        L38:
            r2.close()     // Catch: java.io.IOException -> L3b
        L3b:
            r0.close()     // Catch: java.io.IOException -> L3e
        L3e:
            return r1
        L3f:
            r1 = move-exception
            goto L4e
        L41:
            goto L5d
        L43:
            r0 = move-exception
            r7 = r1
            r1 = r0
            r0 = r7
            goto L4e
        L48:
            r0 = r1
            goto L5d
        L4a:
            r0 = move-exception
            r2 = r1
            r1 = r0
            r0 = r2
        L4e:
            if (r2 == 0) goto L55
            r2.close()     // Catch: java.io.IOException -> L54
            goto L55
        L54:
        L55:
            if (r0 == 0) goto L5a
            r0.close()     // Catch: java.io.IOException -> L5a
        L5a:
            throw r1
        L5b:
            r0 = r1
            r2 = r0
        L5d:
            if (r2 == 0) goto L64
            r2.close()     // Catch: java.io.IOException -> L63
            goto L64
        L63:
        L64:
            if (r0 == 0) goto L69
            r0.close()     // Catch: java.io.IOException -> L69
        L69:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.deviceinfo.c.z():java.lang.String");
    }

    public final String f() {
        try {
            return String.valueOf(new File("/sys/devices/system/cpu/").listFiles(new d(this)).length);
        } catch (Exception unused) {
            return "1";
        }
    }
}
