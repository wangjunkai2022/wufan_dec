package com.tencent.bugly;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.bugly.proguard.n;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.p;
import com.tencent.bugly.proguard.u;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import com.tencent.bugly.proguard.z;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f59302a = true;

    /* renamed from: b  reason: collision with root package name */
    public static List<a> f59303b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public static boolean f59304c;

    /* renamed from: d  reason: collision with root package name */
    private static p f59305d;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f59306e;

    private static boolean a(com.tencent.bugly.crashreport.common.info.a aVar) {
        List<String> list = aVar.f59375o;
        return list != null && list.contains("bugly");
    }

    public static synchronized void a(Context context) {
        synchronized (b.class) {
            a(context, null);
        }
    }

    public static synchronized void a(Context context, BuglyStrategy buglyStrategy) {
        synchronized (b.class) {
            if (f59306e) {
                x.d("[init] initial Multi-times, ignore this.", new Object[0]);
            } else if (context == null) {
                String str = x.f59843a;
            } else {
                com.tencent.bugly.crashreport.common.info.a a4 = com.tencent.bugly.crashreport.common.info.a.a(context);
                if (a(a4)) {
                    f59302a = false;
                    return;
                }
                String f4 = a4.f();
                if (f4 == null) {
                    String str2 = x.f59843a;
                } else {
                    a(context, f4, a4.f59381u, buglyStrategy);
                }
            }
        }
    }

    public static synchronized void a(Context context, String str, boolean z3, BuglyStrategy buglyStrategy) {
        byte[] bArr;
        synchronized (b.class) {
            if (f59306e) {
                x.d("[init] initial Multi-times, ignore this.", new Object[0]);
            } else if (context == null) {
                String str2 = x.f59843a;
            } else if (str == null) {
                String str3 = x.f59843a;
            } else {
                f59306e = true;
                if (z3) {
                    f59304c = true;
                    x.f59844b = true;
                    x.d("Bugly debug模式开启，请在发布时把isDebug关闭。 -- Running in debug model for 'isDebug' is enabled. Please disable it when you release.", new Object[0]);
                    x.e("--------------------------------------------------------------------------------------------", new Object[0]);
                    x.d("Bugly debug模式将有以下行为特性 -- The following list shows the behaviour of debug model: ", new Object[0]);
                    x.d("[1] 输出详细的Bugly SDK的Log -- More detailed log of Bugly SDK will be output to logcat;", new Object[0]);
                    x.d("[2] 每一条Crash都会被立即上报 -- Every crash caught by Bugly will be uploaded immediately.", new Object[0]);
                    x.d("[3] 自定义日志将会在Logcat中输出 -- Custom log will be output to logcat.", new Object[0]);
                    x.e("--------------------------------------------------------------------------------------------", new Object[0]);
                    x.b("[init] Open debug mode of Bugly.", new Object[0]);
                }
                x.a(" crash report start initializing...", new Object[0]);
                x.b("[init] Bugly start initializing...", new Object[0]);
                x.a("[init] Bugly complete version: v%s", "3.4.4");
                Context a4 = z.a(context);
                com.tencent.bugly.crashreport.common.info.a a5 = com.tencent.bugly.crashreport.common.info.a.a(a4);
                a5.p();
                y.a(a4);
                f59305d = p.a(a4, f59303b);
                u.a(a4);
                com.tencent.bugly.crashreport.common.strategy.a a6 = com.tencent.bugly.crashreport.common.strategy.a.a(a4, f59303b);
                n a7 = n.a(a4);
                if (a(a5)) {
                    f59302a = false;
                    return;
                }
                a5.a(str);
                x.a("[param] Set APP ID:%s", str);
                if (buglyStrategy != null) {
                    String appVersion = buglyStrategy.getAppVersion();
                    if (!TextUtils.isEmpty(appVersion)) {
                        if (appVersion.length() > 100) {
                            String substring = appVersion.substring(0, 100);
                            x.d("appVersion %s length is over limit %d substring to %s", appVersion, 100, substring);
                            appVersion = substring;
                        }
                        a5.f59370j = appVersion;
                        x.a("[param] Set App version: %s", buglyStrategy.getAppVersion());
                    }
                    try {
                        if (buglyStrategy.isReplaceOldChannel()) {
                            String appChannel = buglyStrategy.getAppChannel();
                            if (!TextUtils.isEmpty(appChannel)) {
                                if (appChannel.length() > 100) {
                                    String substring2 = appChannel.substring(0, 100);
                                    x.d("appChannel %s length is over limit %d substring to %s", appChannel, 100, substring2);
                                    appChannel = substring2;
                                }
                                f59305d.a(556, "app_channel", appChannel.getBytes(), (o) null, false);
                                a5.f59372l = appChannel;
                            }
                        } else {
                            Map<String, byte[]> a8 = f59305d.a(556, (o) null, true);
                            if (a8 != null && (bArr = a8.get("app_channel")) != null) {
                                a5.f59372l = new String(bArr);
                            }
                        }
                        x.a("[param] Set App channel: %s", a5.f59372l);
                    } catch (Exception e4) {
                        if (f59304c) {
                            e4.printStackTrace();
                        }
                    }
                    String appPackageName = buglyStrategy.getAppPackageName();
                    if (!TextUtils.isEmpty(appPackageName)) {
                        if (appPackageName.length() > 100) {
                            String substring3 = appPackageName.substring(0, 100);
                            x.d("appPackageName %s length is over limit %d substring to %s", appPackageName, 100, substring3);
                            appPackageName = substring3;
                        }
                        a5.f59363c = appPackageName;
                        x.a("[param] Set App package: %s", buglyStrategy.getAppPackageName());
                    }
                    String deviceID = buglyStrategy.getDeviceID();
                    if (deviceID != null) {
                        if (deviceID.length() > 100) {
                            String substring4 = deviceID.substring(0, 100);
                            x.d("deviceId %s length is over limit %d substring to %s", deviceID, 100, substring4);
                            deviceID = substring4;
                        }
                        a5.c(deviceID);
                        x.a("[param] Set device ID: %s", deviceID);
                    }
                    String deviceModel = buglyStrategy.getDeviceModel();
                    if (deviceModel != null) {
                        a5.d(deviceModel);
                        x.a("[param] Set device model: %s", deviceModel);
                    }
                    a5.f59365e = buglyStrategy.isUploadProcess();
                    y.f59846a = buglyStrategy.isBuglyLogUpload();
                }
                for (int i2 = 0; i2 < f59303b.size(); i2++) {
                    if (a7.a(f59303b.get(i2).id)) {
                        f59303b.get(i2).init(a4, z3, buglyStrategy);
                    }
                }
                com.tencent.bugly.crashreport.biz.b.a(a4, buglyStrategy);
                a6.a(buglyStrategy != null ? buglyStrategy.getAppReportDelay() : 0L);
                x.b("[init] Bugly initialization finished.", new Object[0]);
            }
        }
    }

    public static synchronized void a(a aVar) {
        synchronized (b.class) {
            if (!f59303b.contains(aVar)) {
                f59303b.add(aVar);
            }
        }
    }
}
