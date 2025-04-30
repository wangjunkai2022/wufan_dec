.class public Lcom/mob/commons/a/j;
.super Lcom/mob/commons/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/a/j$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 20
    :try_start_0
    sget-object v1, Lcom/mob/commons/j;->f:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/mob/tools/utils/ResHelper;->saveArrayListToFile(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 21
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 22
    :try_start_1
    sget-object v2, Lcom/mob/commons/j;->f:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lcom/mob/tools/utils/ResHelper;->saveArrayListToFile(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 23
    :catchall_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private a(JJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    .line 31
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 35
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p2, p1}, Lcom/mob/commons/a/j;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/mob/commons/a/j;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ALSIMT"

    .line 26
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/mob/commons/a/c;->a(JLjava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/mob/commons/a/j;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/mob/commons/a/j;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "ALSUMT"

    .line 29
    invoke-virtual {p0, v2, v3, v0, p1}, Lcom/mob/commons/a/c;->a(JLjava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 30
    invoke-direct {p0, p2}, Lcom/mob/commons/a/j;->a(Ljava/util/ArrayList;)V

    :cond_2
    return v4
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "003f>ekgg"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 5
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "003f;ekgg"

    .line 6
    invoke-static {v6}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :cond_3
    if-nez v3, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private n()Z
    .locals 1

    const-string v0, "003\'egfefe"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private o()Z
    .locals 1

    const-string v0, "002]efel"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private p()Z
    .locals 1

    const-string v0, "002Eedel"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 12

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/DeviceHelper;->getIA(Z)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/mob/commons/a/j;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "0048egghCf1eg"

    .line 8
    invoke-static {v4}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/32 v5, 0x278d00

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    .line 9
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v6

    sget-object v7, Lcom/mob/commons/w;->d:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/mob/commons/w;->b(Ljava/lang/String;J)J

    move-result-wide v10

    .line 10
    invoke-direct {p0, v2, v3, v10, v11}, Lcom/mob/commons/a/j;->a(JJ)Z

    move-result v6

    sub-long/2addr v2, v4

    cmp-long v4, v2, v10

    if-gez v4, :cond_1

    if-nez v6, :cond_2

    :cond_1
    const-string v2, "004]eg>iXfeZj"

    .line 11
    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "ALSAMT"

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/mob/commons/a/c;->a(JLjava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v7, v3, v4}, Lcom/mob/commons/w;->a(Ljava/lang/String;J)V

    .line 13
    :cond_2
    sget-object v2, Lcom/mob/commons/j;->f:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->readArrayListFromFile(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 14
    invoke-direct {p0}, Lcom/mob/commons/a/j;->o()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/mob/commons/a/j;->p()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 15
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 16
    invoke-direct {p0, v1}, Lcom/mob/commons/a/j;->a(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 17
    invoke-direct {p0, v2, v1}, Lcom/mob/commons/a/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 18
    invoke-static {}, Lcom/mob/commons/a/j$a;->a()Lcom/mob/commons/a/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/a/j$a;->b()V

    goto :goto_2

    .line 19
    :cond_7
    invoke-static {}, Lcom/mob/commons/a/j$a;->a()Lcom/mob/commons/a/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/a/j$a;->c()V

    :goto_2
    return-void
.end method

.method protected e()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/mob/commons/a/j;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mob/commons/a/j;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mob/commons/a/j;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
