.class public Lcn/sharesdk/framework/utils/SSDKLog;
.super Ljava/lang/Object;
.source "SSDKLog.java"


# static fields
.field private static a:Lcn/sharesdk/framework/utils/SSDKLog;

.field private static b:Lcom/mob/tools/log/NLog;


# instance fields
.field private final c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcn/sharesdk/framework/utils/SSDKLog;->c:I

    .line 3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->a()Lcom/mob/tools/log/NLog;

    return-void
.end method

.method public static a()Lcom/mob/tools/log/NLog;
    .locals 3

    const-string v0, "SHARESDK"

    .line 1
    invoke-static {v0}, Lcom/mob/tools/log/NLog;->getInstance(Ljava/lang/String;)Lcom/mob/tools/log/NLog;

    move-result-object v1

    sput-object v1, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    .line 2
    invoke-static {}, Lcom/mob/commons/logcollector/DefaultLogsCollector;->get()Lcom/mob/commons/logcollector/DefaultLogsCollector;

    move-result-object v1

    sget v2, Lcn/sharesdk/framework/ShareSDK;->SDK_VERSION_CODE:I

    invoke-virtual {v1, v0, v2}, Lcom/mob/commons/logcollector/DefaultLogsCollector;->addSDK(Ljava/lang/String;I)V

    .line 3
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    return-object v0
.end method

.method private a(Lcom/mob/tools/log/NLog;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static b()Lcn/sharesdk/framework/utils/SSDKLog;
    .locals 1

    .line 1
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->a:Lcn/sharesdk/framework/utils/SSDKLog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/sharesdk/framework/utils/SSDKLog;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/SSDKLog;-><init>()V

    sput-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->a:Lcn/sharesdk/framework/utils/SSDKLog;

    .line 3
    :cond_0
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->a:Lcn/sharesdk/framework/utils/SSDKLog;

    return-object v0
.end method


# virtual methods
.method public final varargs a(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 6
    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Lcom/mob/tools/log/NLog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final a(Ljava/lang/String;)I
    .locals 3

    .line 10
    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Lcom/mob/tools/log/NLog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    const/4 v1, 0x5

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final a(Ljava/lang/Throwable;)I
    .locals 2

    .line 4
    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Lcom/mob/tools/log/NLog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Throwable;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final varargs a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 8
    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Lcom/mob/tools/log/NLog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final varargs b(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 6
    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Lcom/mob/tools/log/NLog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final b(Ljava/lang/String;)I
    .locals 3

    .line 10
    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Lcom/mob/tools/log/NLog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    const/4 v1, 0x4

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final b(Ljava/lang/Throwable;)I
    .locals 2

    .line 4
    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Lcom/mob/tools/log/NLog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Throwable;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final varargs b(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 8
    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Lcom/mob/tools/log/NLog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final varargs c(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 3
    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Lcom/mob/tools/log/NLog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final c(Ljava/lang/Throwable;)I
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Lcom/mob/tools/log/NLog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Throwable;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final varargs d(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 3
    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Lcom/mob/tools/log/NLog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final d(Ljava/lang/Throwable;)I
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Lcom/mob/tools/log/NLog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/sharesdk/framework/utils/SSDKLog;->b:Lcom/mob/tools/log/NLog;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Throwable;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, -0x1

    return p1
.end method
