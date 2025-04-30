.class public Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;
.super Lcom/mob/tools/FakeActivity;
.source "DownLoadWebPage.java"


# instance fields
.field private downLoadUrl:Ljava/lang/String;

.field private listener:Lcn/sharesdk/framework/authorize/SSOListener;

.field private mainlayout:Landroid/widget/LinearLayout;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    const-string v0, "http://qzs.qq.com/open/mobile/login/qzsjump.html?sdkv=3.3.0.lite&display=mobile"

    .line 2
    iput-object v0, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->url:Ljava/lang/String;

    const-string v0, "http://app.qq.com/detail/com.tencent.mobileqq?autodownload=1&norecommend=1&rootvia=opensdk"

    .line 3
    iput-object v0, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->downLoadUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->downLoadUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;)Lcn/sharesdk/framework/authorize/SSOListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->listener:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object p0
.end method

.method static synthetic access$102(Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;Lcn/sharesdk/framework/authorize/SSOListener;)Lcn/sharesdk/framework/authorize/SSOListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->listener:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object p1
.end method

.method private initPage(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->initView()V

    .line 2
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage$1;-><init>(Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->mainlayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->webView:Landroid/webkit/WebView;

    .line 5
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x41300000    # 11.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 6
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->mainlayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-direct {p0}, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->initWebView()V

    return-void
.end method

.method private initWebView()V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xa

    if-le v0, v3, :cond_0

    const/16 v3, 0x11

    if-ge v0, v3, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "removeJavascriptInterface"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    iget-object v3, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->webView:Landroid/webkit/WebView;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "searchBoxJavaBridge_"

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v3, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->webView:Landroid/webkit/WebView;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "accessibility"

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v3, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->webView:Landroid/webkit/WebView;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "accessibilityTraversal"

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x2

    .line 9
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 10
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 11
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 12
    iget-object v2, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 13
    iget-object v2, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 14
    iget-object v2, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->webView:Landroid/webkit/WebView;

    invoke-static {v2, v1}, Lcn/sharesdk/framework/utils/m;->a(Landroid/webkit/WebView;Z)V

    .line 15
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    return-void
.end method


# virtual methods
.method public finishOnSuccess()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->initPage(Landroid/app/Activity;)V

    .line 4
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->mainlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->listener:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->listener:Lcn/sharesdk/framework/authorize/SSOListener;

    .line 6
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->finishOnSuccess()V

    :goto_0
    return v1

    .line 7
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/mob/tools/FakeActivity;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setListener(Lcn/sharesdk/framework/authorize/SSOListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->listener:Lcn/sharesdk/framework/authorize/SSOListener;

    return-void
.end method
