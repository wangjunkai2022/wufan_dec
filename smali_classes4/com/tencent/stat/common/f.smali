.class public Lcom/tencent/stat/common/f;
.super Ljava/lang/Object;


# static fields
.field static a:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    sget-wide v0, Lcom/tencent/stat/common/f;->a:J

    invoke-static {p0, p1, v0, v1}, Lcom/tencent/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 8

    const-class v0, Lcom/tencent/stat/common/f;

    monitor-enter v0

    :try_start_0
    const-string v1, "1.6.2_begin_protection"

    invoke-static {p0, v1}, Lcom/tencent/stat/common/f;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "1.6.2_end__protection"

    invoke-static {p0, v3}, Lcom/tencent/stat/common/f;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    sget-wide v5, Lcom/tencent/stat/common/f;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :cond_0
    :try_start_1
    sget-wide v3, Lcom/tencent/stat/common/f;->a:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const-string v1, "1.6.2_begin_protection"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lcom/tencent/stat/common/f;->a(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .locals 6

    const-class v0, Lcom/tencent/stat/common/f;

    monitor-enter v0

    :try_start_0
    const-string v1, "1.6.2_end__protection"

    invoke-static {p0, v1}, Lcom/tencent/stat/common/f;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    sget-wide v3, Lcom/tencent/stat/common/f;->a:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, "1.6.2_end__protection"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lcom/tencent/stat/common/f;->a(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
