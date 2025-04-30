.class public Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;
.super Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;
.source "WebAuthorizeActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcn/sharesdk/framework/authorize/ResizeLayout$OnResizeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$a;
    }
.end annotation


# static fields
.field protected static final MSG_AUTH_URL_GOT:I = 0x2


# instance fields
.field private adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

.field protected listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private rv:Lcn/sharesdk/framework/authorize/RegisterView;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private getAdapter()Lcn/sharesdk/framework/authorize/AuthorizeAdapter;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    .line 2
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 4
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "AuthorizeAdapter"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 7
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "Adapter"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 11
    instance-of v2, v1, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-nez v2, :cond_3

    return-object v0

    .line 12
    :cond_3
    check-cast v1, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_4
    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 13
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public OnResize(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onResize(IIII)V

    :cond_0
    return-void
.end method

.method protected getBodyView()Lcn/sharesdk/framework/authorize/RegisterView;
    .locals 5

    .line 1
    new-instance v0, Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/authorize/RegisterView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$1;-><init>(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->webView:Landroid/webkit/WebView;

    .line 4
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 6
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 10
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 11
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 12
    :cond_0
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 13
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 14
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 15
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->helper:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1, p0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)Lcn/sharesdk/framework/authorize/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 17
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "GooglePlusAuthorizeWebviewClient"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 18
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "GooglePlus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const-string v3, "YoutubeAuthorizeWebviewClient"

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mozilla/5.0 (Linux; Android 5.1; m2 note Build/LMY47D) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "AppleWebKit/537.36 (KHTML, like Gecko) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Version/4.0 "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Chrome/40.0.2214.127 "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Mobile Safari/537.36"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    iget-object v3, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 25
    :cond_5
    iget-object v2, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 26
    new-instance v1, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$2;

    invoke-direct {v1, p0}, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$2;-><init>(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;)V

    .line 27
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    const-string v2, ")"

    if-ne v0, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->helper:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network error (platform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->helper:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 9
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->helper:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Authorize URL is empty (platform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->helper:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->getBodyView()Lcn/sharesdk/framework/authorize/RegisterView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    .line 3
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/authorize/ResizeLayout;->a(Lcn/sharesdk/framework/authorize/ResizeLayout$OnResizeListener;)V

    .line 4
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->isNotitle()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Z)V

    .line 5
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->d()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setBodyView(Landroid/widget/RelativeLayout;)V

    .line 6
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setWebView(Landroid/webkit/WebView;)V

    .line 7
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setTitleView(Lcn/sharesdk/framework/TitleLayout;)V

    .line 9
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->helper:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    iget-object v3, p0, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->helper:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v3}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v3

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setPlatformName(Ljava/lang/String;)V

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ssdk_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 12
    invoke-virtual {v0}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ssdk_weibo_oauth_regiseter"

    .line 14
    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 15
    invoke-virtual {v0}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 16
    :catchall_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    .line 17
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onCreate()V

    .line 18
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->isPopUpAnimationDisable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x226

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 21
    new-instance v1, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$a;-><init>(Lcn/sharesdk/framework/authorize/WebAuthorizeActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 22
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->disableScreenCapture()Z

    .line 24
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->rv:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onDestroy()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    :cond_1
    return-void
.end method

.method public onFinish()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onFinish()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 5
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    :cond_2
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/AbstractAuthorizeActivity;->helper:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/mob/tools/FakeActivity;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onPause()V

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onRestart()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onStop()V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mob/tools/FakeActivity;->setActivity(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->getAdapter()Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-direct {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->adapter:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public setAuthorizeListener(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/WebAuthorizeActivity;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-void
.end method
