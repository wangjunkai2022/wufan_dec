package com.efs.sdk.launch;

import android.content.Context;
import android.content.SharedPreferences;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.observer.IConfigCallback;
import com.efs.sdk.pa.config.ConfigManager;
import java.util.Map;
import java.util.Random;
/* loaded from: classes2.dex */
public class LaunchConfigManager {

    /* renamed from: a  reason: collision with root package name */
    private final String f11410a = "LaunchConfigManager";

    /* renamed from: b  reason: collision with root package name */
    private final int f11411b = 0;

    /* renamed from: c  reason: collision with root package name */
    private EfsReporter f11412c;

    /* renamed from: d  reason: collision with root package name */
    private int f11413d;

    /* renamed from: e  reason: collision with root package name */
    private int f11414e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f11415f;

    /* renamed from: g  reason: collision with root package name */
    private Context f11416g;

    public LaunchConfigManager(Context context, EfsReporter efsReporter) {
        SharedPreferences.Editor edit;
        SharedPreferences.Editor edit2;
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor edit3;
        SharedPreferences.Editor edit4;
        SharedPreferences.Editor edit5;
        this.f11413d = 100;
        this.f11415f = false;
        Context applicationContext = context.getApplicationContext();
        this.f11416g = applicationContext;
        this.f11412c = efsReporter;
        SharedPreferences sharedPreferences2 = applicationContext.getSharedPreferences("efs_launch", 0);
        if (sharedPreferences2 != null) {
            this.f11414e = sharedPreferences2.getInt("apm_startperf_sampling_rate_last", 0);
        }
        SharedPreferences sharedPreferences3 = this.f11416g.getSharedPreferences("efs_launch", 0);
        int i2 = sharedPreferences3 != null ? sharedPreferences3.getInt("apm_startperf_sampling_rate", -1) : -1;
        this.f11412c.getAllSdkConfig(new String[]{"apm_startperf_sampling_rate"}, new IConfigCallback() { // from class: com.efs.sdk.launch.LaunchConfigManager.1
            @Override // com.efs.sdk.base.observer.IConfigCallback
            public final void onChange(Map<String, Object> map) {
                SharedPreferences sharedPreferences4;
                SharedPreferences.Editor edit6;
                try {
                    Object obj = map.get("apm_startperf_sampling_rate");
                    if (obj == null || (sharedPreferences4 = LaunchConfigManager.this.f11416g.getSharedPreferences("efs_launch", 0)) == null || (edit6 = sharedPreferences4.edit()) == null) {
                        return;
                    }
                    edit6.putInt("apm_startperf_sampling_rate", Integer.parseInt(obj.toString()));
                    edit6.commit();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
        if (i2 != -1) {
            this.f11413d = i2;
        }
        SharedPreferences sharedPreferences4 = this.f11416g.getSharedPreferences("efs_launch", 0);
        long j4 = sharedPreferences4 != null ? sharedPreferences4.getLong(ConfigManager.FLAG_PA_FORE_CHECK_TIME, 0L) : 0L;
        boolean z3 = sharedPreferences4 != null ? sharedPreferences4.getBoolean(ConfigManager.FLAG_PA_CHECK_IN_STATE, false) : false;
        int i4 = this.f11413d;
        boolean z4 = true;
        if (i4 != 0) {
            boolean z5 = i4 != this.f11414e;
            Long valueOf = Long.valueOf(j4);
            int i5 = this.f11413d;
            Long valueOf2 = Long.valueOf(System.currentTimeMillis());
            Long valueOf3 = Long.valueOf(valueOf2.longValue() - valueOf.longValue());
            if (z3 && valueOf3.longValue() < 86400000 && !z5) {
                boolean z6 = LaunchManager.isDebug;
            } else if (valueOf3.longValue() >= 86400000 || z5) {
                if (i5 != 0 && (i5 == 100 || new Random().nextInt(100) <= i5)) {
                    boolean z7 = LaunchManager.isDebug;
                } else {
                    boolean z8 = LaunchManager.isDebug;
                    z4 = false;
                }
                SharedPreferences sharedPreferences5 = this.f11416g.getSharedPreferences("efs_launch", 0);
                if (sharedPreferences5 != null && (edit2 = sharedPreferences5.edit()) != null) {
                    edit2.putBoolean(ConfigManager.FLAG_PA_CHECK_IN_STATE, z4);
                    edit2.commit();
                }
                if (sharedPreferences5 != null && (edit = sharedPreferences5.edit()) != null) {
                    edit.putLong(ConfigManager.FLAG_PA_FORE_CHECK_TIME, valueOf2.longValue());
                    edit.commit();
                }
            } else {
                boolean z9 = LaunchManager.isDebug;
            }
            this.f11415f = z4;
            sharedPreferences = this.f11416g.getSharedPreferences("efs_launch", 0);
            if (sharedPreferences != null || (edit3 = sharedPreferences.edit()) == null) {
            }
            edit3.putInt("apm_startperf_sampling_rate_last", this.f11413d);
            edit3.commit();
            return;
        }
        if (z3 && sharedPreferences4 != null && (edit5 = sharedPreferences4.edit()) != null) {
            edit5.putBoolean(ConfigManager.FLAG_PA_CHECK_IN_STATE, false);
            edit5.commit();
        }
        if (j4 != 0 && sharedPreferences4 != null && (edit4 = sharedPreferences4.edit()) != null) {
            edit4.putLong(ConfigManager.FLAG_PA_FORE_CHECK_TIME, 0L);
            edit4.commit();
        }
        z4 = false;
        this.f11415f = z4;
        sharedPreferences = this.f11416g.getSharedPreferences("efs_launch", 0);
        if (sharedPreferences != null) {
        }
    }

    public boolean enableTracer() {
        return this.f11415f;
    }
}
