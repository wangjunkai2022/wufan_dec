.class public Lcn/sharesdk/wechat/moments/WechatMoments;
.super Lcn/sharesdk/framework/Platform;
.source "WechatMoments.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "WechatMoments"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/wechat/moments/WechatMoments;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/wechat/moments/WechatMoments;ILjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/framework/Platform;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/wechat/moments/WechatMoments;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/wechat/moments/WechatMoments;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method private c()Z
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "refresh_token"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcn/sharesdk/wechat/utils/h;

    const/16 v1, 0x17

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/wechat/utils/h;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 4
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/wechat/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/h;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d(Lcn/sharesdk/wechat/moments/WechatMoments;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcn/sharesdk/wechat/utils/l;->a()Lcn/sharesdk/wechat/utils/l;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/l;->c(Ljava/lang/String;)Z

    .line 3
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/l;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 4
    iget-object p2, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_0

    .line 5
    new-instance v0, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;-><init>()V

    invoke-interface {p2, p0, p1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return v2

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/l;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 7
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_2

    .line 8
    new-instance p2, Lcn/sharesdk/wechat/utils/WechatTimelineNotSupportedException;

    invoke-direct {p2}, Lcn/sharesdk/wechat/utils/WechatTimelineNotSupportedException;-><init>()V

    invoke-interface {p1, p0, v1, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_2
    return v2

    :cond_3
    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    .line 9
    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcn/sharesdk/wechat/moments/WechatMoments;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/framework/Platform;->innerAuthorize(ILjava/lang/Object;)V

    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcn/sharesdk/wechat/utils/l;->a()Lcn/sharesdk/wechat/utils/l;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/sharesdk/wechat/utils/l;->c(Ljava/lang/String;)Z

    .line 4
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/l;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 5
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_1

    .line 6
    new-instance v0, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;-><init>()V

    invoke-interface {p1, p0, v1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_1
    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/l;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_3

    .line 9
    new-instance v0, Lcn/sharesdk/wechat/utils/WechatTimelineNotSupportedException;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WechatTimelineNotSupportedException;-><init>()V

    invoke-interface {p1, p0, v1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_3
    return-void

    .line 10
    :cond_4
    new-instance v0, Lcn/sharesdk/wechat/utils/h;

    const/16 v2, 0x17

    invoke-direct {v0, p0, v2}, Lcn/sharesdk/wechat/utils/h;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 11
    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/wechat/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v2, Lcn/sharesdk/wechat/utils/k;

    invoke-direct {v2, p0}, Lcn/sharesdk/wechat/utils/k;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 13
    invoke-virtual {v2, v0}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/wechat/utils/h;)V

    .line 14
    new-instance v0, Lcn/sharesdk/wechat/moments/WechatMoments$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/wechat/moments/WechatMoments$1;-><init>(Lcn/sharesdk/wechat/moments/WechatMoments;)V

    invoke-virtual {v2, v0}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 15
    :try_start_0
    invoke-virtual {p1, v2}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 16
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v1, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void

    .line 18
    :cond_6
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_7

    const/16 v0, 0x8

    .line 19
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "The params of appID or appSecret is missing !"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 4

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WechatMoments start Share with Appid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "appSecret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WechatMoments ShareParams:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scene"

    invoke-virtual {p1, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcn/sharesdk/wechat/utils/l;->a()Lcn/sharesdk/wechat/utils/l;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/l;->c(Ljava/lang/String;)Z

    .line 6
    new-instance v1, Lcn/sharesdk/wechat/utils/k;

    invoke-direct {v1, p0}, Lcn/sharesdk/wechat/utils/k;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 7
    iget-boolean v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->c:Z

    const/16 v3, 0x9

    if-eqz v2, :cond_0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v1, p1, v2}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/k;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0, p0, v3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v1, p1, v2}, Lcn/sharesdk/wechat/utils/k;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 12
    :try_start_1
    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/l;->c(Lcn/sharesdk/wechat/utils/k;)V

    .line 13
    iget-object v1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ShareParams"

    .line 15
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_1

    .line 17
    invoke-interface {p1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 18
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1

    .line 19
    invoke-interface {v0, p0, v3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/a/b/f$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform$ShareParams;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/sharesdk/framework/a/b/f$a;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcn/sharesdk/framework/a/b/f$a;

    invoke-direct {p2}, Lcn/sharesdk/framework/a/b/f$a;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3
    iput-object v0, p2, Lcn/sharesdk/framework/a/b/f$a;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8
    iget-object v2, p2, Lcn/sharesdk/framework/a/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 9
    iget-object v1, p2, Lcn/sharesdk/framework/a/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 10
    iget-object v1, p2, Lcn/sharesdk/framework/a/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    iget-object v2, p2, Lcn/sharesdk/framework/a/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "url"

    .line 15
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v3, "extInfo"

    .line 16
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "content"

    .line 17
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p2, Lcn/sharesdk/framework/a/b/f$a;->d:Ljava/util/ArrayList;

    const-string v0, "image"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "musicFileUrl"

    .line 19
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iput-object v2, p2, Lcn/sharesdk/framework/a/b/f$a;->g:Ljava/util/HashMap;

    return-object p2
.end method

.method protected follow(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    .line 2
    invoke-interface {p1, p0, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected getBilaterals(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getFollowers(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getFollowings(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    .line 2
    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .locals 5

    const-string p1, "AppId"

    .line 1
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    const-string v0, "AppSecret"

    .line 2
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    const-string v0, "BypassApproval"

    .line 3
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->c:Z

    .line 4
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    const-string v1, "Wechat"

    .line 5
    invoke-virtual {p0, v1, p1}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->c:Z

    .line 7
    iget-object v3, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 8
    sget-object v3, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcn/sharesdk/framework/Platform;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->c:Z

    .line 11
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Try to use the dev info of Wechat, this will cause Id and SortId field are always 0."

    invoke-virtual {p1, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    const-string v0, "WechatFavorite"

    .line 12
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 14
    sget-object v1, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/Platform;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 16
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0."

    invoke-virtual {p1, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public isClientValid()Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/sharesdk/wechat/utils/l;->a()Lcn/sharesdk/wechat/utils/l;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/wechat/utils/l;->c(Ljava/lang/String;)Z

    .line 3
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/l;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .locals 11

    const-string v0, "app_id"

    const-string v1, "AppId"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/Platform;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    const-string v2, "app_secret"

    const-string v3, "AppSecret"

    .line 2
    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/framework/Platform;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    .line 3
    iget-object v4, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    const-string v5, "Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0."

    const-string v6, "Try to use the dev info of Wechat, this will cause Id and SortId field are always 0."

    const/16 v7, 0x25

    const/4 v8, 0x0

    const/16 v9, 0x16

    const/16 v10, 0x17

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    .line 4
    :cond_0
    invoke-virtual {p0, v9, v0, v1}, Lcn/sharesdk/framework/Platform;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 6
    invoke-virtual {p0, v9, v10}, Lcn/sharesdk/framework/Platform;->copyNetworkDevinfo(II)V

    .line 7
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/Platform;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v7, v0, v1}, Lcn/sharesdk/framework/Platform;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 11
    invoke-virtual {p0, v10, v10}, Lcn/sharesdk/framework/Platform;->copyNetworkDevinfo(II)V

    .line 12
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/Platform;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 14
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 15
    :cond_3
    invoke-virtual {p0, v9, v2, v3}, Lcn/sharesdk/framework/Platform;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 17
    invoke-virtual {p0, v9, v10}, Lcn/sharesdk/framework/Platform;->copyNetworkDevinfo(II)V

    .line 18
    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/framework/Platform;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {p0, v7, v2, v3}, Lcn/sharesdk/framework/Platform;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 22
    invoke-virtual {p0, v10, v10}, Lcn/sharesdk/framework/Platform;->copyNetworkDevinfo(II)V

    .line 23
    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/framework/Platform;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_5
    :goto_1
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x7

    .line 2
    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Lcn/sharesdk/wechat/utils/h;

    const/16 v1, 0x17

    invoke-direct {p1, p0, v1}, Lcn/sharesdk/wechat/utils/h;-><init>(Lcn/sharesdk/framework/Platform;I)V

    .line 3
    iget-object v1, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/wechat/moments/WechatMoments;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/wechat/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {p1, v1}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 6
    iget-object v1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1, p0, v0, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    .line 8
    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_3

    .line 9
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "The params of appID or appSecret is missing !"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_3
    return-void
.end method
