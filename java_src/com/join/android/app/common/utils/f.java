package com.join.android.app.common.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.Uri;
import android.net.wifi.WifiManager;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.join.mgps.Util.g0;
import com.join.mgps.Util.t0;
import com.qq.e.comm.constants.ErrorCode;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;
/* compiled from: NetWorkUtils.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f17226a = "NetWorkUtils";

    /* renamed from: b  reason: collision with root package name */
    public static final String f17227b = "ctwap";

    /* renamed from: c  reason: collision with root package name */
    public static final String f17228c = "cmwap";

    /* renamed from: d  reason: collision with root package name */
    public static final String f17229d = "3gwap";

    /* renamed from: e  reason: collision with root package name */
    public static final String f17230e = "uniwap";

    /* renamed from: f  reason: collision with root package name */
    public static final int f17231f = 0;

    /* renamed from: g  reason: collision with root package name */
    public static final int f17232g = 4;

    /* renamed from: h  reason: collision with root package name */
    public static final int f17233h = 5;

    /* renamed from: i  reason: collision with root package name */
    public static final int f17234i = 6;

    /* renamed from: j  reason: collision with root package name */
    public static Uri f17235j = Uri.parse("content://telephony/carriers/preferapn");

    public static int a(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (type == 1) {
                    t0.c("=====================>wifi网络");
                    return 6;
                }
                if (type == 0) {
                    String defaultHost = Proxy.getDefaultHost();
                    if ("10.0.0.172".equals(defaultHost)) {
                        t0.c("netMode ================== 10.0.0.172");
                        return 4;
                    } else if ("10.0.0.200".equals(defaultHost)) {
                        t0.c("netMode ================== 10.0.0.200");
                        return 5;
                    } else {
                        String extraInfo = activeNetworkInfo.getExtraInfo();
                        t0.c("netMode ================== " + extraInfo);
                        if (extraInfo != null) {
                            String lowerCase = extraInfo.toLowerCase();
                            if (lowerCase.equals(f17228c) || lowerCase.equals(f17229d) || lowerCase.equals(f17230e)) {
                                t0.c("=====================>移动联通wap网络");
                                return 4;
                            }
                        }
                    }
                }
                t0.c("net 网络");
                return 6;
            }
            t0.c("=====================>无网络");
            return 6;
        } catch (Exception e4) {
            e4.printStackTrace();
            return 6;
        }
    }

    public static void b(Context context) {
        if (context != null) {
            ((WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).disconnect();
        }
    }

    public static int c(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable()) {
            return -1;
        }
        return activeNetworkInfo.getType();
    }

    public static byte d(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return (byte) -1;
        }
        if (activeNetworkInfo.getType() != 1 && activeNetworkInfo.getType() == 0) {
            int subtype = activeNetworkInfo.getSubtype();
            if (subtype == 4 || subtype == 1 || subtype == 2) {
                return (byte) 4;
            }
            if (subtype == 3 || subtype == 8 || subtype == 6 || subtype == 5 || subtype == 12 || subtype == 9 || subtype == 10 || subtype == 14 || subtype == 15) {
                return (byte) 3;
            }
            if (subtype == 13) {
                return (byte) 2;
            }
            if (subtype == 20) {
                return (byte) 5;
            }
        }
        return (byte) 1;
    }

    public static String e(Context context) {
        return context != null ? h(((WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo().getIpAddress()) : com.join.mgps.socket.entity.b.f52090j;
    }

    public static final String f() {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2;
        Exception e4;
        int i2 = 3;
        while (i2 > 0) {
            i2--;
            try {
                httpURLConnection2 = (HttpURLConnection) new URL("http://pv.sohu.com/cityjson?ie=utf-8").openConnection();
                try {
                    try {
                        httpURLConnection2.setConnectTimeout(5000);
                        httpURLConnection2.setReadTimeout(ErrorCode.UNKNOWN_ERROR);
                        httpURLConnection2.setRequestProperty("Connection", "Keep-Alive");
                        httpURLConnection2.setRequestMethod("GET");
                        if (httpURLConnection2.getResponseCode() == 200) {
                            InputStream inputStream = httpURLConnection2.getInputStream();
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
                            StringBuilder sb = new StringBuilder();
                            while (true) {
                                String readLine = bufferedReader.readLine();
                                if (readLine != null) {
                                    sb.append(readLine);
                                    sb.append("\n");
                                } else {
                                    inputStream.close();
                                    String optString = new JSONObject(sb.substring(sb.indexOf("{"), sb.indexOf("}") + 1)).optString("cip", "");
                                    httpURLConnection2.disconnect();
                                    return optString;
                                }
                            }
                        }
                    } catch (Exception e5) {
                        e4 = e5;
                        e4.printStackTrace();
                        httpURLConnection = httpURLConnection2 == null ? httpURLConnection2 : null;
                        httpURLConnection2.disconnect();
                    }
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Exception e6) {
                httpURLConnection2 = httpURLConnection;
                e4 = e6;
            } catch (Throwable th2) {
                th = th2;
            }
            httpURLConnection2.disconnect();
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        return "";
    }

    public static String g(Context context) {
        return context != null ? ((WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo().getSSID() : "";
    }

    public static String h(int i2) {
        return (i2 & 255) + g0.f27568a + ((i2 >> 8) & 255) + g0.f27568a + ((i2 >> 16) & 255) + g0.f27568a + ((i2 >> 24) & 255);
    }

    public static boolean i(Context context) {
        if (context != null) {
            try {
                NetworkInfo.State state = ((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(0).getState();
                if (state == NetworkInfo.State.CONNECTED) {
                    return true;
                }
                if (state == NetworkInfo.State.CONNECTING) {
                    return true;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        return false;
    }

    public static boolean j(Context context) {
        if (context != null) {
            try {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    return activeNetworkInfo.isAvailable();
                }
                return false;
            } catch (Exception e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static boolean k(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context != null) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo.State state = connectivityManager.getNetworkInfo(1).getState();
            return (state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING) && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.getType() == 1;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean l() {
        /*
            r0 = 3
            r1 = 0
        L2:
            if (r0 <= 0) goto L64
            int r0 = r0 + (-1)
            java.net.URL r2 = new java.net.URL     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            java.lang.String r3 = "https://www.baidu.com/"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            java.net.URLConnection r2 = r2.openConnection()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            java.net.HttpURLConnection r2 = (java.net.HttpURLConnection) r2     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            r1 = 5000(0x1388, float:7.006E-42)
            r2.setConnectTimeout(r1)     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4d
            r1 = 6000(0x1770, float:8.408E-42)
            r2.setReadTimeout(r1)     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4d
            java.lang.String r1 = "Connection"
            java.lang.String r3 = "Keep-Alive"
            r2.setRequestProperty(r1, r3)     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4d
            java.lang.String r1 = "GET"
            r2.setRequestMethod(r1)     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4d
            int r1 = r2.getResponseCode()     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4d
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4d
            r3.<init>()     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4d
            java.lang.String r4 = "ping status is "
            r3.append(r4)     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4d
            r3.append(r1)     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4d
            r0 = 1
            r2.disconnect()
            return r0
        L3f:
            r1 = move-exception
            goto L47
        L41:
            r0 = move-exception
            goto L5e
        L43:
            r2 = move-exception
            r5 = r2
            r2 = r1
            r1 = r5
        L47:
            r3 = 1000(0x3e8, double:4.94E-321)
            java.lang.Thread.sleep(r3)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L50
            goto L54
        L4d:
            r0 = move-exception
            r1 = r2
            goto L5e
        L50:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L4d
        L54:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L4d
            if (r2 == 0) goto L5c
            r2.disconnect()
        L5c:
            r1 = r2
            goto L2
        L5e:
            if (r1 == 0) goto L63
            r1.disconnect()
        L63:
            throw r0
        L64:
            if (r1 == 0) goto L69
            r1.disconnect()
        L69:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.utils.f.l():boolean");
    }

    public static boolean m(String str) {
        try {
            Runtime runtime = Runtime.getRuntime();
            StringBuilder sb = new StringBuilder();
            sb.append("/system/bin/ping -c 1 -w 100 ");
            sb.append(str);
            return runtime.exec(sb.toString()).waitFor() == 0;
        } catch (IOException e4) {
            e4.printStackTrace();
            return false;
        } catch (InterruptedException e5) {
            e5.printStackTrace();
            return false;
        }
    }
}
