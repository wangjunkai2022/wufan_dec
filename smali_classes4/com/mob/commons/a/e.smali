.class public Lcom/mob/commons/a/e;
.super Lcom/mob/commons/a/c;


# direct methods
.method public constructor <init>()V
    .locals 8

    const-string v0, "002hj"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "004hj1dgTc"

    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0xe10

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method private n()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getCPUFreq()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v2, "010ecLec.dMecggecdcdkAd"

    .line 4
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAlbumCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getTraffic()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 6
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceMemUsage()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v1, "010Xdgdh)i:dfGdi_eideYli"

    .line 7
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 12

    .line 1
    :try_start_0
    sget-object v0, Lcom/mob/commons/j;->c:Ljava/lang/String;

    const-class v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->readEncodedData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/mob/commons/a/e;->n()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "004]eddefgOd"

    .line 4
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "004Reddefg3d"

    .line 7
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->saveAndEncodeData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 9
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v2

    sget-object v3, Lcom/mob/commons/w;->m:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/mob/commons/w;->b(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v2, "004hj+dcEc"

    .line 10
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v8, 0xe10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p0, v2, v8}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    cmp-long v2, v6, v4

    if-eqz v2, :cond_2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    .line 12
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v1, "DEXTVARMT"

    .line 14
    invoke-virtual {p0, v1, v2}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->saveAndEncodeData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 16
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/mob/commons/w;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 17
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method
