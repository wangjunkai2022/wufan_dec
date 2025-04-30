.class public Lcom/mob/commons/a/b;
.super Lcom/mob/commons/a/c;


# direct methods
.method public constructor <init>()V
    .locals 8

    const-string v0, "002Qhehi"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "005[hehihhfh9g"

    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v3, 0x0

    const-wide/32 v6, 0x15180

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    .line 2
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->c()V

    return-void
.end method

.method private n()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    const/4 v1, -0x1

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v2, -0x1

    .line 3
    :goto_0
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCellLac()I

    move-result v3

    .line 4
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCellId()I

    move-result v4

    .line 5
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPsc()I

    move-result v5

    const/4 v6, 0x0

    if-eq v2, v1, :cond_0

    if-eq v3, v1, :cond_0

    if-eq v4, v1, :cond_0

    .line 6
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "003%gffhfi"

    .line 7
    invoke-static {v7}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "004Qfi;kYgfgf"

    .line 8
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v5, v1, :cond_0

    const-string v3, "003g[hifi"

    .line 9
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCdmaBid()I

    move-result v3

    .line 11
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCdmaSid()I

    move-result v4

    .line 12
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCdmaNid()I

    move-result v5

    .line 13
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCdmaLat()I

    move-result v7

    .line 14
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCdmaLon()I

    move-result v8

    if-eq v2, v1, :cond_3

    if-eq v3, v1, :cond_3

    if-eq v4, v1, :cond_3

    if-eq v5, v1, :cond_3

    if-nez v6, :cond_1

    .line 15
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :cond_1
    const-string v9, "003WhefgZj"

    .line 16
    invoke-static {v9}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "0035hifg j"

    .line 17
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "003UfmfgTj"

    .line 18
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v7, v1, :cond_2

    const-string v3, "0034gffhVf"

    .line 19
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eq v8, v1, :cond_3

    const-string v1, "003Ggfgefm"

    .line 20
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v6, :cond_5

    const-string v1, "007<fifhfjfjfg)k_fj"

    .line 21
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "009UhifgOn@ge@g-fmfhZnk"

    .line 22
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCarrierName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNeighboringCellInfo()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "006$fm!kSfhfjhefk"

    .line 25
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v0, 0x1

    const-string v1, "BSIOMT"

    .line 26
    invoke-virtual {p0, v1, v6, v0}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/util/HashMap;Z)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/a/b;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->k()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/c;->a(J)V

    return-void
.end method
