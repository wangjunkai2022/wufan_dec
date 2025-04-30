package com.papa.sim.statistic;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.efs.sdk.base.core.util.NetworkUtil;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.URL;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: GetPhoneAddressUtil.java */
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final String f55456a = "02:00:00:00:00:00";

    /* renamed from: b  reason: collision with root package name */
    private static final String f55457b = "/sys/class/net/wlan0/address";

    private static String a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return "No Contents";
        }
        StringWriter stringWriter = new StringWriter();
        char[] cArr = new char[2048];
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            while (true) {
                int read = bufferedReader.read(cArr);
                if (read != -1) {
                    stringWriter.write(cArr, 0, read);
                } else {
                    inputStream.close();
                    return stringWriter.toString();
                }
            }
        } catch (Throwable th) {
            inputStream.close();
            throw th;
        }
    }

    private static String b(WifiManager wifiManager) throws Exception {
        int wifiState = wifiManager.getWifiState();
        if (wifiManager.isWifiEnabled()) {
            FileInputStream fileInputStream = new FileInputStream(new File(f55457b));
            String a4 = a(fileInputStream);
            fileInputStream.close();
            wifiManager.setWifiEnabled(3 == wifiState);
            return a4;
        }
        return null;
    }

    private static String c() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (networkInterface.getName().equalsIgnoreCase("wlan0")) {
                    byte[] hardwareAddress = networkInterface.getHardwareAddress();
                    if (hardwareAddress == null) {
                        return "";
                    }
                    StringBuilder sb = new StringBuilder();
                    int length = hardwareAddress.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        sb.append(String.format("%02X:", Byte.valueOf(hardwareAddress[i2])));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString();
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String d(Context context) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        if (connectionInfo == null || !f55456a.equals(connectionInfo.getMacAddress())) {
            return (connectionInfo == null || connectionInfo.getMacAddress() == null) ? "" : connectionInfo.getMacAddress();
        }
        try {
            String c4 = c();
            return c4 != null ? c4 : b(wifiManager);
        } catch (IOException | Exception unused) {
            return f55456a;
        }
    }

    public static String e() {
        String str = "";
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("http://pv.sohu.com/cityjson?ie=utf-8").openConnection();
            if (httpURLConnection.getResponseCode() == 200) {
                InputStream inputStream = httpURLConnection.getInputStream();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
                StringBuilder sb = new StringBuilder();
                while (true) {
                    str = bufferedReader.readLine();
                    if (str == null) {
                        break;
                    }
                    sb.append(str + "\n");
                }
                inputStream.close();
                String substring = sb.substring(sb.indexOf("{"), sb.indexOf("}") + 1);
                if (substring != null) {
                    try {
                        return new JSONObject(substring).optString("cip");
                    } catch (JSONException e4) {
                        e4.printStackTrace();
                        return str;
                    }
                }
                return str;
            }
        } catch (MalformedURLException e5) {
            e5.printStackTrace();
        } catch (IOException e6) {
            e6.printStackTrace();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        return str;
    }
}
