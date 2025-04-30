package com.androidquery.service;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.Html;
import com.androidquery.AQuery;
import com.androidquery.callback.AjaxCallback;
import com.androidquery.callback.AjaxStatus;
import com.androidquery.util.AQUtility;
import com.androidquery.util.Constants;
import com.ss.android.download.api.constant.BaseConstants;
import java.util.Locale;
import org.json.JSONObject;
import org.xml.sax.XMLReader;
/* loaded from: classes2.dex */
public class MarketService {
    private static final String BULLET = "•";
    public static final int MAJOR = 2;
    public static final int MINOR = 1;
    public static final int REVISION = 0;
    private static final String SKIP_VERSION = "aqs.skip";
    private static ApplicationInfo ai;
    private static PackageInfo pi;
    private Activity act;
    private AQuery aq;
    private boolean completed;
    private boolean fetch;
    private boolean force;
    private int progress;
    private String rateUrl;
    private String updateUrl;
    private String version;
    private long expire = 720000;
    private int level = 0;
    private Handler handler = new Handler(this, null);
    private String locale = Locale.getDefault().toString();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class Handler implements DialogInterface.OnClickListener, Html.TagHandler {
        private Handler() {
        }

        private void cb(String str, JSONObject jSONObject, AjaxStatus ajaxStatus) {
            if (MarketService.this.completed) {
                return;
            }
            MarketService.this.completed = true;
            MarketService.this.progress = 0;
            MarketService.this.callback(str, jSONObject, ajaxStatus);
        }

        public void detailCb(String str, String str2, AjaxStatus ajaxStatus) {
            if (str2 == null || str2.length() <= 1000) {
                return;
            }
            String queryUrl = MarketService.this.getQueryUrl();
            AjaxCallback ajaxCallback = new AjaxCallback();
            ajaxCallback.url(queryUrl).type(JSONObject.class).handler(this, "marketCb");
            ajaxCallback.param("html", str2);
            MarketService.this.aq.progress(MarketService.this.progress).ajax(ajaxCallback);
        }

        @Override // android.text.Html.TagHandler
        public void handleTag(boolean z3, String str, Editable editable, XMLReader xMLReader) {
            if ("li".equals(str)) {
                if (z3) {
                    editable.append("  ");
                    editable.append(MarketService.BULLET);
                    editable.append("  ");
                    return;
                }
                editable.append("\n");
            }
        }

        public void marketCb(String str, JSONObject jSONObject, AjaxStatus ajaxStatus) {
            if (MarketService.this.act.isFinishing()) {
                return;
            }
            if (jSONObject != null) {
                String optString = jSONObject.optString("status");
                if ("1".equals(optString)) {
                    if (jSONObject.has("dialog")) {
                        cb(str, jSONObject, ajaxStatus);
                    }
                    if (!MarketService.this.fetch && jSONObject.optBoolean("fetch", false) && ajaxStatus.getSource() == 1) {
                        MarketService.this.fetch = true;
                        String optString2 = jSONObject.optString("marketUrl", null);
                        AjaxCallback ajaxCallback = new AjaxCallback();
                        ajaxCallback.url(optString2).type(String.class).handler(this, "detailCb");
                        MarketService.this.aq.progress(MarketService.this.progress).ajax(ajaxCallback);
                        return;
                    }
                    return;
                } else if ("0".equals(optString)) {
                    ajaxStatus.invalidate();
                    return;
                } else {
                    cb(str, jSONObject, ajaxStatus);
                    return;
                }
            }
            cb(str, jSONObject, ajaxStatus);
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            if (i2 == -3) {
                MarketService.setSkipVersion(MarketService.this.act, MarketService.this.version);
            } else if (i2 == -2) {
                MarketService.openUrl(MarketService.this.act, MarketService.this.updateUrl);
            } else if (i2 != -1) {
            } else {
                MarketService.openUrl(MarketService.this.act, MarketService.this.rateUrl);
            }
        }

        /* synthetic */ Handler(MarketService marketService, Handler handler) {
            this();
        }
    }

    public MarketService(Activity activity) {
        this.act = activity;
        this.aq = new AQuery(activity);
        String marketUrl = getMarketUrl();
        this.rateUrl = marketUrl;
        this.updateUrl = marketUrl;
    }

    private Drawable getAppIcon() {
        return getApplicationInfo().loadIcon(this.act.getPackageManager());
    }

    private String getAppId() {
        return getApplicationInfo().packageName;
    }

    private ApplicationInfo getApplicationInfo() {
        if (ai == null) {
            ai = this.act.getApplicationInfo();
        }
        return ai;
    }

    private String getHost() {
        return "https://androidquery.appspot.com";
    }

    private String getMarketUrl() {
        String appId = getAppId();
        return BaseConstants.MARKET_PREFIX + appId;
    }

    private PackageInfo getPackageInfo() {
        if (pi == null) {
            try {
                pi = this.act.getPackageManager().getPackageInfo(getAppId(), 0);
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
            }
        }
        return pi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getQueryUrl() {
        String str = String.valueOf(getHost()) + "/api/market?app=" + getAppId() + "&locale=" + this.locale + "&version=" + getVersion() + "&code=" + getVersionCode() + "&aq=" + Constants.VERSION;
        if (this.force) {
            return String.valueOf(str) + "&force=true";
        }
        return str;
    }

    private static String getSkipVersion(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(SKIP_VERSION, null);
    }

    private String getVersion() {
        return getPackageInfo().versionName;
    }

    private int getVersionCode() {
        return getPackageInfo().versionCode;
    }

    private boolean isActive() {
        return !this.act.isFinishing();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean openUrl(Activity activity, String str) {
        if (str == null) {
            return false;
        }
        try {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean outdated(String str, int i2) {
        if (str.equals(getSkipVersion(this.act))) {
            return false;
        }
        String version = getVersion();
        int versionCode = getVersionCode();
        if (version.equals(str) || versionCode > i2) {
            return false;
        }
        return requireUpdate(version, str, this.level);
    }

    private static String patchBody(String str) {
        return "<small>" + str + "</small>";
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0050 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean requireUpdate(java.lang.String r6, java.lang.String r7, int r8) {
        /*
            r5 = this;
            java.lang.String r0 = "\\."
            boolean r1 = r6.equals(r7)
            r2 = 0
            if (r1 == 0) goto La
            return r2
        La:
            r1 = 1
            java.lang.String[] r6 = r6.split(r0)     // Catch: java.lang.Exception -> L52
            java.lang.String[] r7 = r7.split(r0)     // Catch: java.lang.Exception -> L52
            int r0 = r6.length     // Catch: java.lang.Exception -> L52
            r3 = 3
            if (r0 < r3) goto L51
            int r0 = r7.length     // Catch: java.lang.Exception -> L52
            if (r0 >= r3) goto L1b
            goto L51
        L1b:
            r0 = 2
            if (r8 == 0) goto L23
            if (r8 == r1) goto L32
            if (r8 == r0) goto L41
            return r1
        L23:
            int r8 = r6.length     // Catch: java.lang.Exception -> L52
            int r8 = r8 - r1
            r8 = r6[r8]     // Catch: java.lang.Exception -> L52
            int r4 = r7.length     // Catch: java.lang.Exception -> L52
            int r4 = r4 - r1
            r4 = r7[r4]     // Catch: java.lang.Exception -> L52
            boolean r8 = r8.equals(r4)     // Catch: java.lang.Exception -> L52
            if (r8 != 0) goto L32
            return r1
        L32:
            int r8 = r6.length     // Catch: java.lang.Exception -> L52
            int r8 = r8 - r0
            r8 = r6[r8]     // Catch: java.lang.Exception -> L52
            int r4 = r7.length     // Catch: java.lang.Exception -> L52
            int r4 = r4 - r0
            r0 = r7[r4]     // Catch: java.lang.Exception -> L52
            boolean r8 = r8.equals(r0)     // Catch: java.lang.Exception -> L52
            if (r8 != 0) goto L41
            return r1
        L41:
            int r8 = r6.length     // Catch: java.lang.Exception -> L52
            int r8 = r8 - r3
            r6 = r6[r8]     // Catch: java.lang.Exception -> L52
            int r8 = r7.length     // Catch: java.lang.Exception -> L52
            int r8 = r8 - r3
            r7 = r7[r8]     // Catch: java.lang.Exception -> L52
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Exception -> L52
            if (r6 != 0) goto L50
            return r1
        L50:
            return r2
        L51:
            return r1
        L52:
            r6 = move-exception
            com.androidquery.util.AQUtility.report(r6)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidquery.service.MarketService.requireUpdate(java.lang.String, java.lang.String, int):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setSkipVersion(Context context, String str) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString(SKIP_VERSION, str).commit();
    }

    protected void callback(String str, JSONObject jSONObject, AjaxStatus ajaxStatus) {
        if (jSONObject == null) {
            return;
        }
        String optString = jSONObject.optString("version", "0");
        int optInt = jSONObject.optInt("code", 0);
        AQUtility.debug("version", String.valueOf(getVersion()) + "->" + optString + ":" + getVersionCode() + "->" + optInt);
        AQUtility.debug("outdated", Boolean.valueOf(outdated(optString, optInt)));
        if (this.force || outdated(optString, optInt)) {
            showUpdateDialog(jSONObject);
        }
    }

    public void checkVersion() {
        String queryUrl = getQueryUrl();
        AjaxCallback ajaxCallback = new AjaxCallback();
        ajaxCallback.url(queryUrl).type(JSONObject.class).handler(this.handler, "marketCb").fileCache(!this.force).expire(this.expire);
        this.aq.progress(this.progress).ajax(ajaxCallback);
    }

    public MarketService expire(long j4) {
        this.expire = j4;
        return this;
    }

    public MarketService force(boolean z3) {
        this.force = z3;
        return this;
    }

    public MarketService level(int i2) {
        this.level = i2;
        return this;
    }

    public MarketService locale(String str) {
        this.locale = str;
        return this;
    }

    public MarketService progress(int i2) {
        this.progress = i2;
        return this;
    }

    public MarketService rateUrl(String str) {
        this.rateUrl = str;
        return this;
    }

    protected void showUpdateDialog(JSONObject jSONObject) {
        if (jSONObject != null && this.version == null && isActive()) {
            JSONObject optJSONObject = jSONObject.optJSONObject("dialog");
            String optString = optJSONObject.optString("update", "Update");
            String optString2 = optJSONObject.optString("skip", "Skip");
            String optString3 = optJSONObject.optString("rate", "Rate");
            String optString4 = optJSONObject.optString("wbody", "");
            String optString5 = optJSONObject.optString("title", "Update Available");
            AQUtility.debug("wbody", optString4);
            this.version = jSONObject.optString("version", null);
            AlertDialog create = new AlertDialog.Builder(this.act).setIcon(getAppIcon()).setTitle(optString5).setPositiveButton(optString3, this.handler).setNeutralButton(optString2, this.handler).setNegativeButton(optString, this.handler).create();
            create.setMessage(Html.fromHtml(patchBody(optString4), null, this.handler));
            this.aq.show(create);
        }
    }

    public MarketService updateUrl(String str) {
        this.updateUrl = str;
        return this;
    }
}
