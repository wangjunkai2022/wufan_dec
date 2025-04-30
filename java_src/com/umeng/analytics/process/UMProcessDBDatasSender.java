package com.umeng.analytics.process;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.pro.n;
import com.umeng.analytics.pro.q;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.noise.ABTest;
import com.umeng.commonsdk.utils.FileLockCallback;
import com.umeng.commonsdk.utils.FileLockUtil;
import com.umeng.commonsdk.utils.UMUtils;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class UMProcessDBDatasSender implements UMLogDataProtocol {
    public static final int UM_PROCESS_CONSTRUCTMESSAGE = 36946;
    public static final int UM_PROCESS_EVENT_KEY = 36945;
    private static ScheduledThreadPoolExecutor executor = new ScheduledThreadPoolExecutor(1);
    private static UMProcessDBDatasSender mInstance;
    private Context mContext;
    private List<Integer> mGeneralBodyIds;
    private FileLockUtil mLockUtil = new FileLockUtil();
    private n.c mPolicySelector;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class ConstructMessageCallback implements FileLockCallback {
        private ConstructMessageCallback() {
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(File file, int i2) {
            return false;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(String str) {
            JSONObject buildEnvelopeWithExtHeader;
            UMProcessDBDatasSender uMProcessDBDatasSender = UMProcessDBDatasSender.this;
            JSONObject jSONObject = uMProcessDBDatasSender.setupReportData(UMEnvelopeBuild.maxDataSpace(uMProcessDBDatasSender.mContext));
            if (jSONObject != null && jSONObject.length() >= 1) {
                JSONObject jSONObject2 = (JSONObject) jSONObject.opt("header");
                JSONObject jSONObject3 = (JSONObject) jSONObject.opt("content");
                if (UMProcessDBDatasSender.this.mContext != null && jSONObject2 != null && jSONObject3 != null && (buildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(UMProcessDBDatasSender.this.mContext, jSONObject2, jSONObject3)) != null) {
                    UMProcessDBDatasSender.this.removeCacheData(buildEnvelopeWithExtHeader);
                }
            }
            return true;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(String str, Object obj) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class ReplaceCallback implements FileLockCallback {
        private ReplaceCallback() {
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(File file, int i2) {
            return false;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(String str) {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            if (str.startsWith(a.f60941c)) {
                str = str.replaceFirst(a.f60941c, "");
            }
            UMProcessDBHelper.getInstance(UMProcessDBDatasSender.this.mContext).deleteEventDatas(str.replace(a.f60942d, ""), null, null);
            return true;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(String str, Object obj) {
            return false;
        }
    }

    private UMProcessDBDatasSender() {
    }

    private void constructMessage() {
        if (defconProcesserHandler() != 0) {
            return;
        }
        this.mLockUtil.doFileOperateion(b.b(this.mContext, ""), new ConstructMessageCallback());
    }

    private int defconProcesserHandler() {
        int a4 = q.a().a(this.mContext);
        if (a4 != 0) {
            try {
                DBFileTraversalUtil.traverseDBFiles(b.a(this.mContext), new ReplaceCallback(), null);
            } catch (Exception unused) {
            }
            UMProcessDBHelper.getInstance(this.mContext).deleteEventDatas(a.f60946h, null, null);
        }
        return a4;
    }

    private JSONObject generalBody() {
        JSONObject jSONObject = null;
        try {
            if (this.mGeneralBodyIds == null) {
                this.mGeneralBodyIds = new ArrayList();
            }
            jSONObject = UMProcessDBHelper.getInstance(this.mContext).readMainEvents(UMEnvelopeBuild.maxDataSpace(this.mContext) - 2000, this.mGeneralBodyIds);
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(this.mContext);
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString("userlevel", "");
                if (!TextUtils.isEmpty(string)) {
                    jSONObject.put("userlevel", string);
                }
            }
            String[] a4 = com.umeng.analytics.c.a(this.mContext);
            if (a4 != null && !TextUtils.isEmpty(a4[0]) && !TextUtils.isEmpty(a4[1])) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(com.umeng.analytics.pro.c.M, a4[0]);
                jSONObject2.put(com.umeng.analytics.pro.c.N, a4[1]);
                if (jSONObject2.length() > 0) {
                    jSONObject.put(com.umeng.analytics.pro.c.L, jSONObject2);
                }
            }
            if (ABTest.getService(this.mContext).isInTest()) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(ABTest.getService(this.mContext).getTestName(), ABTest.getService(this.mContext).getGroupInfo());
                jSONObject.put(com.umeng.analytics.pro.c.K, jSONObject3);
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private JSONObject generalHeader() {
        String str;
        JSONObject readVersionInfoFromColumId;
        String str2;
        JSONObject jSONObject = new JSONObject();
        try {
            if (AnalyticsConfig.mWrapperType != null && (str2 = AnalyticsConfig.mWrapperVersion) != null) {
                jSONObject.put("wrapper_version", str2);
                jSONObject.put("wrapper_type", AnalyticsConfig.mWrapperType);
            }
            jSONObject.put(com.umeng.analytics.pro.c.f60632i, AnalyticsConfig.getVerticalType(this.mContext));
            String str3 = "9.4.0";
            if (AnalyticsConfig.getVerticalType(this.mContext) == 1) {
                String gameSdkVersion = AnalyticsConfig.getGameSdkVersion(this.mContext);
                if (!TextUtils.isEmpty(gameSdkVersion)) {
                    str3 = gameSdkVersion;
                }
                jSONObject.put("sdk_version", str3);
            } else {
                jSONObject.put("sdk_version", "9.4.0");
            }
            String str4 = "";
            if (this.mGeneralBodyIds.size() <= 0 || (readVersionInfoFromColumId = UMProcessDBHelper.getInstance(this.mContext).readVersionInfoFromColumId(this.mGeneralBodyIds.get(0))) == null) {
                str = "";
            } else {
                str4 = readVersionInfoFromColumId.optString("__av");
                str = readVersionInfoFromColumId.optString("__vc");
            }
            if (TextUtils.isEmpty(str4)) {
                jSONObject.put("app_version", UMUtils.getAppVersionName(this.mContext));
            } else {
                jSONObject.put("app_version", str4);
            }
            if (TextUtils.isEmpty(str)) {
                jSONObject.put("version_code", UMUtils.getAppVersionCode(this.mContext));
            } else {
                jSONObject.put("version_code", str);
            }
            String MD5 = HelperUtils.MD5(AnalyticsConfig.getSecretKey(this.mContext));
            if (!TextUtils.isEmpty(MD5)) {
                jSONObject.put("secret", MD5);
            }
            String imprintProperty = UMEnvelopeBuild.imprintProperty(this.mContext, "pr_ve", null);
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(this.mContext);
            jSONObject.put(com.umeng.analytics.pro.c.f60635l, UMEnvelopeBuild.imprintProperty(this.mContext, "pr_ve", null));
            jSONObject.put(com.umeng.analytics.pro.c.f60636m, UMEnvelopeBuild.imprintProperty(this.mContext, "ud_da", null));
            jSONObject.put(com.umeng.analytics.pro.c.ah, "1.0.0");
            if (TextUtils.isEmpty(imprintProperty)) {
                jSONObject.put(com.umeng.analytics.pro.c.f60635l, sharedPreferences.getString("vers_pre_version", "0"));
                jSONObject.put(com.umeng.analytics.pro.c.f60636m, sharedPreferences.getString("vers_date", new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()))));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    public static UMProcessDBDatasSender getInstance(Context context) {
        if (mInstance == null) {
            synchronized (UMProcessDBDatasSender.class) {
                if (mInstance == null) {
                    mInstance = new UMProcessDBDatasSender();
                }
            }
        }
        UMProcessDBDatasSender uMProcessDBDatasSender = mInstance;
        uMProcessDBDatasSender.mContext = context;
        return uMProcessDBDatasSender;
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void removeCacheData(Object obj) {
        List<Integer> list;
        JSONObject optJSONObject;
        if (obj == null || (list = this.mGeneralBodyIds) == null || list.size() == 0) {
            return;
        }
        JSONObject jSONObject = (JSONObject) obj;
        if (!jSONObject.has("analytics") || (optJSONObject = jSONObject.optJSONObject("analytics")) == null || optJSONObject.length() <= 0 || !optJSONObject.has("ekv")) {
            return;
        }
        UMProcessDBHelper.getInstance(this.mContext).deleteMainProcessEventDatasByIds(this.mGeneralBodyIds);
        this.mGeneralBodyIds.clear();
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public JSONObject setupReportData(long j4) {
        int a4 = q.a().a(this.mContext);
        JSONObject generalBody = generalBody();
        if (generalBody.length() <= 0) {
            return null;
        }
        JSONObject generalHeader = generalHeader();
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (a4 == 3) {
                jSONObject2.put("analytics", new JSONObject());
            } else if (generalBody.length() > 0) {
                jSONObject2.put("analytics", generalBody);
            }
            if (generalHeader != null && generalHeader.length() > 0) {
                jSONObject.put("header", generalHeader);
            }
            if (jSONObject2.length() > 0) {
                if (jSONObject2.has("analytics")) {
                    JSONObject optJSONObject = jSONObject2.optJSONObject("analytics");
                    if (optJSONObject.length() == 1 && (optJSONObject.optJSONObject(com.umeng.analytics.pro.c.L) != null || !TextUtils.isEmpty(optJSONObject.optString("userlevel")))) {
                        return null;
                    }
                    if (optJSONObject.length() == 2 && optJSONObject.optJSONObject(com.umeng.analytics.pro.c.L) != null && !TextUtils.isEmpty(optJSONObject.optString("userlevel"))) {
                        return null;
                    }
                }
                jSONObject.put("content", jSONObject2);
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void workEvent(Object obj, int i2) {
        if (UMUtils.isMainProgress(this.mContext)) {
            switch (i2) {
                case UM_PROCESS_EVENT_KEY /* 36945 */:
                    executor.schedule(new Runnable() { // from class: com.umeng.analytics.process.UMProcessDBDatasSender.1
                        @Override // java.lang.Runnable
                        public void run() {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> call processDBToMain start.");
                            UMProcessDBHelper.getInstance(UMProcessDBDatasSender.this.mContext).processDBToMain();
                        }
                    }, 5L, TimeUnit.SECONDS);
                    return;
                case UM_PROCESS_CONSTRUCTMESSAGE /* 36946 */:
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> recv UM_PROCESS_CONSTRUCTMESSAGE msg.");
                    constructMessage();
                    return;
                default:
                    return;
            }
        }
    }
}
