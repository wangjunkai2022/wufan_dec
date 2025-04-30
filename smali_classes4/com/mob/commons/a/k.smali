.class public Lcom/mob/commons/a/k;
.super Lcom/mob/commons/a/c;


# direct methods
.method public constructor <init>()V
    .locals 8

    const-string v0, "003Vfgdifg"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "006,fgdifgffdfKe"

    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v3, 0x0

    const-wide/32 v6, 0x278d00

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 14

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getSA()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v1

    sget-object v2, Lcom/mob/commons/w;->e:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mob/commons/w;->b(Ljava/lang/String;J)J

    move-result-wide v1

    .line 6
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->k()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v5, v7, v5

    const/4 v9, 0x0

    const/4 v10, 0x1

    cmp-long v11, v5, v1

    if-ltz v11, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    .line 8
    sget-object v2, Lcom/mob/commons/j;->g:Ljava/lang/String;

    invoke-static {v2, v10}, Lcom/mob/tools/utils/ResHelper;->readArrayListFromFile(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v11, "003eGdjff"

    .line 10
    invoke-static {v11}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    const-string v13, "003eRdjff"

    .line 13
    invoke-static {v13}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_2

    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_7

    const-string v1, "SALMT"

    .line 14
    invoke-virtual {p0, v3, v4, v1, v0}, Lcom/mob/commons/a/c;->a(JLjava/lang/String;Ljava/lang/Object;)V

    .line 15
    sget-object v1, Lcom/mob/commons/j;->g:Ljava/lang/String;

    invoke-static {v0, v1, v10}, Lcom/mob/tools/utils/ResHelper;->saveArrayListToFile(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 16
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v7, v8}, Lcom/mob/commons/w;->a(Ljava/lang/String;J)V

    :cond_7
    return-void
.end method
