package com.efs.sdk.pa;

import android.content.Context;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.pa.config.ConfigManager;
import com.efs.sdk.pa.config.IEfsReporter;
import com.efs.sdk.pa.config.PackageLevel;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class PAFactory {
    private static final long DEFAULT_TIME_OUT_TIME = 2000;
    private static final long INVALID_TIME_OUT_TIME = 0;
    private static final long MAX_TIME_OUT_TIME = 4000;
    private static final String TAG = "pafactory";
    static final ThreadLocal<PA> sThreadLocal = new ThreadLocal<>();
    private ConfigManager mConfigManager;
    private Context mContext;
    private HashMap<String, String> mExtend;
    private EfsReporter mReporter;
    private IEfsReporter mReporterFactory;
    private String mSerial;
    private String mSver;
    private long mTimeOutTime;
    private PATraceListener mTraceListener;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private PackageLevel f11471a;

        /* renamed from: b  reason: collision with root package name */
        private IEfsReporter f11472b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f11473c;

        /* renamed from: d  reason: collision with root package name */
        private Context f11474d;

        /* renamed from: e  reason: collision with root package name */
        private String f11475e;

        /* renamed from: f  reason: collision with root package name */
        private HashMap<String, String> f11476f;

        /* renamed from: g  reason: collision with root package name */
        private String f11477g;

        /* renamed from: h  reason: collision with root package name */
        private long f11478h = PAFactory.DEFAULT_TIME_OUT_TIME;

        /* renamed from: i  reason: collision with root package name */
        private PATraceListener f11479i;

        public Builder(Context context, IEfsReporter iEfsReporter) {
            if (context == null) {
                throw new RuntimeException("context Should Not null");
            }
            if (iEfsReporter != null) {
                this.f11472b = iEfsReporter;
                this.f11474d = context;
                return;
            }
            throw new RuntimeException("reporter Should Not Empty");
        }

        public PAFactory build() {
            if (this.f11471a != null) {
                return new PAFactory(this.f11474d, this.f11471a, this.f11472b, this.f11473c, this.f11475e, this.f11476f, this.f11477g, this.f11478h, this.f11479i);
            }
            throw new RuntimeException(String.format("%s Should Not Null", ""));
        }

        public Builder extendLogInfo(HashMap<String, String> hashMap) {
            this.f11476f = hashMap;
            return this;
        }

        public Builder isNewInstall(boolean z3) {
            this.f11473c = z3;
            return this;
        }

        public Builder packageLevel(PackageLevel packageLevel) {
            this.f11471a = packageLevel;
            return this;
        }

        public Builder serial(String str) {
            this.f11475e = str;
            return this;
        }

        public Builder sver(String str) {
            this.f11477g = str;
            return this;
        }

        public Builder timeoutTime(long j4) {
            if (j4 <= 0) {
                this.f11478h = PAFactory.DEFAULT_TIME_OUT_TIME;
            } else if (j4 > PAFactory.MAX_TIME_OUT_TIME) {
                this.f11478h = PAFactory.DEFAULT_TIME_OUT_TIME;
                return this;
            } else {
                this.f11478h = j4;
            }
            return this;
        }

        public Builder traceListener(PATraceListener pATraceListener) {
            this.f11479i = pATraceListener;
            return this;
        }
    }

    public ConfigManager getConfigManager() {
        return this.mConfigManager;
    }

    public HashMap<String, String> getExtend() {
        return this.mExtend;
    }

    public synchronized PA getPaInstance() {
        PA pa;
        ThreadLocal<PA> threadLocal = sThreadLocal;
        pa = threadLocal.get();
        if (pa == null) {
            pa = new com.efs.sdk.pa.a.c(this.mConfigManager.enableTracer());
            pa.registerPAANRListener(this.mContext, new a(this), this.mTimeOutTime);
            threadLocal.set(pa);
        }
        return pa;
    }

    public EfsReporter getReporter() {
        if (this.mReporter == null) {
            IEfsReporter iEfsReporter = this.mReporterFactory;
            this.mReporter = iEfsReporter != null ? iEfsReporter.getReporter() : null;
        }
        return this.mReporter;
    }

    public String getSerial() {
        return this.mSerial;
    }

    public String getSver() {
        return this.mSver;
    }

    public PATraceListener getTraceListener() {
        return this.mTraceListener;
    }

    private PAFactory(Context context, PackageLevel packageLevel, IEfsReporter iEfsReporter, boolean z3, String str, HashMap<String, String> hashMap, String str2, long j4, PATraceListener pATraceListener) {
        this.mReporterFactory = iEfsReporter;
        this.mSerial = str;
        this.mExtend = hashMap;
        this.mSver = str2;
        this.mContext = context;
        this.mTraceListener = pATraceListener;
        this.mTimeOutTime = j4;
        this.mConfigManager = new ConfigManager(context, packageLevel, iEfsReporter, z3);
    }
}
