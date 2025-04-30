.class public Lcom/mob/commons/a/d;
.super Lcom/mob/commons/a/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "003iRdlGd"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private n()V
    .locals 12

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "pmmt"

    .line 3
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getBluetoothName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "007YfgdeffdkXlhNhe"

    .line 4
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getSignMD5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "009Ffcecdfdh?hGdkdfSli"

    .line 5
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getBoard()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "010hij_dedgJiBdkdfHli"

    .line 6
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "009hFdefg)e+eddfdideLh"

    .line 7
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDisplayId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "011Cfhdedkff>i2dh6eQdhdedk3d"

    .line 8
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getFingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    const-string v2, "008Qdhdf2hLdeecJjiAdh"

    .line 10
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getRadioVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v2, "008?dhdfHhPdeec@ji9dh"

    .line 11
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v2, "007hi8dkfgdeUd+di"

    .line 12
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->getDensity(Landroid/content/Context;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "010hi]dkfgdeLd*di^he.de"

    .line 13
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->getDensityDpi(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "008dPdeBli gcecdkQi"

    .line 14
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "007%dgQeLdceidi)ei"

    .line 15
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getCPUType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "006Cfheddf+jYecdh"

    .line 16
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getFlavor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "008Nfh<iBdf%d2dcdh?i6fg"

    .line 17
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getSupport()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "018hi fhdfdced8dNegdkLe*dcVd4giSidcXecKh"

    .line 18
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDefaultIM()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "012.dedk)e<dcYdPgiJidcZec(h+fg"

    .line 19
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getIMList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "005+fcdhdfdkHh"

    .line 20
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "011^defgehdeTlIdceddf9d6ecdh"

    .line 21
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->isSmlt()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {v1}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v2

    sget-object v3, Lcom/mob/commons/w;->k:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/mob/commons/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v4

    sget-object v5, Lcom/mob/commons/w;->l:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/mob/commons/w;->b(Ljava/lang/String;J)J

    move-result-wide v6

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide v10, 0x9a7ec800L

    sub-long/2addr v8, v10

    cmp-long v4, v8, v6

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    const-string v2, "DEXTMT"

    .line 28
    invoke-virtual {p0, v2, v1}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 29
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/mob/commons/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v5, v1, v2}, Lcom/mob/commons/w;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 31
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/commons/a/d;->n()V

    return-void
.end method
