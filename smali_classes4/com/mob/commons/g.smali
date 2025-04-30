.class public Lcom/mob/commons/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/commons/g;


# instance fields
.field private volatile b:Z

.field private volatile c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mob/commons/g;

    invoke-direct {v0}, Lcom/mob/commons/g;-><init>()V

    sput-object v0, Lcom/mob/commons/g;->a:Lcom/mob/commons/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mob/commons/g;->b:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/mob/commons/g;->c:J

    return-void
.end method

.method public static a()Lcom/mob/commons/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/commons/g;->a:Lcom/mob/commons/g;

    return-object v0
.end method

.method private a(Z)V
    .locals 5

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "005_figf]kTfhfj"

    .line 26
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "002Qfefi"

    .line 27
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mob/commons/g;->a(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "002IfeXj"

    .line 28
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2}, Lcom/mob/commons/g;->a(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "002lg"

    .line 29
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/mob/commons/g;->a(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "0027hfZg"

    .line 30
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/mob/commons/g;->a(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "002AfjBf"

    .line 31
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/mob/commons/g;->a(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "002-fnMg"

    .line 32
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/mob/commons/g;->a(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 34
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "004fKfkSgk"

    .line 35
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ECMT"

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "004j.fhQf!fh"

    .line 36
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "008j:fh@fkfJfgBnk"

    .line 37
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {}, Lcom/mob/commons/d;->a()Lcom/mob/commons/d;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p1}, Lcom/mob/commons/d;->a(JLjava/util/HashMap;)V

    return-void
.end method

.method private a(I)Z
    .locals 3

    .line 18
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    return v1

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->cx()Z

    move-result p1

    return p1

    .line 20
    :cond_2
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->isRooted()Z

    move-result p1

    return p1

    .line 21
    :cond_3
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->isWifiProxy()Z

    move-result p1

    return p1

    .line 22
    :cond_4
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->vpn()Z

    move-result p1

    return p1

    .line 23
    :cond_5
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->usbEnable()Z

    move-result p1

    return p1

    .line 24
    :cond_6
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->checkUA()Z

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_5

    .line 6
    aget-char v5, p1, v3

    const/16 v6, 0x31

    if-ne v5, v6, :cond_1

    .line 7
    invoke-direct {p0, v3}, Lcom/mob/commons/g;->a(I)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_1

    .line 8
    :cond_1
    aget-char v5, p1, v3

    const/16 v6, 0x30

    if-eq v5, v6, :cond_3

    .line 9
    aget-char v5, p1, v3

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_2

    .line 10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    aget-char v6, p1, v3

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    return v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 16
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/mob/commons/g;->a(I)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v3, v5

    goto :goto_2

    :cond_7
    or-int/2addr v4, v3

    if-eqz v4, :cond_6

    return v0

    :cond_8
    return v2

    :catchall_0
    move-exception p1

    .line 17
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    return v0
.end method

.method private declared-synchronized c()Z
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "004k[fiWk7fn"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 2
    iget-wide v2, p0, Lcom/mob/commons/g;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/mob/commons/g;->c:J

    sub-long/2addr v2, v6

    cmp-long v6, v2, v0

    if-gtz v6, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/mob/commons/g;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "002]fiEj"

    .line 4
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "006Iimiminininin"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-direct {p0, v0}, Lcom/mob/commons/g;->a(Ljava/lang/String;)Z

    move-result v0

    .line 6
    iget-wide v1, p0, Lcom/mob/commons/g;->c:J

    cmp-long v3, v1, v4

    if-eqz v3, :cond_1

    iget-boolean v1, p0, Lcom/mob/commons/g;->b:Z

    if-eq v0, v1, :cond_2

    .line 7
    :cond_1
    invoke-direct {p0, v0}, Lcom/mob/commons/g;->a(Z)V

    .line 8
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mob/commons/g;->c:J

    .line 9
    iput-boolean v0, p0, Lcom/mob/commons/g;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x1

    .line 12
    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/g;->c()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
