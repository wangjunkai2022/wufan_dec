.class public Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;
.super Landroid/app/Activity;
.source "AppPrivacyPolicyActivity.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/webkit/WebView;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->d:J

    return-wide v0
.end method

.method public static a(Landroid/app/Activity;J)V
    .locals 2

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "app_info_id"

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/webkit/WebView;)V
    .locals 1

    :try_start_0
    const-string v0, "searchBoxJavaBridge_"

    .line 11
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    .line 12
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 13
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private a()Z
    .locals 4

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "app_info_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->c:J

    .line 6
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/c;->a()Lcom/ss/android/downloadlib/addownload/compliance/c;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/compliance/c;->a(J)Lcom/ss/android/downloadlib/addownload/b/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 7
    :cond_0
    iget-wide v1, v0, Lcom/ss/android/downloadlib/addownload/b/b;->b:J

    iput-wide v1, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->d:J

    .line 8
    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/b;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->e:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad_privacy_backup_url"

    const-string v2, "https://sf6-ttcdn-tos.pstatp.com/obj/ad-tetris-site/personal-privacy-page.html"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->e:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private b()V
    .locals 5

    .line 1
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->iv_privacy_back:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->a:Landroid/widget/ImageView;

    .line 2
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->privacy_webview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->b:Landroid/webkit/WebView;

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity$1;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v1, 0x10

    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v2, v4, :cond_0

    .line 10
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 15
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 16
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 17
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 18
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity$2;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity$2;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 19
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->b:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->a(Landroid/webkit/WebView;)V

    .line 20
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 21
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->d:J

    const-string v2, "lp_app_privacy_click_close"

    invoke-static {v2, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(Ljava/lang/String;J)V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/bytedance/sdk/openadsdk/R$layout;->ttdownloader_activity_app_privacy_policy:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->b()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
