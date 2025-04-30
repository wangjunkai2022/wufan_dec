package cn.sharesdk.framework.authorize;

import android.content.Intent;
/* loaded from: classes2.dex */
public class SSOAuthorizeActivity extends AbstractAuthorizeActivity {
    private static final int DEFAULT_AUTH_ACTIVITY_CODE = 32973;
    protected SSOListener listener;
    private c sso;

    @Override // com.mob.tools.FakeActivity
    public void onActivityResult(int i2, int i4, Intent intent) {
        this.sso.a(i2, i4, intent);
    }

    @Override // com.mob.tools.FakeActivity
    public void onCreate() {
        c sSOProcessor = this.helper.getSSOProcessor(this);
        this.sso = sSOProcessor;
        if (sSOProcessor == null) {
            finish();
            AuthorizeListener authorizeListener = this.helper.getAuthorizeListener();
            if (authorizeListener != null) {
                authorizeListener.onError(new Throwable("Failed to start SSO for " + this.helper.getPlatform().getName()));
                return;
            }
            return;
        }
        sSOProcessor.a(DEFAULT_AUTH_ACTIVITY_CODE);
        this.sso.a();
    }

    @Override // com.mob.tools.FakeActivity
    public void onNewIntent(Intent intent) {
        this.sso.a(intent);
    }

    public void setSSOListener(SSOListener sSOListener) {
        this.listener = sSOListener;
    }
}
