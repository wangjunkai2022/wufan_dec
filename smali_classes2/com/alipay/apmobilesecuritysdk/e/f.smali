.class public final Lcom/alipay/apmobilesecuritysdk/e/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/e/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/e/f;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b(Lcom/alipay/apmobilesecuritysdk/e/b;)V
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/e/f;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    sput-object v1, Lcom/alipay/apmobilesecuritysdk/e/f;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/alipay/apmobilesecuritysdk/e/b;->c:Ljava/lang/String;

    sput-object p0, Lcom/alipay/apmobilesecuritysdk/e/f;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Lcom/alipay/apmobilesecuritysdk/e/f;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/e;->c(Landroid/content/Context;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v3, 0x5265c00

    cmp-long p0, v1, v3

    if-gez p0, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/d;->c(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized d()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/e/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/e/f;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
