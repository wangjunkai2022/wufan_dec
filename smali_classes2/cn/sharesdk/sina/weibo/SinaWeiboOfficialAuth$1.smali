.class Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$1;
.super Ljava/lang/Object;
.source "SinaWeiboOfficialAuth.java"

# interfaces
.implements Lcom/sina/weibo/sdk/openapi/SdkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->onCreate()V
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
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$1;->a:Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailure(Ljava/lang/Exception;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$1;->a:Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->access$100(Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$1;->a:Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->access$100(Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WeiboInitFailure "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "SinaWeiboShareOfficial"

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method public onInitSuccess()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->initFlag:Z

    .line 2
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth$1;->a:Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;->access$000(Lcn/sharesdk/sina/weibo/SinaWeiboOfficialAuth;)V

    return-void
.end method
