.class public Lcom/join/android/app/mgsim/wufun/wxapi/WXEntryActivity;
.super Lcn/sharesdk/wechat/utils/WechatHandlerActivity;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# instance fields
.field private a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "wxd3a1cdf74d0c41b3"

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/wxapi/WXEntryActivity;->a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onGetMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 0

    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->getType()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 2
    check-cast p1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Resp;

    .line 3
    iget-object p1, p1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Resp;->extMsg:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  xxxxxxxxxxxxxx"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public onShowMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    .line 3
    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
