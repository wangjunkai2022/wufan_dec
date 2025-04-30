package com.papa.sim.statistic;

import android.content.Context;
import android.os.Environment;
import android.telephony.TelephonyManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.security.MessageDigest;
import java.util.UUID;
/* compiled from: GetDeviceId.java */
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f55454a = "aray/cache/devices";

    /* renamed from: b  reason: collision with root package name */
    private static final String f55455b = ".DEVICES";

    public static String a(byte[] bArr, boolean z3) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i4 = bArr[i2];
            if (i4 < 0) {
                i4 += 256;
            }
            if (i4 < 16) {
                stringBuffer.append("0");
            }
            stringBuffer.append(Integer.toHexString(i4));
        }
        if (z3) {
            return stringBuffer.toString().toUpperCase();
        }
        return stringBuffer.toString().toLowerCase();
    }

    public static String b(Context context) {
        String g4 = g(context);
        StringBuffer stringBuffer = new StringBuffer();
        if (g4 == null || "".equals(g4)) {
            try {
                stringBuffer.append(d(context));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            try {
                stringBuffer.append(e(context).replace(":", ""));
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            if (stringBuffer.length() <= 0) {
                stringBuffer.append(UUID.randomUUID().toString().replace("-", ""));
            }
            String f4 = f(stringBuffer.toString(), false);
            if (stringBuffer.length() > 0) {
                h(f4, context);
            }
            return f4;
        }
        return g4;
    }

    private static File c(Context context) {
        if (Environment.getExternalStorageState().equals("mounted")) {
            File file = new File(Environment.getExternalStorageDirectory(), f55454a);
            if (!file.exists()) {
                file.mkdirs();
            }
            return new File(file, f55455b);
        }
        File file2 = new File(context.getFilesDir(), f55454a);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        return new File(file2, f55455b);
    }

    private static String d(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
    }

    private static String e(Context context) {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            NetworkInterface byName = NetworkInterface.getByName("eth1");
            if (byName == null) {
                byName = NetworkInterface.getByName("wlan0");
            }
            if (byName == null) {
                return "";
            }
            byte[] hardwareAddress = byName.getHardwareAddress();
            int length = hardwareAddress.length;
            for (int i2 = 0; i2 < length; i2++) {
                stringBuffer.append(String.format("%02X:", Byte.valueOf(hardwareAddress[i2])));
            }
            if (stringBuffer.length() > 0) {
                stringBuffer.deleteCharAt(stringBuffer.length() - 1);
            }
            return stringBuffer.toString();
        } catch (SocketException e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public static String f(String str, boolean z3) {
        try {
            return a(MessageDigest.getInstance("MD5").digest(str.getBytes()), z3);
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public static String g(Context context) {
        File c4 = c(context);
        StringBuffer stringBuffer = new StringBuffer();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(c4), "UTF-8"));
            while (true) {
                int read = bufferedReader.read();
                if (read > -1) {
                    stringBuffer.append((char) read);
                } else {
                    bufferedReader.close();
                    return stringBuffer.toString();
                }
            }
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static void h(String str, Context context) {
        try {
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(c(context)), "UTF-8");
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }
}
