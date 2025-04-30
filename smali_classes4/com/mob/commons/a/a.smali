.class public Lcom/mob/commons/a/a;
.super Lcom/mob/commons/a/c;


# static fields
.field private static volatile c:J

.field private static volatile d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    const-string v0, "002!eg8e"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "0058eg<e<ggeg<f"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x384

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    .line 2
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->c()V

    .line 3
    sget-object v0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mob/commons/a/a;->c:J

    .line 5
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/w;->c()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method private n()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    const-string v3, "0080feegedelehPdCfk*e"

    .line 3
    invoke-static {v3}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "008iBedeiegUe$effdel"

    .line 4
    invoke-static {v3}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "ARSTAMT"

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 6
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/w;->j:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/commons/w;->a(Ljava/lang/String;J)V

    .line 7
    sget-object v0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9
    :cond_2
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mob/commons/w;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 8

    .line 1
    sget-object v0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    .line 3
    :cond_0
    sget-object v0, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-wide v3, Lcom/mob/commons/a/a;->c:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/mob/commons/a/a;->n()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/mob/commons/a/a;->c:J

    sub-long/2addr v0, v2

    .line 7
    sget-object v2, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    sget-wide v3, Lcom/mob/commons/a/a;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v2

    sget-object v3, Lcom/mob/commons/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/mob/commons/w;->a(Ljava/util/HashMap;)V

    .line 9
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v2

    sget-object v3, Lcom/mob/commons/w;->j:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/mob/commons/w;->b(Ljava/lang/String;J)J

    move-result-wide v2

    .line 10
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->k()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_3

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-lez v2, :cond_3

    .line 12
    invoke-direct {p0}, Lcom/mob/commons/a/a;->n()V

    :cond_3
    return-void
.end method

.method protected b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->d()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/c;->a(J)V

    return-void
.end method
