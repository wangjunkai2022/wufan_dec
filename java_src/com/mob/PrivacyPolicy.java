package com.mob;

import android.os.Build;
import android.os.Handler;
import android.os.LocaleList;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import com.facebook.imagepipeline.producers.s;
import com.mob.commons.MobProductCollector;
import com.mob.commons.c;
import com.mob.commons.n;
import com.mob.commons.w;
import com.mob.tools.MobLog;
import com.mob.tools.log.NLog;
import com.mob.tools.network.KVPair;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.proguard.ClassKeeper;
import com.mob.tools.proguard.PublicMemberKeeper;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.UIHandler;
import com.mob.tools.utils.d;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONObject;
@Deprecated
/* loaded from: classes4.dex */
public class PrivacyPolicy implements ClassKeeper, PublicMemberKeeper, Serializable {
    public static final int POLICY_TYPE_TXT = 2;
    public static final int POLICY_TYPE_URL = 1;

    /* renamed from: a  reason: collision with root package name */
    private String f52704a;

    /* renamed from: b  reason: collision with root package name */
    private String f52705b;

    /* renamed from: c  reason: collision with root package name */
    private int f52706c;

    /* renamed from: d  reason: collision with root package name */
    private long f52707d;

    /* loaded from: classes4.dex */
    public interface OnPolicyListener extends ClassKeeper, PublicMemberKeeper {
        void onComplete(PrivacyPolicy privacyPolicy);

        void onFailure(Throwable th);
    }

    public PrivacyPolicy() {
    }

    private String a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String appkey = MobSDK.getAppkey();
            String packageName = DeviceHelper.getInstance(MobSDK.getContext()).getPackageName();
            return new String(Data.AES128Decode(Data.rawMD5(appkey + ":" + packageName + ":" + getTimestamp()), Base64.decode(str, 0)), "UTF-8");
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    public static PrivacyPolicy getPrivacyPolicy(int i2, Locale locale) throws Throwable {
        int b4;
        if (i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException("Parameter 'type' should be either 1 or 2");
        }
        if (locale == null) {
            if (Build.VERSION.SDK_INT >= 24) {
                LocaleList locales = MobSDK.getContext().getResources().getConfiguration().getLocales();
                if (locales != null && !locales.isEmpty()) {
                    locale = locales.get(0);
                }
            } else {
                locale = MobSDK.getContext().getResources().getConfiguration().locale;
            }
        }
        DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
        String appkey = MobSDK.getAppkey();
        String packageName = deviceHelper.getPackageName();
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>(n.a("004c,chYdh"), String.valueOf(i2)));
        arrayList.add(new KVPair<>(n.a("006RceWddAci$hWch"), appkey));
        arrayList.add(new KVPair<>(n.a("006ZceQddd1ciee"), packageName));
        if (i2 == 1) {
            b4 = w.a().b("key_policy_url_related_version", 0);
        } else {
            b4 = w.a().b("key_policy_txt_related_version", 0);
        }
        arrayList.add(new KVPair<>("ppVersion", String.valueOf(b4)));
        arrayList.add(new KVPair<>("language", locale.toString()));
        NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
        networkTimeOut.readTimout = s.f13217g;
        networkTimeOut.connectionTimeout = 10000;
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>(n.a("013 ddef2h(cgghdfZghOcjUc cd.c(ch"), MobProductCollector.getUserIdentity()));
        String httpGet = new NetworkHelper().httpGet(c.a(c.f52905b) + "/privacy/policy", arrayList, arrayList2, networkTimeOut);
        NLog mobLog = MobLog.getInstance();
        mobLog.d("Response: " + httpGet, new Object[0]);
        Hashon hashon = new Hashon();
        HashMap fromJson = hashon.fromJson(httpGet);
        if (fromJson != null) {
            if ("200".equals(String.valueOf(fromJson.get(n.a("004:cfdb0gh"))))) {
                Object obj = fromJson.get(n.a("004gPce;cBce"));
                if (obj != null) {
                    String fromObject = hashon.fromObject(obj);
                    if (!TextUtils.isEmpty(fromObject)) {
                        return new PrivacyPolicy(fromObject);
                    }
                    throw new Throwable("Response is illegal: " + httpGet);
                }
                throw new Throwable("Response is illegal: " + httpGet);
            }
            throw new Throwable("Response code is not 200: " + httpGet);
        }
        throw new Throwable("Response is illegal: " + httpGet);
    }

    @Deprecated
    public static void getPrivacyPolicyAsync(int i2, OnPolicyListener onPolicyListener) {
        getPrivacyPolicyAsync(i2, null, onPolicyListener);
    }

    public String getContent() {
        return this.f52705b;
    }

    public int getPpVersion() {
        return this.f52706c;
    }

    public long getTimestamp() {
        return this.f52707d;
    }

    public String getTitle() {
        return this.f52704a;
    }

    public void setContent(String str) {
        this.f52705b = str;
    }

    public void setPpVersion(int i2) {
        this.f52706c = i2;
    }

    public void setTimestamp(long j4) {
        this.f52707d = j4;
    }

    public void setTitle(String str) {
        this.f52704a = str;
    }

    public PrivacyPolicy(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            setTimestamp(jSONObject.optLong(n.a("009cMcd1khAef'c'ce*kd")));
            setTitle(a(jSONObject.optString("title")));
            setContent(a(jSONObject.optString(n.a("007PcfdbcjNch(cj[c"))));
            String a4 = a(jSONObject.optString("ppVersion"));
            if (TextUtils.isEmpty(a4)) {
                return;
            }
            setPpVersion(Integer.parseInt(a4.trim()));
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
    }

    @Deprecated
    public static void getPrivacyPolicyAsync(final int i2, final Locale locale, final OnPolicyListener onPolicyListener) {
        if (onPolicyListener != null) {
            new d() { // from class: com.mob.PrivacyPolicy.1
                @Override // com.mob.tools.utils.d
                protected void a() {
                    try {
                        final PrivacyPolicy privacyPolicy = PrivacyPolicy.getPrivacyPolicy(i2 == 1 ? 1 : 2, locale);
                        UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: com.mob.PrivacyPolicy.1.1
                            @Override // android.os.Handler.Callback
                            public boolean handleMessage(Message message) {
                                onPolicyListener.onComplete(privacyPolicy);
                                return false;
                            }
                        });
                    } catch (Throwable th) {
                        try {
                            MobLog.getInstance().d(th);
                            UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: com.mob.PrivacyPolicy.1.2
                                @Override // android.os.Handler.Callback
                                public boolean handleMessage(Message message) {
                                    onPolicyListener.onFailure(th);
                                    return false;
                                }
                            });
                        } catch (Throwable th2) {
                            MobLog.getInstance().d(th2);
                            onPolicyListener.onFailure(th);
                        }
                    }
                }
            }.start();
        }
    }
}
