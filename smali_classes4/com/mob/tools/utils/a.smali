.class public Lcom/mob/tools/utils/a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation


# static fields
.field private static a:Lcom/mob/tools/utils/a;


# instance fields
.field private b:Landroid/location/Location;

.field private c:Landroid/location/Location;

.field private d:Landroid/location/LocationManager;

.field private e:Landroid/location/LocationListener;

.field private f:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/mob/tools/utils/a$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/a$1;-><init>(Lcom/mob/tools/utils/a;)V

    iput-object v0, p0, Lcom/mob/tools/utils/a;->e:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mob/tools/utils/a;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/mob/tools/utils/a;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mob/tools/utils/a;->c:Landroid/location/Location;

    return-object p1
.end method

.method private a(Z)Landroid/location/Location;
    .locals 4

    if-nez p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/mob/tools/utils/a;->b:Landroid/location/Location;

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mob/tools/utils/a;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 17
    new-instance p1, Landroid/location/Location;

    iget-object v0, p0, Lcom/mob/tools/utils/a;->b:Landroid/location/Location;

    invoke-direct {p1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/mob/tools/utils/a;)Landroid/location/LocationManager;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mob/tools/utils/a;->d:Landroid/location/LocationManager;

    return-object p0
.end method

.method public static a()Lcom/mob/tools/utils/a;
    .locals 2

    .line 4
    sget-object v0, Lcom/mob/tools/utils/a;->a:Lcom/mob/tools/utils/a;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/mob/tools/utils/a;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/a;->a:Lcom/mob/tools/utils/a;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/mob/tools/utils/a;

    invoke-direct {v1}, Lcom/mob/tools/utils/a;-><init>()V

    sput-object v1, Lcom/mob/tools/utils/a;->a:Lcom/mob/tools/utils/a;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/tools/utils/a;->a:Lcom/mob/tools/utils/a;

    return-object v0
.end method

.method private b(Landroid/content/Context;IIZ)Landroid/location/Location;
    .locals 10

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "039KcecjGgAcgdbcd gLdk*dhBcgOkIcdefefcddbcjdkdifffffcdgdgccejdfdefcccdjekffdidhdfekde"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4
    iget-object v2, p0, Lcom/mob/tools/utils/a;->d:Landroid/location/LocationManager;

    if-nez v2, :cond_0

    const-string v2, "location"

    .line 5
    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/mob/tools/utils/a;->d:Landroid/location/LocationManager;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/utils/a;->d:Landroid/location/LocationManager;

    if-nez v1, :cond_1

    return-object v0

    .line 7
    :cond_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 8
    :try_start_1
    iget-object v3, p0, Lcom/mob/tools/utils/a;->d:Landroid/location/LocationManager;

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    .line 9
    :try_start_2
    invoke-static {p1}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object v4

    const-string v3, "003Ree-dGef"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mob/tools/utils/a;->e:Landroid/location/LocationListener;

    invoke-interface/range {v4 .. v9}, Lcom/mob/tools/a/k;->a(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v3, p2

    .line 10
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 11
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 12
    :goto_1
    iget-object p2, p0, Lcom/mob/tools/utils/a;->d:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/mob/tools/utils/a;->e:Landroid/location/LocationListener;

    invoke-virtual {p2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    .line 13
    iget-object p2, p0, Lcom/mob/tools/utils/a;->d:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {p2, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_5

    .line 14
    :try_start_4
    invoke-static {p1}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object v1

    const-string p2, "007*cj;hc7ecdbcgci"

    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mob/tools/utils/a;->e:Landroid/location/LocationListener;

    invoke-interface/range {v1 .. v6}, Lcom/mob/tools/a/k;->a(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long p2, p3

    .line 15
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p2

    .line 16
    :try_start_5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 17
    :goto_4
    iget-object p2, p0, Lcom/mob/tools/utils/a;->d:Landroid/location/LocationManager;

    iget-object p3, p0, Lcom/mob/tools/utils/a;->e:Landroid/location/LocationListener;

    invoke-virtual {p2, p3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 18
    :cond_5
    monitor-exit p0

    goto :goto_6

    :goto_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    .line 19
    :cond_6
    :goto_6
    iget-object p2, p0, Lcom/mob/tools/utils/a;->c:Landroid/location/Location;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez p2, :cond_7

    if-eqz p4, :cond_7

    .line 20
    :try_start_7
    invoke-static {p1}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object p2

    const-string p3, "003^eeRd@ef"

    invoke-static {p3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/mob/tools/a/k;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p2

    iput-object p2, p0, Lcom/mob/tools/utils/a;->c:Landroid/location/Location;

    if-nez p2, :cond_7

    .line 21
    invoke-static {p1}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object p1

    const-string p2, "007<cj^hc4ecdbcgci"

    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mob/tools/a/k;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/a;->c:Landroid/location/Location;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p1

    .line 22
    :try_start_8
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 23
    :cond_7
    :goto_7
    iget-object p1, p0, Lcom/mob/tools/utils/a;->c:Landroid/location/Location;

    if-eqz p1, :cond_8

    .line 24
    new-instance p1, Landroid/location/Location;

    iget-object p2, p0, Lcom/mob/tools/utils/a;->c:Landroid/location/Location;

    invoke-direct {p1, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object p1, p0, Lcom/mob/tools/utils/a;->b:Landroid/location/Location;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mob/tools/utils/a;->f:J

    .line 26
    new-instance p1, Landroid/location/Location;

    iget-object p2, p0, Lcom/mob/tools/utils/a;->c:Landroid/location/Location;

    invoke-direct {p1, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 27
    :try_start_9
    iput-object v0, p0, Lcom/mob/tools/utils/a;->c:Landroid/location/Location;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v0, p1

    goto :goto_9

    :catchall_4
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_8

    :catchall_5
    move-exception p1

    .line 28
    :goto_8
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_8
    :goto_9
    return-object v0
.end method

.method static synthetic b(Lcom/mob/tools/utils/a;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/utils/a;->b:Landroid/location/Location;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;IIZ)Landroid/location/Location;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/utils/a;->a(Landroid/content/Context;IIZZ)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;IIZZ)Landroid/location/Location;
    .locals 2

    .line 11
    invoke-direct {p0, p5}, Lcom/mob/tools/utils/a;->a(Z)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    .line 12
    const-class v1, Lcom/mob/tools/utils/a;

    monitor-enter v1

    .line 13
    :try_start_0
    invoke-direct {p0, p5}, Lcom/mob/tools/utils/a;->a(Z)Landroid/location/Location;

    move-result-object p5

    if-nez p5, :cond_0

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mob/tools/utils/a;->b(Landroid/content/Context;IIZ)Landroid/location/Location;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p5

    .line 15
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-object v0
.end method
