.class public Lcn/sharesdk/wechat/utils/SendMessageReq;
.super Lcn/sharesdk/wechat/utils/m;
.source "SendMessageReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/wechat/utils/SendMessageReq$IWXSceneDataObject;
    }
.end annotation


# instance fields
.field public a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Lcn/sharesdk/wechat/utils/SendMessageReq$IWXSceneDataObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/m;->a(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p1}, Lcn/sharesdk/wechat/utils/WXMediaMessage$a;->a(Landroid/os/Bundle;)Lcn/sharesdk/wechat/utils/WXMediaMessage;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    const-string v0, "_wxapi_sendmessagetowx_req_scene"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->b:I

    const-string v0, "_wxapi_sendmessagetowx_req_use_open_id"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->c:Ljava/lang/String;

    const-string v0, "_scene_data_object_identifie"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/wechat/utils/SendMessageReq$IWXSceneDataObject;

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->d:Lcn/sharesdk/wechat/utils/SendMessageReq$IWXSceneDataObject;

    .line 7
    invoke-interface {v0, p1}, Lcn/sharesdk/wechat/utils/SendMessageReq$IWXSceneDataObject;->unserialize(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/m;->b(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-static {v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage$a;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3
    iget v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->b:I

    const-string v1, "_wxapi_sendmessagetowx_req_scene"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage;->getType()I

    move-result v0

    const-string v1, "_wxapi_sendmessagetowx_req_media_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->c:Ljava/lang/String;

    const-string v1, "_wxapi_sendmessagetowx_req_use_open_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->d:Lcn/sharesdk/wechat/utils/SendMessageReq$IWXSceneDataObject;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_scene_data_object_identifier"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->d:Lcn/sharesdk/wechat/utils/SendMessageReq$IWXSceneDataObject;

    invoke-interface {v0, p1}, Lcn/sharesdk/wechat/utils/SendMessageReq$IWXSceneDataObject;->serialize(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 6

    .line 9
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage;->getType()I

    move-result v0

    .line 10
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    const-string v2, "MicroMsg.SDK.SendMessageToWX.Req"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 11
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "checkArgs fail ,message is null"

    aput-object v3, v1, v4

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v4

    :cond_0
    const/4 v5, 0x6

    if-ne v0, v5, :cond_1

    .line 12
    iget v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->b:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    .line 13
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    check-cast v0, Lcn/sharesdk/wechat/utils/WXFileObject;

    const/high16 v1, 0x1900000

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/WXFileObject;->setContentLengthLimit(I)V

    .line 14
    :cond_1
    iget v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v5, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->c:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 15
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "Send specifiedContact userOpenId can not be null."

    aput-object v3, v1, v4

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v4

    :cond_2
    if-ne v0, v1, :cond_3

    .line 16
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/m;->f:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 17
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "Send specifiedContact openid can not be null."

    aput-object v3, v1, v4

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v4

    :cond_3
    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    .line 18
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage;->a()Z

    move-result v0

    return v0

    .line 19
    :cond_4
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->d:Lcn/sharesdk/wechat/utils/SendMessageReq$IWXSceneDataObject;

    if-nez v0, :cond_5

    .line 20
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, sceneDataObject is null"

    aput-object v3, v1, v4

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v4

    .line 21
    :cond_5
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage;->getType()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 22
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->d:Lcn/sharesdk/wechat/utils/SendMessageReq$IWXSceneDataObject;

    invoke-interface {v0}, Lcn/sharesdk/wechat/utils/SendMessageReq$IWXSceneDataObject;->checkArgs()Z

    move-result v0

    return v0

    .line 23
    :cond_6
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/sharesdk/wechat/utils/SendMessageReq;->d:Lcn/sharesdk/wechat/utils/SendMessageReq$IWXSceneDataObject;

    invoke-interface {v0}, Lcn/sharesdk/wechat/utils/SendMessageReq$IWXSceneDataObject;->checkArgs()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    return v3
.end method
