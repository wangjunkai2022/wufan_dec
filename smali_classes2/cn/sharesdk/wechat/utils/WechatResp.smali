.class public abstract Lcn/sharesdk/wechat/utils/WechatResp;
.super Ljava/lang/Object;
.source "WechatResp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/wechat/utils/WechatResp$ErrCode;
    }
.end annotation


# instance fields
.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_wxapi_baseresp_errcode"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/wechat/utils/WechatResp;->g:I

    const-string v0, "_wxapi_baseresp_errstr"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WechatResp;->h:Ljava/lang/String;

    const-string v0, "_wxapi_baseresp_transaction"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WechatResp;->i:Ljava/lang/String;

    const-string v0, "_wxapi_baseresp_openId"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WechatResp;->j:Ljava/lang/String;

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/sharesdk/wechat/utils/WechatResp;->a()I

    move-result v0

    const-string v1, "_wxapi_command_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    iget v0, p0, Lcn/sharesdk/wechat/utils/WechatResp;->g:I

    const-string v1, "_wxapi_baseresp_errcode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WechatResp;->h:Ljava/lang/String;

    const-string v1, "_wxapi_baseresp_errstr"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WechatResp;->i:Ljava/lang/String;

    const-string v1, "_wxapi_baseresp_transaction"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WechatResp;->j:Ljava/lang/String;

    const-string v1, "_wxapi_baseresp_openId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
