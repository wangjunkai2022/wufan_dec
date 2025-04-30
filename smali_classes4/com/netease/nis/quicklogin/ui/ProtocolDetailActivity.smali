.class public Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;
.super Landroid/app/Activity;
.source "ProtocolDetailActivity.java"


# instance fields
.field private a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    return-object p0
.end method

.method private a()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 5
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 6
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 7
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 9
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 10
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_0
    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    .line 11
    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    const-string v4, "searchBoxJavaBridge_"

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 12
    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 13
    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    const-string v4, "accessibilityTraversal"

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 14
    :cond_1
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 20
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$a;

    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$a;-><init>(Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 21
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b;

    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b;-><init>(Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "url"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    sget v1, Lcom/netease/nis/quicklogin/R$id;->yd_tv_navigation:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/netease/nis/quicklogin/R$layout;->yd_activity_protocol_detail:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    sget p1, Lcom/netease/nis/quicklogin/R$id;->yd_wv_protocol:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    .line 4
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a()V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 7
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 8
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 9
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 10
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
