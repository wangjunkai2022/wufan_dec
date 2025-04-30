.class public Lcn/sharesdk/framework/d;
.super Ljava/lang/Object;
.source "InnerPlatformActionListener.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# instance fields
.field private a:Lcn/sharesdk/framework/PlatformActionListener;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcn/sharesdk/framework/Platform;",
            "Lcn/sharesdk/framework/Platform$ShareParams;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/d;->b:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/d;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/framework/d;Lcn/sharesdk/framework/PlatformActionListener;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p1
.end method

.method private a(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 16

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    :try_start_0
    const-string v1, "nickname"

    const-string v2, "icon"

    const-string v3, "gender"

    const-string v4, "snsUserUrl"

    const-string v5, "resume"

    const-string v6, "secretType"

    const-string v7, "secret"

    const-string v8, "birthday"

    const-string v9, "followerCount"

    const-string v10, "favouriteCount"

    const-string v11, "shareCount"

    const-string v12, "snsregat"

    const-string v13, "snsUserLevel"

    const-string v14, "educationJSONArrayStr"

    const-string/jumbo v15, "workJSONArrayStr"

    .line 19
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v2, p0

    .line 20
    :try_start_1
    invoke-direct {v2, v0, v1}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/PlatformDb;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    .line 21
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Lcn/sharesdk/framework/PlatformDb;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, p2, v3

    if-lez v4, :cond_0

    const/16 v6, 0x7c

    .line 25
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 27
    invoke-virtual {p1, v5}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "utf-8"

    .line 30
    invoke-static {v5, v6}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======UserData: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/String;)I

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcn/sharesdk/framework/d;Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/authorize/d;->c()Lcn/sharesdk/framework/authorize/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->b()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcn/sharesdk/framework/d;->b()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 10
    new-instance v1, Lcn/sharesdk/framework/d$2;

    invoke-direct {v1, p0, v0, p2, p3}, Lcn/sharesdk/framework/d$2;-><init>(Lcn/sharesdk/framework/d;Lcn/sharesdk/framework/PlatformActionListener;ILjava/util/HashMap;)V

    iput-object v1, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/Platform;->showUser(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 6

    .line 30
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WechatMoments"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WechatFavorite"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 32
    :cond_0
    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserGender()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    const-string p1, "Wechat"

    .line 33
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 34
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "InnerPlatformActionListener getUserDataBrief catch "

    invoke-virtual {v1, p1, v4, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    :cond_1
    :try_start_1
    const-string p1, "gender"

    const-string v1, "birthday"

    const-string v3, "secretType"

    const-string v4, "educationJSONArrayStr"

    const-string/jumbo v5, "workJSONArrayStr"

    .line 36
    filled-new-array {p1, v1, v3, v4, v5}, [Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-direct {p0, v0, p1}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/PlatformDb;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    .line 38
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private b()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/sharesdk/framework/d$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/framework/d$1;-><init>(Lcn/sharesdk/framework/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private b(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcn/sharesdk/framework/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform$ShareParams;

    if-eqz p3, :cond_0

    const-string v0, "ShareParams"

    .line 4
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    move-object v1, p3

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 7
    new-instance v4, Lcn/sharesdk/framework/a/b/f;

    invoke-direct {v4}, Lcn/sharesdk/framework/a/b/f;-><init>()V

    .line 8
    invoke-virtual {v0}, Lcn/sharesdk/framework/InnerShareParams;->getCustomFlag()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/sharesdk/framework/a/b/f;->n:[Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WechatMoments"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WechatFavorite"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 11
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_1
    const-string v6, "Wechat"

    .line 12
    invoke-static {v6}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    .line 13
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "InnerPlatformActionListener wechat is null"

    invoke-virtual {v7, v6, v9, v8}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object v6, v3

    :goto_1
    if-eqz v6, :cond_3

    .line 14
    invoke-virtual {v6}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TencentWeibo"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 16
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 17
    :cond_3
    :goto_2
    iput-object v5, v4, Lcn/sharesdk/framework/a/b/f;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v5

    iput v5, v4, Lcn/sharesdk/framework/a/b/f;->a:I

    .line 19
    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/Platform;->filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/a/b/f$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20
    iget-object v1, v0, Lcn/sharesdk/framework/a/b/f$a;->a:Ljava/lang/String;

    iput-object v1, v4, Lcn/sharesdk/framework/a/b/f;->c:Ljava/lang/String;

    .line 21
    iput-object v0, v4, Lcn/sharesdk/framework/a/b/f;->d:Lcn/sharesdk/framework/a/b/f$a;

    .line 22
    :cond_4
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/d;->b(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcn/sharesdk/framework/a/b/f;->m:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcn/sharesdk/framework/a/d;->a()Lcn/sharesdk/framework/a/d;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 24
    invoke-virtual {v0, v4}, Lcn/sharesdk/framework/a/d;->a(Lcn/sharesdk/framework/a/b/c;)V

    .line 25
    :cond_5
    iget-object v0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_6

    .line 26
    :try_start_2
    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 27
    iput-object v3, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 28
    iput v2, p0, Lcn/sharesdk/framework/d;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    .line 29
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method a()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .line 5
    iget-object v0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method a(Lcn/sharesdk/framework/Platform;ILjava/lang/Object;)V
    .locals 2

    .line 12
    invoke-static {}, Lcn/sharesdk/framework/authorize/d;->c()Lcn/sharesdk/framework/authorize/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->b()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 13
    invoke-direct {p0}, Lcn/sharesdk/framework/d;->b()V

    .line 14
    :cond_0
    iput p2, p0, Lcn/sharesdk/framework/d;->c:I

    .line 15
    iget-object v0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 16
    new-instance v1, Lcn/sharesdk/framework/d$3;

    invoke-direct {v1, p0, v0, p2, p3}, Lcn/sharesdk/framework/d$3;-><init>(Lcn/sharesdk/framework/d;Lcn/sharesdk/framework/PlatformActionListener;ILjava/lang/Object;)V

    iput-object v1, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x0

    .line 17
    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/Platform;->doAuthorize([Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcn/sharesdk/framework/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    return-void
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcn/sharesdk/framework/d;->c:I

    :cond_0
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcn/sharesdk/framework/CustomPlatform;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 4
    iput-object v2, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 5
    iput v1, p0, Lcn/sharesdk/framework/d;->c:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/16 v0, 0x9

    if-eq p2, v0, :cond_3

    .line 6
    iget-object v0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_5

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 8
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Wechat"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lcn/sharesdk/framework/d;->c:I

    if-eqz p1, :cond_2

    if-ne p1, p2, :cond_5

    .line 9
    :cond_2
    iput-object v2, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 10
    iput v1, p0, Lcn/sharesdk/framework/d;->c:I

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/framework/d;->b(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcn/sharesdk/framework/d;->a:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcn/sharesdk/framework/d;->c:I

    :cond_0
    return-void
.end method
