.class public Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;
.super Lcom/mob/tools/FakeActivity;
.source "SinaWeiboOfficialAuth.java"


# instance fields
.field private appkey:Ljava/lang/String;

.field private iwbapi:Lcom/sina/weibo/sdk/openapi/IWBAPI;

.field private listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private permissions:Ljava/lang/String;

.field private redirectUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->appkey:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->redirectUrl:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->permissions:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->loginManager()V

    return-void
.end method

.method static synthetic access$100(Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->showWebAuthActivity(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method

.method private join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1
    array-length v1, p1

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, ""

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    sub-int v1, p4, p3

    if-gtz v1, :cond_2

    return-object v0

    .line 2
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    aget-object v1, p1, p3

    if-eqz v1, :cond_3

    .line 4
    aget-object v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p4, :cond_4

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    aget-object v1, p1, p3

    if-eqz v1, :cond_3

    .line 7
    aget-object v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loginManager()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboOfficialAuth loginManager"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->iwbapi:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    new-instance v2, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$2;

    invoke-direct {v2, p0}, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$2;-><init>(Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;)V

    invoke-interface {v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->authorizeClient(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WbAuthListener;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_1

    .line 5
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "SinaWeibo SDK init failed"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    :goto_0
    return-void
.end method

.method private showWebAuthActivity(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 4

    .line 1
    new-instance v0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->appkey:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->redirectUrl:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->permissions:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    const-string v0, "SinaWeibo SDK Web showWebAuthActivity "

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/mob/tools/FakeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->iwbapi:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->authorizeCallback(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 4
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    const-string p2, "SinaWeiboOfficialAuth onActivityResult"

    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onCreate()V
    .locals 6

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboOfficialAuth onCreate "

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 6
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SinaWeiboOfficialAuth onCreate exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    .line 7
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_0

    if-eqz v1, :cond_0

    .line 8
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "SinaWeibo SDK init failed"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 10
    :goto_0
    :try_start_1
    new-instance v1, Lcom/sina/weibo/sdk/auth/AuthInfo;

    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->appkey:Ljava/lang/String;

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->redirectUrl:Ljava/lang/String;

    iget-object v5, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->permissions:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sina/weibo/sdk/openapi/WBAPIFactory;->createWBAPI(Landroid/content/Context;)Lcom/sina/weibo/sdk/openapi/IWBAPI;

    move-result-object v2

    iput-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->iwbapi:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    .line 12
    iget-object v3, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    new-instance v4, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$1;

    invoke-direct {v4, p0}, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$1;-><init>(Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;)V

    invoke-interface {v2, v3, v1, v4}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->registerApp(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/openapi/SdkListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 13
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate AuthInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "SinaWeiboOfficialAuth"

    invoke-virtual {v2, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 14
    :goto_1
    :try_start_2
    sget-boolean v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->initFlag:Z

    if-eqz v0, :cond_1

    .line 15
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->loginManager()V

    .line 16
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboOfficialAuth onCreate loginManager() "

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 17
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_2

    .line 18
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authorize catch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v2, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 20
    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SinaWeiboOfficialAuth onCreate catch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboOfficialAuth onDestroy"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onPause()V

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboOfficialAuth onPause"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onResume()V

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboOfficialAuth onResume"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onStop()V

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboOfficialAuth onStop"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    return-void
.end method
