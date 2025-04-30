.class public Lcn/sharesdk/wechat/utils/c;
.super Lcn/sharesdk/wechat/utils/WechatResp;
.source "AuthResp.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/WechatResp;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/sharesdk/wechat/utils/c;->f:Z

    .line 3
    invoke-virtual {p0, p1}, Lcn/sharesdk/wechat/utils/c;->a(Landroid/os/Bundle;)V

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
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/WechatResp;->a(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_sendauth_resp_token"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/c;->a:Ljava/lang/String;

    const-string v0, "_wxapi_sendauth_resp_state"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/c;->b:Ljava/lang/String;

    const-string v0, "_wxapi_sendauth_resp_url"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/c;->c:Ljava/lang/String;

    const-string v0, "_wxapi_sendauth_resp_lang"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/c;->d:Ljava/lang/String;

    const-string v0, "_wxapi_sendauth_resp_country"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/c;->e:Ljava/lang/String;

    const-string v0, "_wxapi_sendauth_resp_auth_result"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/sharesdk/wechat/utils/c;->f:Z

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/WechatResp;->b(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/c;->a:Ljava/lang/String;

    const-string v1, "_wxapi_sendauth_resp_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/c;->b:Ljava/lang/String;

    const-string v1, "_wxapi_sendauth_resp_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/c;->c:Ljava/lang/String;

    const-string v1, "_wxapi_sendauth_resp_url"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/c;->d:Ljava/lang/String;

    const-string v1, "_wxapi_sendauth_resp_lang"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/c;->e:Ljava/lang/String;

    const-string v1, "_wxapi_sendauth_resp_country"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-boolean v0, p0, Lcn/sharesdk/wechat/utils/c;->f:Z

    const-string v1, "_wxapi_sendauth_resp_auth_result"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
