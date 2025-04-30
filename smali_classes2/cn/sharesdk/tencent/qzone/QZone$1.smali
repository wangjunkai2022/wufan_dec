.class Lcn/sharesdk/tencent/qzone/QZone$1;
.super Ljava/lang/Object;
.source "QZone.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/QZone;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qzone/utils/b;

.field final synthetic b:Lcn/sharesdk/tencent/qzone/QZone;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/QZone;Lcn/sharesdk/tencent/qzone/utils/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->b:Lcn/sharesdk/tencent/qzone/QZone;

    iput-object p2, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->a:Lcn/sharesdk/tencent/qzone/utils/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/QZone;->j(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/QZone;->k(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->b:Lcn/sharesdk/tencent/qzone/QZone;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "open_id"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "access_token"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expires_in"

    .line 3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {v3}, Lcn/sharesdk/tencent/qzone/QZone;->c(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {v3}, Lcn/sharesdk/tencent/qzone/QZone;->d(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcn/sharesdk/framework/PlatformDb;->putTokenSecret(Ljava/lang/String;)V

    .line 6
    :try_start_0
    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {v3}, Lcn/sharesdk/tencent/qzone/QZone;->e(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 8
    :goto_0
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {v2}, Lcn/sharesdk/tencent/qzone/QZone;->f(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    const-string v2, "pf"

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pfkey"

    .line 10
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pay_token"

    .line 11
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v7, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {v7}, Lcn/sharesdk/tencent/qzone/QZone;->g(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {v2}, Lcn/sharesdk/tencent/qzone/QZone;->h(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {v2}, Lcn/sharesdk/tencent/qzone/QZone;->i(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v6, p1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->a:Lcn/sharesdk/tencent/qzone/utils/b;

    invoke-virtual {p1, v0}, Lcn/sharesdk/tencent/qzone/utils/b;->b(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->a:Lcn/sharesdk/tencent/qzone/utils/b;

    invoke-virtual {p1, v1}, Lcn/sharesdk/tencent/qzone/utils/b;->c(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->a:Lcn/sharesdk/tencent/qzone/utils/b;

    invoke-virtual {p1}, Lcn/sharesdk/tencent/qzone/utils/b;->a()V

    .line 18
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->b:Lcn/sharesdk/tencent/qzone/QZone;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/sharesdk/tencent/qzone/QZone;->a(Lcn/sharesdk/tencent/qzone/QZone;ILjava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/QZone;->a(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->b:Lcn/sharesdk/tencent/qzone/QZone;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/QZone;->b(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone$1;->b:Lcn/sharesdk/tencent/qzone/QZone;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
