.class public Lcom/mob/commons/a/r;
.super Lcom/mob/commons/a/c;


# direct methods
.method public constructor <init>()V
    .locals 8

    const-string v0, "002Qfded"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "0048fdedfgdh"

    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x12c

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    .line 2
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->c()V

    return-void
.end method

.method private n()V
    .locals 13

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/commons/r;->d()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "005>fjehehegfi"

    .line 5
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v1, ""

    .line 8
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    sget-object v7, Lcom/mob/commons/w;->r:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/mob/commons/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 11
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v1

    sget-object v10, Lcom/mob/commons/w;->s:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v10, v2, v3}, Lcom/mob/commons/w;->b(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "005?fdedffdf.e"

    .line 12
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1c20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v11, v3

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sub-long v11, v8, v11

    cmp-long v0, v11, v1

    if-ltz v0, :cond_3

    :cond_2
    const-wide/16 v1, 0x0

    const-string v3, "WLMT"

    const/4 v5, 0x1

    move-object v0, p0

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/mob/commons/a/c;->a(JLjava/lang/String;Ljava/lang/Object;Z)V

    .line 15
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/mob/commons/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    invoke-virtual {v0, v10, v8, v9}, Lcom/mob/commons/w;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 17
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/commons/a/r;->n()V

    return-void
.end method
