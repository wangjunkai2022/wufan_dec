package com.netease.nis.quicklogin.listener;

import org.json.JSONObject;
/* loaded from: classes4.dex */
public abstract class QuickLoginTokenListener implements QuickLoginListener {
    public void onCancelGetToken() {
    }

    @Override // com.netease.nis.quicklogin.listener.QuickLoginListener
    public boolean onExtendMsg(JSONObject jSONObject) {
        return true;
    }

    @Override // com.netease.nis.quicklogin.listener.QuickLoginListener
    public void onGetMobileNumberError(String str, String str2) {
    }

    @Override // com.netease.nis.quicklogin.listener.QuickLoginListener
    public void onGetMobileNumberSuccess(String str, String str2) {
    }
}
