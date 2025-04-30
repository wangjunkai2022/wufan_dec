package com.sdk.Unicorn.mobile.manager.oauth.login.cucc;

import android.content.Context;
import com.sdk.Unicorn.base.api.CallBack;
import com.sdk.Unicorn.base.framework.bean.OauthResultMode;
import com.sdk.Unicorn.base.module.manager.SDKManager;
import com.sdk.f.g;
import com.sdk.x.d;
/* loaded from: classes4.dex */
public class UiOauthManager extends SDKManager {
    public static Boolean isDebug = Boolean.valueOf(g.f56647b);
    public static volatile UiOauthManager manager;
    public String TAG = UiOauthManager.class.getSimpleName();
    public boolean cancel;
    public Context mContext;
    public OauthResultMode resultMode;

    public UiOauthManager(Context context) {
        this.mContext = context;
    }

    private <T> void dispatchHandler(int i2, final CallBack<T> callBack) {
        new d(this.mContext, i2, new CallBack<T>() { // from class: com.sdk.Unicorn.mobile.manager.oauth.login.cucc.UiOauthManager.1
            @Override // com.sdk.Unicorn.base.api.CallBack
            public void onFailed(int i4, int i5, String str, String str2) {
                StringBuilder sb = new StringBuilder();
                sb.append("onFailed code--->");
                sb.append(i4);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onFailed status--->");
                sb2.append(i5);
                callBack.onFailed(i4, i5, str, str2);
            }

            @Override // com.sdk.Unicorn.base.api.CallBack
            public void onSuccess(int i4, String str, int i5, T t3, String str2) {
                StringBuilder sb = new StringBuilder();
                sb.append("onSuccess code--->");
                sb.append(i4);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onSuccess msg--->");
                sb2.append(str);
                StringBuilder sb3 = new StringBuilder();
                sb3.append("onSuccess status--->");
                sb3.append(i5);
                StringBuilder sb4 = new StringBuilder();
                sb4.append("onSuccess response--->");
                sb4.append(t3);
                if (i4 == 0) {
                    callBack.onSuccess(i4, str, i5, t3, str2);
                }
                if (i4 == 1) {
                    callBack.onSuccess(i4, str, i5, null, str2);
                }
            }
        }).a(0);
    }

    public static UiOauthManager getInstance(Context context) {
        if (manager == null) {
            synchronized (UiOauthManager.class) {
                if (manager == null) {
                    manager = new UiOauthManager(context);
                }
            }
        }
        return manager;
    }

    public void cancel() {
        this.cancel = true;
    }

    public <T> void login(int i2, CallBack<T> callBack) {
        new d(this.mContext, i2, callBack).a(0);
    }
}
