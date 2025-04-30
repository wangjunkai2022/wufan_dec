.class public Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;
.super Lcom/mob/tools/FakeActivity;
.source "SinaWeiboWebAuthOfficial.java"


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
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->appkey:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->redirectUrl:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->permissions:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->loginManager()V

    return-void
.end method

.method static synthetic access$100(Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method private loginManager()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboWebAuthOfficial onCreate "

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->iwbapi:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    new-instance v2, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$2;

    invoke-direct {v2, p0}, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$2;-><init>(Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;)V

    invoke-interface {v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->authorizeWeb(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WbAuthListener;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

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


# virtual methods
.method public onCreate()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onCreate()V

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboWebAuthOfficial onCreate "

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 3
    :try_start_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 7
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

    .line 8
    :goto_0
    :try_start_1
    new-instance v1, Lcom/sina/weibo/sdk/auth/AuthInfo;

    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->appkey:Ljava/lang/String;

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->redirectUrl:Ljava/lang/String;

    iget-object v5, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->permissions:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sina/weibo/sdk/openapi/WBAPIFactory;->createWBAPI(Landroid/content/Context;)Lcom/sina/weibo/sdk/openapi/IWBAPI;

    move-result-object v2

    iput-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->iwbapi:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    .line 10
    iget-object v3, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    new-instance v4, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$1;

    invoke-direct {v4, p0}, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$1;-><init>(Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;)V

    invoke-interface {v2, v3, v1, v4}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->registerApp(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/openapi/SdkListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 11
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

    const-string v1, "SinaWeiboWebAuthOfficial"

    invoke-virtual {v2, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 12
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 13
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "SinaWeibo SDK init failed"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 15
    :goto_1
    :try_start_2
    sget-boolean v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->initFlag:Z

    if-eqz v0, :cond_1

    .line 16
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->loginManager()V

    .line 17
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const-string v1, "SinaWeiboWebAuthOfficial onCreate loginManager() "

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 18
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_2

    .line 19
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authorize catch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v2, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 21
    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SinaWeiboWebAuthOfficial onCreate catch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    .line 22
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

    const-string v1, "SinaWeiboWebAuthOfficial onDestroy"

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

    const-string v1, "SinaWeiboWebAuthOfficial onPause"

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

    const-string v1, "SinaWeiboWebAuthOfficial onResume"

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

    const-string v1, "SinaWeiboWebAuthOfficial onStop"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    return-void
.end method
