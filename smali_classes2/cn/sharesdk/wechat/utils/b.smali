.class public Lcn/sharesdk/wechat/utils/b;
.super Lcn/sharesdk/wechat/utils/m;
.source "AuthReq.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcn/sharesdk/wechat/utils/a;


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

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/m;->a(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_sendauth_req_scope"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/b;->a:Ljava/lang/String;

    const-string v0, "_wxapi_sendauth_req_state"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/b;->b:Ljava/lang/String;

    const-string v0, "_wxapi_sendauth_req_ext_data"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/b;->c:Ljava/lang/String;

    .line 5
    new-instance v0, Lcn/sharesdk/wechat/utils/a;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/a;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/b;->d:Lcn/sharesdk/wechat/utils/a;

    .line 6
    invoke-virtual {v0, p1}, Lcn/sharesdk/wechat/utils/a;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/m;->b(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/b;->a:Ljava/lang/String;

    const-string v1, "_wxapi_sendauth_req_scope"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/b;->b:Ljava/lang/String;

    const-string v1, "_wxapi_sendauth_req_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/b;->c:Ljava/lang/String;

    const-string v1, "_wxapi_sendauth_req_ext_data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/b;->d:Lcn/sharesdk/wechat/utils/a;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcn/sharesdk/wechat/utils/a;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 5

    .line 7
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/b;->a:Ljava/lang/String;

    const-string v1, "MicroMsg.SDK.SendAuth.Req"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/sharesdk/wechat/utils/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x400

    if-gt v0, v4, :cond_1

    .line 8
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 9
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "checkArgs fail, state is invalid"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    :cond_0
    return v2

    .line 10
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "checkArgs fail, scope is invalid"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3
.end method
