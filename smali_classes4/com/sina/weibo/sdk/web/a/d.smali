.class public final Lcom/sina/weibo/sdk/web/a/d;
.super Lcom/sina/weibo/sdk/web/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/web/a;Lcom/sina/weibo/sdk/web/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/web/a/b;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/web/a;Lcom/sina/weibo/sdk/web/b/b;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/web/a/b;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/web/a/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/web/a/b;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final q()V
    .locals 1

    const-string v0, "cancel share!!!"

    .line 1
    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/web/a/b;->o(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/a/b;->az:Lcom/sina/weibo/sdk/web/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/sina/weibo/sdk/web/a;->q()V

    :cond_0
    return-void
.end method

.method public final s()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/web/a/d;->q()V

    const/4 v0, 0x1

    return v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 11
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "sinaweibo://browser/close"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 13
    invoke-static {p1}, Lcom/sina/weibo/sdk/b/e;->h(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "code"

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "msg"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "code is null!!!"

    .line 17
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/web/a/b;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 19
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/web/a/b;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/web/a/b;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "bundle is null!!!"

    .line 21
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/web/a/b;->n(Ljava/lang/String;)V

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/a/b;->az:Lcom/sina/weibo/sdk/web/a;

    if-eqz p1, :cond_3

    .line 23
    invoke-interface {p1}, Lcom/sina/weibo/sdk/web/a;->q()V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "sinaweibo://browser/close"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    invoke-static {p2}, Lcom/sina/weibo/sdk/b/e;->h(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "code"

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "msg"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/web/a/b;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/web/a/b;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "bundle is null!!!"

    .line 8
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/web/a/b;->n(Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/a/b;->az:Lcom/sina/weibo/sdk/web/a;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1}, Lcom/sina/weibo/sdk/web/a;->q()V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
