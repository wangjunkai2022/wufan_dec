.class public final Lcom/sina/weibo/sdk/web/a/a;
.super Lcom/sina/weibo/sdk/web/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/web/a;Lcom/sina/weibo/sdk/web/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/web/a/b;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/web/a;Lcom/sina/weibo/sdk/web/b/b;)V

    return-void
.end method

.method private l(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/a/b;->aA:Lcom/sina/weibo/sdk/web/b/b;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/web/b/b;->u()Lcom/sina/weibo/sdk/web/WebData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/web/WebData;->a()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/sina/weibo/sdk/b/e;->g(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "access_token"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/web/a/b;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/a/b;->aA:Lcom/sina/weibo/sdk/web/b/b;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/web/b/b;->u()Lcom/sina/weibo/sdk/web/WebData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/web/WebData;->a()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/a/b;->aA:Lcom/sina/weibo/sdk/web/b/b;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/web/b/b;->u()Lcom/sina/weibo/sdk/web/WebData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/web/WebData;->r()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/a/b;->ax:Lcom/sina/weibo/sdk/auth/b;

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/auth/b;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/auth/WbAuthListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/web/a/b;->aB:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    if-eqz v0, :cond_2

    .line 8
    invoke-static {p2}, Lcom/sina/weibo/sdk/b/e;->g(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    const-string v1, "error"

    .line 9
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_code"

    .line 10
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error_description"

    .line 11
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-static {p2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object p2

    .line 14
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/a/b;->ay:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/sina/weibo/sdk/auth/AccessTokenHelper;->writeAccessToken(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 15
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/a/b;->aB:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    invoke-interface {v0, p2}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onComplete(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/sina/weibo/sdk/web/a/b;->aB:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    new-instance v1, Lcom/sina/weibo/sdk/common/UiError;

    invoke-direct {v1, v0, v2, v3}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onError(Lcom/sina/weibo/sdk/common/UiError;)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object p2, p0, Lcom/sina/weibo/sdk/web/a/b;->aB:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    new-instance v1, Lcom/sina/weibo/sdk/common/UiError;

    const-string v2, "bundle is null"

    const-string v3, "parse url error"

    invoke-direct {v1, v0, v2, v3}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onError(Lcom/sina/weibo/sdk/common/UiError;)V

    .line 18
    :goto_0
    iget-object p2, p0, Lcom/sina/weibo/sdk/web/a/b;->ax:Lcom/sina/weibo/sdk/auth/b;

    invoke-virtual {p2, p1}, Lcom/sina/weibo/sdk/auth/b;->b(Ljava/lang/String;)V

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/a/b;->az:Lcom/sina/weibo/sdk/web/a;

    if-eqz p1, :cond_3

    .line 20
    invoke-interface {p1}, Lcom/sina/weibo/sdk/web/a;->q()V

    :cond_3
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/web/a/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/sina/weibo/sdk/web/a/b;->q()V

    .line 2
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/a/b;->aA:Lcom/sina/weibo/sdk/web/b/b;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/web/b/b;->u()Lcom/sina/weibo/sdk/web/WebData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/web/WebData;->r()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/a/b;->ax:Lcom/sina/weibo/sdk/auth/b;

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/auth/b;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/auth/WbAuthListener;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/web/a/b;->aB:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onCancel()V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/a/b;->ax:Lcom/sina/weibo/sdk/auth/b;

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/auth/b;->b(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/a/b;->az:Lcom/sina/weibo/sdk/web/a;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/sina/weibo/sdk/web/a;->q()V

    :cond_2
    return-void
.end method

.method public final s()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/web/a/a;->q()V

    const/4 v0, 0x1

    return v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 2
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/web/a/a;->l(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lcom/sina/weibo/sdk/web/a/a;->l(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
