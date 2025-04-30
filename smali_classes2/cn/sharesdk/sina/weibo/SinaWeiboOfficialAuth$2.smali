.class Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$2;
.super Ljava/lang/Object;
.source "SinaWeiboOfficialAuth.java"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WbAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->loginManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->access$100(Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method

.method public onComplete(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getExpiresTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expires_in"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "refresh_token"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object p1

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->access$100(Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;

    invoke-virtual {p1}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method

.method public onError(Lcom/sina/weibo/sdk/common/UiError;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->access$100(Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->access$200(Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 2
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;

    invoke-virtual {p1}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method
