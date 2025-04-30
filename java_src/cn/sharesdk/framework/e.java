package cn.sharesdk.framework;

import cn.sharesdk.framework.authorize.AuthorizeHelper;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.SSOAuthorizeActivity;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.authorize.WebAuthorizeActivity;
/* compiled from: PlatformHelper.java */
/* loaded from: classes2.dex */
public abstract class e implements AuthorizeHelper {

    /* renamed from: a  reason: collision with root package name */
    protected Platform f8848a;

    /* renamed from: b  reason: collision with root package name */
    private AuthorizeListener f8849b;

    /* renamed from: c  reason: collision with root package name */
    private SSOListener f8850c;

    public e(Platform platform) {
        this.f8848a = platform;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(SSOListener sSOListener) {
        this.f8850c = sSOListener;
        SSOAuthorizeActivity sSOAuthorizeActivity = new SSOAuthorizeActivity();
        sSOAuthorizeActivity.setSSOListener(sSOListener);
        sSOAuthorizeActivity.show(this);
    }

    protected void b(AuthorizeListener authorizeListener) {
        this.f8849b = authorizeListener;
        WebAuthorizeActivity webAuthorizeActivity = new WebAuthorizeActivity();
        webAuthorizeActivity.setAuthorizeListener(this.f8849b);
        webAuthorizeActivity.show(this);
    }

    public int c() {
        return this.f8848a.getPlatformId();
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public AuthorizeListener getAuthorizeListener() {
        return this.f8849b;
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public Platform getPlatform() {
        return this.f8848a;
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public SSOListener getSSOListener() {
        return this.f8850c;
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public cn.sharesdk.framework.authorize.c getSSOProcessor(SSOAuthorizeActivity sSOAuthorizeActivity) {
        return null;
    }
}
