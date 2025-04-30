.class final Lcom/alipay/sdk/auth/AuthActivity$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/auth/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/sdk/auth/AuthActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/sdk/auth/AuthActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/sdk/auth/AuthActivity;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/alipay/sdk/auth/AuthActivity$b;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {p1}, Lcom/alipay/sdk/auth/AuthActivity;->p(Lcom/alipay/sdk/auth/AuthActivity;)V

    .line 2
    iget-object p1, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {p1}, Lcom/alipay/sdk/auth/AuthActivity;->o(Lcom/alipay/sdk/auth/AuthActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {p2}, Lcom/alipay/sdk/auth/AuthActivity;->n(Lcom/alipay/sdk/auth/AuthActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/auth/AuthActivity;->m(Lcom/alipay/sdk/auth/AuthActivity;)V

    .line 2
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/auth/AuthActivity;->o(Lcom/alipay/sdk/auth/AuthActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v1}, Lcom/alipay/sdk/auth/AuthActivity;->n(Lcom/alipay/sdk/auth/AuthActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/auth/AuthActivity;->d(Lcom/alipay/sdk/auth/AuthActivity;)Z

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {p1}, Lcom/alipay/sdk/auth/AuthActivity;->k(Lcom/alipay/sdk/auth/AuthActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 3
    iget-object p1, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/alipay/sdk/auth/AuthActivity;->f(Lcom/alipay/sdk/auth/AuthActivity;Z)Z

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    new-instance p3, Lcom/alipay/sdk/auth/g;

    invoke-direct {p3, p0, p2}, Lcom/alipay/sdk/auth/g;-><init>(Lcom/alipay/sdk/auth/AuthActivity$b;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alipays://platformapi/startApp?"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "intent://platformapi/startapp?"

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v0, p2}, Lcom/alipay/sdk/auth/AuthActivity;->e(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    return v3

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 6
    :cond_2
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    const-string v0, "com.eg.android.AlipayGphone"

    invoke-static {p1, v0}, Lcom/alipay/sdk/util/j;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/util/j$a;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 7
    iget-object p1, p1, Lcom/alipay/sdk/util/j$a;->a:[B

    invoke-static {p1}, Lcom/alipay/sdk/util/j;->f([B)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d649"

    .line 8
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p2, "biz"

    const-string v0, "ClientSignError"

    .line 9
    invoke-static {p2, v0, p1}, Lcom/alipay/sdk/app/statistic/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    const-string p1, "intent://platformapi/startapp"

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 13
    iget-object p2, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_5
    return v3
.end method
