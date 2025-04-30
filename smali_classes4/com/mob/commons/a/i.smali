.class public Lcom/mob/commons/a/i;
.super Lcom/mob/commons/a/c;


# static fields
.field private static c:Lcom/mob/commons/h;

.field private static final d:Ljava/lang/String;


# instance fields
.field private e:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "014UciHh5chcccecfQcScd5ih(ccdcdbee"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a/i;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const-string v0, "002Rebcd"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "005*ebcdeeceYd"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x1e

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    .line 2
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->c()V

    .line 3
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/commons/a/i;->e:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "008c]dbZdYccVcHcdUkh"

    .line 4
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;)V

    return-void
.end method

.method private a(JJ)V
    .locals 2

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/a/i;->e:Lcom/mob/tools/utils/SharePrefrenceHelper;

    sget-object v1, Lcom/mob/commons/a/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p1, p0, Lcom/mob/commons/a/i;->e:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 20
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private b(J)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/mob/commons/i;->a()Lcom/mob/commons/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/commons/a/o;->a()Lcom/mob/commons/a/o;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mob/commons/a/c;->k()J

    move-result-wide v2

    const-class v4, Lcom/mob/commons/a/i;

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, -0x1

    .line 3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v0, v0, [Ljava/lang/Long;

    const-wide/16 v8, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    aput-object v0, v5, p2

    const/4 v6, 0x0

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/mob/commons/a/o;->a(JLjava/lang/Class;[Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/a/i;->e:Lcom/mob/tools/utils/SharePrefrenceHelper;

    sget-object v1, Lcom/mob/commons/a/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v6, "005Ycbcj7c9cddc"

    .line 7
    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "0080cgcbcj^c5cd[khBef"

    .line 8
    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "BKIOMT"

    .line 9
    invoke-virtual {p0, v2, v1}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/a/i;->e:Lcom/mob/tools/utils/SharePrefrenceHelper;

    sget-object v1, Lcom/mob/commons/a/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private static declared-synchronized o()Z
    .locals 3

    const-class v0, Lcom/mob/commons/a/i;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mob/commons/a/i;->c:Lcom/mob/commons/h;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/mob/commons/a/i$1;

    invoke-direct {v1}, Lcom/mob/commons/a/i$1;-><init>()V

    sput-object v1, Lcom/mob/commons/a/i;->c:Lcom/mob/commons/h;

    .line 3
    invoke-static {}, Lcom/mob/commons/i;->a()Lcom/mob/commons/i;

    move-result-object v1

    sget-object v2, Lcom/mob/commons/a/i;->c:Lcom/mob/commons/h;

    invoke-virtual {v1, v2}, Lcom/mob/commons/i;->a(Lcom/mob/commons/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 4
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 5
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected a()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/commons/a/i;->o()Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/a/c;->a:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    .line 4
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 5
    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    cmp-long v7, v1, v5

    if-nez v7, :cond_1

    .line 6
    array-length v7, v0

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    .line 8
    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_0
    const-wide/16 v9, 0x0

    cmp-long v0, v1, v9

    if-nez v0, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/mob/commons/a/i;->n()V

    .line 10
    invoke-direct {p0, v3, v4, v7, v8}, Lcom/mob/commons/a/i;->a(JJ)V

    .line 11
    invoke-direct {p0, v3, v4}, Lcom/mob/commons/a/i;->b(J)V

    goto :goto_2

    :cond_2
    const-wide/16 v9, 0x1

    cmp-long v0, v1, v9

    if-eqz v0, :cond_4

    cmp-long v0, v1, v5

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x2

    cmp-long v0, v1, v5

    if-nez v0, :cond_5

    .line 12
    invoke-direct {p0, v3, v4, v7, v8}, Lcom/mob/commons/a/i;->a(JJ)V

    .line 13
    invoke-direct {p0}, Lcom/mob/commons/a/i;->n()V

    goto :goto_2

    .line 14
    :cond_4
    :goto_1
    invoke-direct {p0, v3, v4, v7, v8}, Lcom/mob/commons/a/i;->a(JJ)V

    .line 15
    invoke-direct {p0, v3, v4}, Lcom/mob/commons/a/i;->b(J)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method
