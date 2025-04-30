.class public abstract Lcn/sharesdk/wechat/utils/m;
.super Ljava/lang/Object;
.source "WechatReq.java"


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


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

    const-string v0, "_wxapi_basereq_transaction"

    .line 1
    invoke-static {p1, v0}, Lcn/sharesdk/wechat/utils/n;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/m;->e:Ljava/lang/String;

    const-string v0, "_wxapi_basereq_openid"

    .line 2
    invoke-static {p1, v0}, Lcn/sharesdk/wechat/utils/n;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/m;->f:Ljava/lang/String;

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/sharesdk/wechat/utils/m;->a()I

    move-result v0

    const-string v1, "_wxapi_command_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/m;->e:Ljava/lang/String;

    const-string v1, "_wxapi_basereq_transaction"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/m;->f:Ljava/lang/String;

    const-string v1, "_wxapi_basereq_openid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract b()Z
.end method
