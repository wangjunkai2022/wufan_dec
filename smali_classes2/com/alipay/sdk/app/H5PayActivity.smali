.class public Lcom/alipay/sdk/app/H5PayActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->a()V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Landroid/webkit/WebViewClient;

    check-cast v0, Lcom/alipay/sdk/app/b;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/alipay/sdk/app/i;->d:Lcom/alipay/sdk/app/i;

    .line 4
    invoke-virtual {v0}, Lcom/alipay/sdk/app/i;->a()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/sdk/app/i;->a(I)Lcom/alipay/sdk/app/i;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/alipay/sdk/app/i;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/h;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/h;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    :cond_0
    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/h;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "url"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/alipay/sdk/util/j;->m(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    return-void

    :cond_0
    const-string v1, "cookie"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 7
    invoke-super {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 8
    invoke-static {p0, v0, p1}, Lcom/alipay/sdk/util/j;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    .line 9
    new-instance p1, Lcom/alipay/sdk/app/b;

    invoke-direct {p1, p0}, Lcom/alipay/sdk/app/b;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Landroid/webkit/WebViewClient;

    .line 10
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void

    .line 11
    :catch_0
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method
