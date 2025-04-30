.class public Lcn/sharesdk/wechat/utils/g;
.super Lcn/sharesdk/wechat/utils/m;
.source "SubscribeMessageReq.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


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

    const/16 v0, 0x12

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/m;->a(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_subscribemessage_req_scene"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/wechat/utils/g;->a:I

    const-string v0, "_wxapi_subscribemessage_req_templateid"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/g;->b:Ljava/lang/String;

    const-string v0, "_wxapi_subscribemessage_req_reserved"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/g;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/m;->b(Landroid/os/Bundle;)V

    .line 2
    iget v0, p0, Lcn/sharesdk/wechat/utils/g;->a:I

    const-string v1, "_wxapi_subscribemessage_req_scene"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/g;->b:Ljava/lang/String;

    const-string v1, "_wxapi_subscribemessage_req_templateid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/g;->c:Ljava/lang/String;

    const-string v1, "_wxapi_subscribemessage_req_reserved"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 5

    .line 5
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/g;->b:Ljava/lang/String;

    const-string v1, "ShareSDK"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/g;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x400

    if-le v0, v4, :cond_0

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "MicroMsg.SDK.SubscribeMessage.ReqcheckArgs fail, templateID is too long"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 8
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 9
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "MicroMsg.SDK.SubscribeMessage.ReqcheckArgs fail, reserved is too long"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    :cond_1
    return v2

    .line 10
    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "MicroMsg.SDK.SubscribeMessage.ReqcheckArgs fail, templateID is null"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3
.end method
