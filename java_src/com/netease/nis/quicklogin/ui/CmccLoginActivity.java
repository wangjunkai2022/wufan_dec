package com.netease.nis.quicklogin.ui;

import android.content.Intent;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.cmic.sso.sdk.view.LoginAuthActivity;
import com.netease.nis.quicklogin.helper.UnifyUiConfig;
import com.netease.nis.quicklogin.utils.h;
/* loaded from: classes4.dex */
public class CmccLoginActivity extends LoginAuthActivity {
    private UnifyUiConfig F;

    public void a(UnifyUiConfig unifyUiConfig) {
        this.F = unifyUiConfig;
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        UnifyUiConfig unifyUiConfig = this.F;
        if (unifyUiConfig != null) {
            if (TextUtils.isEmpty(unifyUiConfig.getActivityEnterAnimation()) && TextUtils.isEmpty(this.F.getActivityExitAnimation())) {
                return;
            }
            h a4 = h.a(getApplicationContext());
            overridePendingTransition(a4.a(this.F.getActivityEnterAnimation()), a4.a(this.F.getActivityExitAnimation()));
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i2, int i4, Intent intent) {
        super.onActivityResult(i2, i4, intent);
        try {
            UnifyUiConfig unifyUiConfig = this.F;
            if (unifyUiConfig == null || unifyUiConfig.getActivityResultCallbacks() == null) {
                return;
            }
            this.F.getActivityResultCallbacks().onActivityResult(i2, i4, intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.cmic.sso.sdk.view.LoginAuthActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        UnifyUiConfig unifyUiConfig;
        if (i2 != 4 || (unifyUiConfig = this.F) == null || unifyUiConfig.getBackPressedAvailable()) {
            return super.onKeyUp(i2, keyEvent);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cmic.sso.sdk.view.LoginAuthActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
