.class public Lcn/sharesdk/framework/f;
.super Ljava/lang/Object;
.source "PlatformImpl.java"


# instance fields
.field private a:Lcn/sharesdk/framework/Platform;

.field private b:Lcn/sharesdk/framework/PlatformDb;

.field private c:Lcn/sharesdk/framework/d;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/sharesdk/framework/f;->g:Z

    .line 3
    iput-object p1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    .line 4
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getVersion()I

    move-result p1

    invoke-direct {v1, v0, p1}, Lcn/sharesdk/framework/PlatformDb;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcn/sharesdk/framework/f;->b:Lcn/sharesdk/framework/PlatformDb;

    .line 6
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/f;->a(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcn/sharesdk/framework/d;

    invoke-direct {p1}, Lcn/sharesdk/framework/d;-><init>()V

    iput-object p1, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    .line 8
    invoke-static {}, Lcn/sharesdk/framework/c;->a()Lcn/sharesdk/framework/c;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareSDK_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcn/sharesdk/framework/d;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    new-instance v1, Lcom/mob/commons/ForbThrowable;

    invoke-direct {v1}, Lcom/mob/commons/ForbThrowable;-><init>()V

    invoke-virtual {p1, v0, p2, v1}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->c(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/d;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/d;I)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/f;[Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->b([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    return-object p0
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p1, "ACTION_CUSTOMER"

    return-object p1

    :pswitch_0
    const-string p1, "ACTION_GETTING_FOLLOWER_LIST"

    return-object p1

    :pswitch_1
    const-string p1, "ACTION_GETTING_BILATERAL_LIST"

    return-object p1

    :pswitch_2
    const-string p1, "ACTION_SHARE"

    return-object p1

    :pswitch_3
    const-string p1, "ACTION_USER_INFOR"

    return-object p1

    :pswitch_4
    const-string p1, "ACTION_TIMELINE"

    return-object p1

    :pswitch_5
    const-string p1, "ACTION_FOLLOWING_USER"

    return-object p1

    :pswitch_6
    const-string p1, "ACTION_SENDING_DIRECT_MESSAGE"

    return-object p1

    :cond_0
    const-string p1, "ACTION_GETTING_FRIEND_LIST"

    return-object p1

    :cond_1
    const-string p1, "ACTION_AUTHORIZING"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcn/sharesdk/framework/d;I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "\'appkey\' is illegal"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2, v1}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/d;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/d;I)V

    return-void
.end method

.method private b([Ljava/lang/String;)V
    .locals 2

    .line 44
    new-instance v0, Lcn/sharesdk/framework/f$7;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/sharesdk/framework/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/framework/f$7;-><init>(Lcn/sharesdk/framework/f;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    new-instance v0, Lcn/sharesdk/framework/f$8;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/framework/f$8;-><init>(Lcn/sharesdk/framework/f;[Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private c(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 3

    const/16 v0, 0x9

    if-nez p1, :cond_1

    .line 7
    :try_start_0
    iget-object p1, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    if-eqz p1, :cond_0

    .line 8
    iget-object v1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {p1, v1, v0, v2}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 9
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getOpenCustomEven()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 10
    iget-object v2, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-static {v1, v2}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :catchall_1
    :cond_2
    :try_start_2
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/f;->c(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 12
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method static synthetic c(Lcn/sharesdk/framework/f;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/framework/f;->j()Z

    move-result p0

    return p0
.end method

.method private j()Z
    .locals 6

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->a()Z

    move-result v0

    const-string v1, "false"

    const/4 v2, 0x0

    const-string v3, "covert_url"

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v0

    invoke-virtual {p0, v0, v3, v2}, Lcn/sharesdk/framework/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcn/sharesdk/framework/f;->g:Z

    .line 4
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->setNetworkDevinfo()V

    return v4

    :cond_0
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()Z

    move-result v5

    if-nez v5, :cond_1

    return v0

    .line 6
    :cond_1
    iget-object v5, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v5

    invoke-virtual {p0, v5, v3, v2}, Lcn/sharesdk/framework/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcn/sharesdk/framework/f;->g:Z

    .line 8
    iget-object v1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->setNetworkDevinfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :catchall_0
    move-exception v1

    .line 9
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    return v0
.end method

.method private k()Ljava/lang/String;
    .locals 8

    const-string/jumbo v0, "|"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v2, "TencentWeibo"

    .line 2
    iget-object v3, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "utf-8"

    if-eqz v2, :cond_0

    .line 3
    :try_start_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    const-string v4, "user id %s ==>>"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v7

    invoke-virtual {v7}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcn/sharesdk/framework/utils/SSDKLog;->c(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 4
    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v4, "secretType"

    invoke-virtual {v2, v4}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v4, "gender"

    invoke-virtual {v2, v4}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v4, "birthday"

    invoke-virtual {v2, v4}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v4, "educationJSONArrayStr"

    invoke-virtual {v2, v4}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string/jumbo v2, "workJSONArrayStr"

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    .line 12
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 19
    iget v0, p0, Lcn/sharesdk/framework/f;->d:I

    return v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-static {p1, p2}, Lcn/sharesdk/framework/ShareSDK;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "null"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 25
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    iget-boolean v2, p0, Lcn/sharesdk/framework/f;->g:Z

    const-string v3, "getShortLintk use time: "

    if-nez v2, :cond_0

    .line 46
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/String;)I

    return-object p1

    .line 47
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/String;)I

    return-object p1

    .line 49
    :cond_1
    iget-object v2, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    .line 50
    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v2

    invoke-direct {p0}, Lcn/sharesdk/framework/f;->k()Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {p1, p2, v2, v4}, Lcn/sharesdk/framework/ShareSDK;->a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/String;)I

    return-object p1
.end method

.method public a(IILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-virtual {p0, p1, v0}, Lcn/sharesdk/framework/f;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    iget-object v1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, v1, p1, p2}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/Platform;ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 3

    if-nez p1, :cond_1

    .line 28
    iget-object p1, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void

    .line 30
    :cond_1
    new-instance v0, Lcn/sharesdk/framework/f$5;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/sharesdk/framework/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcn/sharesdk/framework/f$5;-><init>(Lcn/sharesdk/framework/f;Ljava/lang/String;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 31
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/PlatformActionListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Id"

    .line 5
    invoke-static {p1, v0}, Lcn/sharesdk/framework/ShareSDK;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/framework/f;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 7
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    instance-of v0, v0, Lcn/sharesdk/framework/CustomPlatform;

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed to parse Id, this will cause method getId() always returens 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    const-string v0, "SortId"

    .line 9
    invoke-static {p1, v0}, Lcn/sharesdk/framework/ShareSDK;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :try_start_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/framework/f;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    .line 11
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    instance-of v0, v0, Lcn/sharesdk/framework/CustomPlatform;

    if-nez v0, :cond_1

    .line 12
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed to parse SortId, this won\'t cause any problem, don\'t worry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_1
    const-string v0, "Enable"

    .line 13
    invoke-static {p1, v0}, Lcn/sharesdk/framework/ShareSDK;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcn/sharesdk/framework/f;->h:Z

    .line 15
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    instance-of v0, v0, Lcn/sharesdk/framework/CustomPlatform;

    if-nez v0, :cond_3

    .line 16
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed to parse Enable, this will cause platform always be enable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/framework/f;->h:Z

    .line 18
    :cond_3
    :goto_2
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/Platform;->initDevInfo(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lcn/sharesdk/framework/f;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;SLjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
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

    const/high16 v0, 0xa0000

    or-int/2addr p3, v0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p4, v0, p1

    const/4 p1, 0x3

    aput-object p5, v0, p1

    .line 43
    invoke-virtual {p0, p3, v0}, Lcn/sharesdk/framework/f;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcn/sharesdk/framework/f;->f:Z

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 3

    .line 32
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->isGppVer()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/sharesdk/framework/a/a/e;->a()Lcn/sharesdk/framework/a/a/e;

    move-result-object v0

    const-string v1, "no_use_gpp"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/a/a/e;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    invoke-static {}, Lcn/sharesdk/framework/a/a/e;->a()Lcn/sharesdk/framework/a/a/e;

    move-result-object v0

    const-string v1, "gpp_ver_sent"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/a/a/e;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcn/sharesdk/framework/AgreementDialog;

    invoke-direct {v0}, Lcn/sharesdk/framework/AgreementDialog;-><init>()V

    .line 35
    new-instance v1, Lcn/sharesdk/framework/f$6;

    invoke-direct {v1, p0, p1}, Lcn/sharesdk/framework/f$6;-><init>(Lcn/sharesdk/framework/f;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/AgreementDialog;->setShareParam(Lcn/sharesdk/framework/AgreementDialog$OnDialogDismiss;)V

    .line 36
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->b([Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->b([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 39
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    .line 40
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->b([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 3
    iget v0, p0, Lcn/sharesdk/framework/f;->e:I

    return v0
.end method

.method protected b(ILjava/lang/Object;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_8

    packed-switch p1, :pswitch_data_0

    .line 4
    check-cast p2, [Ljava/lang/Object;

    .line 5
    aget-object v0, p2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6
    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 7
    aget-object v0, p2, v2

    move-object v7, v0

    check-cast v7, Ljava/util/HashMap;

    const/4 v0, 0x3

    .line 8
    aget-object p2, p2, v0

    move-object v8, p2

    check-cast v8, Ljava/util/HashMap;

    .line 9
    iget-object v3, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    move v6, p1

    invoke-virtual/range {v3 .. v8}, Lcn/sharesdk/framework/Platform;->doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 10
    :pswitch_0
    check-cast p2, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 11
    invoke-virtual {p2}, Lcn/sharesdk/framework/InnerShareParams;->toMap()Ljava/util/HashMap;

    move-result-object p1

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 13
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 14
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 15
    :try_start_0
    invoke-virtual {v6, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    .line 16
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    move-object v7, v0

    :goto_1
    if-eqz v7, :cond_0

    .line 17
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    instance-of v0, p1, Lcn/sharesdk/framework/d;

    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1, v0, p2}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 20
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lcn/sharesdk/framework/InnerShareParams;->getLoopshareCustomParams()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {p2}, Lcn/sharesdk/framework/InnerShareParams;->getLoopshareCustomParams()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 21
    iget-object p1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QQ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x9

    if-eqz p1, :cond_4

    .line 22
    invoke-virtual {p2}, Lcn/sharesdk/framework/InnerShareParams;->getTitleUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 23
    invoke-virtual {p2}, Lcn/sharesdk/framework/InnerShareParams;->getLoopshareCustomParams()Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Lcn/sharesdk/framework/f$1;

    invoke-direct {v0, p0, p2}, Lcn/sharesdk/framework/f$1;-><init>(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/Platform$ShareParams;)V

    invoke-static {p1, v0}, Lcn/sharesdk/framework/ShareSDK;->mobLinkGetMobID(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V

    goto/16 :goto_3

    .line 24
    :cond_3
    iget-object p1, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    if-eqz p1, :cond_a

    .line 25
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "TitleUrl cannot be empty if setLoopshareCustomParams is used in QQ"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    iget-object v1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p2, v1, v0, p1}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_3

    .line 27
    :cond_4
    invoke-virtual {p2}, Lcn/sharesdk/framework/InnerShareParams;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 28
    iget-object p1, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    if-eqz p1, :cond_a

    .line 29
    invoke-virtual {p2}, Lcn/sharesdk/framework/InnerShareParams;->getLoopshareCustomParams()Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Lcn/sharesdk/framework/f$2;

    invoke-direct {v0, p0, p2}, Lcn/sharesdk/framework/f$2;-><init>(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/Platform$ShareParams;)V

    invoke-static {p1, v0}, Lcn/sharesdk/framework/ShareSDK;->mobLinkGetMobID(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V

    goto/16 :goto_3

    .line 30
    :cond_5
    iget-object p1, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    if-eqz p1, :cond_a

    .line 31
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "SetUrl cannot be empty if setLoopshareCustomParams is used"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    iget-object v1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p2, v1, v0, p1}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_3

    .line 33
    :cond_6
    iget-object p1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/Platform;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception p1

    .line 34
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformImpl platform.doshare() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_3

    .line 35
    :pswitch_1
    iget-object p1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->userInfor(Ljava/lang/String;)V

    goto :goto_3

    .line 36
    :pswitch_2
    check-cast p2, [Ljava/lang/Object;

    .line 37
    iget-object p1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2}, Lcn/sharesdk/framework/Platform;->timeline(IILjava/lang/String;)V

    goto :goto_3

    .line 38
    :pswitch_3
    iget-object p1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/Platform;->follow(Ljava/lang/String;)V

    goto :goto_3

    .line 39
    :cond_8
    check-cast p2, [Ljava/lang/Object;

    .line 40
    iget-object p1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2}, Lcn/sharesdk/framework/Platform;->getFriendList(IILjava/lang/String;)V

    goto :goto_3

    .line 41
    :cond_9
    iget-object p1, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    if-eqz p1, :cond_a

    .line 42
    iget-object p2, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1, p2, v1, v0}, Lcn/sharesdk/framework/d;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_a
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 3

    .line 48
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->isGppVer()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/sharesdk/framework/a/a/e;->a()Lcn/sharesdk/framework/a/a/e;

    move-result-object v0

    const-string v1, "no_use_gpp"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/a/a/e;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    invoke-static {}, Lcn/sharesdk/framework/a/a/e;->a()Lcn/sharesdk/framework/a/a/e;

    move-result-object v0

    const-string v1, "gpp_ver_sent"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/a/a/e;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcn/sharesdk/framework/AgreementDialog;

    invoke-direct {v0}, Lcn/sharesdk/framework/AgreementDialog;-><init>()V

    .line 51
    new-instance v1, Lcn/sharesdk/framework/f$9;

    invoke-direct {v1, p0, p1}, Lcn/sharesdk/framework/f$9;-><init>(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/Platform$ShareParams;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/AgreementDialog;->setShareParam(Lcn/sharesdk/framework/AgreementDialog$OnDialogDismiss;)V

    .line 52
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->c(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->c(Lcn/sharesdk/framework/Platform$ShareParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->c(Lcn/sharesdk/framework/Platform$ShareParams;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 56
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/f;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public c()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/d;->a()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    return-object v0
.end method

.method protected c(ILjava/lang/Object;)V
    .locals 2

    .line 3
    new-instance v0, Lcn/sharesdk/framework/f$3;

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/framework/f$3;-><init>(Lcn/sharesdk/framework/f;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5
    new-instance v0, Lcn/sharesdk/framework/f$4;

    invoke-direct {v0, p0, p1, p2}, Lcn/sharesdk/framework/f$4;-><init>(Lcn/sharesdk/framework/f;ILjava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    .line 13
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/f;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/f;->b:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->isValid()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/sharesdk/framework/f;->f:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/sharesdk/framework/f;->h:Z

    return v0
.end method

.method public g()Lcn/sharesdk/framework/PlatformDb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/f;->b:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/f;->b:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->removeAccount()V

    return-void
.end method

.method protected i()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    return-object v0
.end method
