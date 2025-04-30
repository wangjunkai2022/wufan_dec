.class Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$2;
.super Ljava/lang/Object;
.source "SinaWeiboWebAuthOfficial.java"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WbAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->loginManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->access$100(Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;

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
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->access$100(Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;

    invoke-virtual {p1}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method

.method public onError(Lcom/sina/weibo/sdk/common/UiError;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sina/weibo/sdk/common/UiError;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sina/weibo/sdk/common/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " errorDetail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sina/weibo/sdk/common/UiError;->errorDetail:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->access$100(Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;

    invoke-virtual {p1}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method
