package com.bytedance.sdk.openadsdk.live.core;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.android.livehostapi.platform.IHostTokenInjectionAuth;
import com.bytedance.android.livehostapi.platform.TokenInfo;
import com.bytedance.android.livehostapi.platform.TokenRefreshCallback;
import com.bytedance.sdk.openadsdk.live.ITTLiveTokenInjectionAuth;
import com.bytedance.sdk.openadsdk.live.TTLiveAuthCallback;
import com.bytedance.sdk.openadsdk.live.TTLiveConstants;
import com.bytedance.sdk.openadsdk.live.TTLiveToken;
import java.util.Map;
/* compiled from: TTLiveHostTokenInjectAuthInner.java */
/* loaded from: classes2.dex */
public class b implements IHostTokenInjectionAuth {

    /* renamed from: a  reason: collision with root package name */
    private ITTLiveTokenInjectionAuth f10682a;

    public b(ITTLiveTokenInjectionAuth iTTLiveTokenInjectionAuth) {
        this.f10682a = iTTLiveTokenInjectionAuth;
    }

    public TokenInfo getTokenInfo() {
        ITTLiveTokenInjectionAuth iTTLiveTokenInjectionAuth = this.f10682a;
        if (iTTLiveTokenInjectionAuth == null) {
            return null;
        }
        TTLiveToken tokenInfo = iTTLiveTokenInjectionAuth.getTokenInfo();
        if (tokenInfo == null) {
            return new TokenInfo("", "", "", 0L);
        }
        return new TokenInfo(tokenInfo.name, tokenInfo.openId, tokenInfo.accessToken, tokenInfo.expireAt);
    }

    public boolean isLogin() {
        ITTLiveTokenInjectionAuth iTTLiveTokenInjectionAuth = this.f10682a;
        return iTTLiveTokenInjectionAuth != null && iTTLiveTokenInjectionAuth.isLogin();
    }

    public void onTokenInvalid(@Nullable TokenInfo tokenInfo, @NonNull final TokenRefreshCallback tokenRefreshCallback, @Nullable Activity activity, @Nullable Map<String, String> map) {
        if (this.f10682a == null) {
            return;
        }
        this.f10682a.onTokenInvalid(tokenInfo == null ? null : new TTLiveToken(TTLiveConstants.DOUYIN_AUTH_NAME, tokenInfo.getAccessToken(), tokenInfo.getOpenId(), tokenInfo.getExpireAt(), tokenInfo.getName()), new TTLiveAuthCallback() { // from class: com.bytedance.sdk.openadsdk.live.core.b.1
            @Override // com.bytedance.sdk.openadsdk.live.TTLiveAuthCallback
            public void onAuth(TTLiveToken tTLiveToken) {
                tokenRefreshCallback.onSuccess(new TokenInfo(tTLiveToken.name, tTLiveToken.openId, tTLiveToken.accessToken, tTLiveToken.expireAt));
            }

            @Override // com.bytedance.sdk.openadsdk.live.TTLiveAuthCallback
            public void onFailed(Throwable th) {
                tokenRefreshCallback.onFailed(th);
            }
        }, activity, map);
    }
}
