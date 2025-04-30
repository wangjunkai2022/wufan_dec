package com.umeng.commonsdk.internal.utils;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.statistics.common.ULog;
/* compiled from: BaseStationUtils.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static final String f61184b = "BaseStationUtils";

    /* renamed from: c  reason: collision with root package name */
    private static boolean f61185c;

    /* renamed from: d  reason: collision with root package name */
    private static Context f61186d;

    /* renamed from: a  reason: collision with root package name */
    PhoneStateListener f61187a;

    /* renamed from: e  reason: collision with root package name */
    private TelephonyManager f61188e;

    /* compiled from: BaseStationUtils.java */
    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final b f61190a = new b(b.f61186d);

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) f61186d.getSystemService("phone");
            if (telephonyManager == null) {
                return null;
            }
            String simOperator = telephonyManager.getSimOperator();
            if (TextUtils.isEmpty(simOperator)) {
                return null;
            }
            if (!simOperator.equals("46000") && !simOperator.equals("46002")) {
                if (simOperator.equals("46001")) {
                    return "中国联通";
                }
                if (simOperator.equals("46003")) {
                    return "中国电信";
                }
                return null;
            }
            return "中国移动";
        } catch (Throwable unused) {
            return null;
        }
    }

    public synchronized void c() {
        ULog.e(f61184b, "base station unRegisterListener");
        try {
            TelephonyManager telephonyManager = this.f61188e;
            if (telephonyManager != null) {
                telephonyManager.listen(this.f61187a, 0);
            }
            f61185c = false;
        } catch (Throwable unused) {
        }
    }

    private b(Context context) {
        this.f61187a = new PhoneStateListener() { // from class: com.umeng.commonsdk.internal.utils.b.1
            @Override // android.telephony.PhoneStateListener
            public void onSignalStrengthsChanged(SignalStrength signalStrength) {
                String sb;
                super.onSignalStrengthsChanged(signalStrength);
                ULog.e(b.f61184b, "base station onSignalStrengthsChanged");
                try {
                    b.this.f61188e = (TelephonyManager) b.f61186d.getSystemService("phone");
                    String[] split = signalStrength.toString().split(" ");
                    String str = null;
                    if (b.this.f61188e == null || b.this.f61188e.getNetworkType() != 13) {
                        if (b.this.f61188e != null && (b.this.f61188e.getNetworkType() == 8 || b.this.f61188e.getNetworkType() == 10 || b.this.f61188e.getNetworkType() == 9 || b.this.f61188e.getNetworkType() == 3)) {
                            String e4 = b.this.e();
                            if (!TextUtils.isEmpty(e4) && e4.equals("中国移动")) {
                                str = "0";
                            } else if (!TextUtils.isEmpty(e4) && e4.equals("中国联通")) {
                                str = signalStrength.getCdmaDbm() + "";
                            } else if (!TextUtils.isEmpty(e4) && e4.equals("中国电信")) {
                                str = signalStrength.getEvdoDbm() + "";
                            }
                            sb = str;
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append((signalStrength.getGsmSignalStrength() * 2) - 113);
                            sb2.append("");
                            sb = sb2.toString();
                        }
                    } else {
                        sb = "" + Integer.parseInt(split[9]);
                    }
                    ULog.e(b.f61184b, "stationStrength is " + sb);
                    if (!TextUtils.isEmpty(sb)) {
                        try {
                            UMWorkDispatch.sendEvent(b.f61186d, com.umeng.commonsdk.internal.a.f61134i, com.umeng.commonsdk.internal.b.a(b.f61186d).a(), sb);
                        } catch (Throwable unused) {
                        }
                    }
                    b.this.c();
                } catch (Exception unused2) {
                }
            }
        };
        if (context != null) {
            try {
                this.f61188e = (TelephonyManager) context.getSystemService("phone");
            } catch (Throwable unused) {
            }
        }
    }

    public synchronized void b() {
        ULog.e(f61184b, "base station registerListener");
        try {
            TelephonyManager telephonyManager = this.f61188e;
            if (telephonyManager != null) {
                telephonyManager.listen(this.f61187a, 256);
            }
            f61185c = true;
        } catch (Throwable unused) {
        }
    }

    public static b a(Context context) {
        if (f61186d == null && context != null) {
            f61186d = context.getApplicationContext();
        }
        return a.f61190a;
    }

    public synchronized boolean a() {
        return f61185c;
    }
}
