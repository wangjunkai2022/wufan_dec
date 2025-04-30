.class public Lcom/mob/commons/t;
.super Ljava/lang/Object;


# static fields
.field private static volatile e:Lcom/mob/commons/t;


# instance fields
.field private volatile a:Ljava/lang/String;

.field private volatile b:Ljava/lang/String;

.field private volatile c:Ljava/lang/String;

.field private volatile d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mob/commons/t;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/mob/commons/t;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/mob/commons/t;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/mob/commons/t;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/mob/commons/t;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/commons/t;->e:Lcom/mob/commons/t;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mob/commons/t;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/commons/t;->e:Lcom/mob/commons/t;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mob/commons/t;

    invoke-direct {v1}, Lcom/mob/commons/t;-><init>()V

    sput-object v1, Lcom/mob/commons/t;->e:Lcom/mob/commons/t;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/commons/t;->e:Lcom/mob/commons/t;

    return-object v0
.end method

.method private a(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .line 14
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit16 p1, p1, 0x80

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private a(Ljava/util/UUID;)[B
    .locals 9

    .line 10
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 11
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    const/16 p1, 0x10

    new-array p1, p1, [B

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    rsub-int/lit8 v6, v4, 0x7

    mul-int/lit8 v6, v6, 0x8

    ushr-long v7, v0, v6

    long-to-int v5, v7

    int-to-byte v5, v5

    .line 12
    aput-byte v5, p1, v4

    add-int/lit8 v5, v4, 0x8

    ushr-long v6, v2, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 13
    aput-byte v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rddd gdmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private h()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mob/commons/t;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "12"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mob/commons/t;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mob/commons/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/mob/commons/t;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "22"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mob/commons/t;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mob/commons/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/mob/commons/t;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "32"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/commons/t;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mob/commons/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "42"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mob/commons/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rddd gen rd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getOD()Ljava/lang/String;

    move-result-object v0

    const-string v1, "00000000-0000-0000-0000-000000000000"

    const-string v2, "00000000000000000000000000000000"

    .line 2
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/commons/w;->e()Lcom/mob/commons/a$c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/mob/commons/a$c;->g()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/mob/commons/a$c;->g()Ljava/util/List;

    move-result-object v1

    .line 6
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iput-object v0, p0, Lcom/mob/commons/t;->d:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/mob/commons/t;->d:Ljava/lang/String;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const-string v2, "061<cbbjhaPh?gcdcgcBgEdfgfff6gSbecjXh6cbgcdebe*g[df:f7hgcjbcddbcdagfgchagfehcjUbNddbjbebjfcdabedacjcadeddfc[f1eiejeibegcejejgfgfbeejdc"

    .line 2
    invoke-static {v2}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/util/UUID;

    const-wide v4, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v6, -0x5c37d8232ae2de13L

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    const/16 v4, 0x1c

    .line 4
    :try_start_0
    new-instance v11, Landroid/media/MediaDrm;

    invoke-direct {v11, v3}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getAInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1, v5}, Lcom/mob/tools/a/h;->a(Landroid/content/Context;I)Lcom/mob/tools/a/h;

    move-result-object v5

    .line 6
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v8, "native_setup"

    const/4 v1, 0x3

    new-array v9, v1, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v9, v12

    const-class v7, [B

    const/4 v10, 0x1

    aput-object v7, v9, v10

    const-class v7, Ljava/lang/String;

    const/4 v13, 0x2

    aput-object v7, v9, v13

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v7, v1, v12

    .line 7
    invoke-direct {p0, v3}, Lcom/mob/commons/t;->a(Ljava/util/UUID;)[B

    move-result-object v3

    aput-object v3, v1, v10

    aput-object v2, v1, v13

    move-object v7, v11

    move-object v10, v1

    .line 8
    invoke-virtual/range {v5 .. v10}, Lcom/mob/tools/a/h;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceUniqueId"

    .line 9
    invoke-virtual {v11, v1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 10
    array-length v2, v1

    invoke-static {v1, v12, v2}, Lcom/mob/tools/utils/Data;->byteToHex([BII)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lt v0, v4, :cond_1

    .line 11
    :try_start_2
    invoke-virtual {v11}, Landroid/media/MediaDrm;->close()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v11}, Landroid/media/MediaDrm;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 13
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, v11

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 14
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    .line 15
    :try_start_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_2

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {v1}, Landroid/media/MediaDrm;->close()V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v1}, Landroid/media/MediaDrm;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v1

    .line 18
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 19
    :cond_3
    :goto_2
    throw v0
.end method

.method private k()Ljava/lang/String;
    .locals 12

    const-string v0, "key_pddt"

    const-string v1, "003)bdcbcb"

    .line 1
    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/commons/b;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 2
    :try_start_0
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/mob/commons/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v4, "key_lgpdt"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 4
    :try_start_2
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/mob/commons/w;->b(Ljava/lang/String;J)J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/32 v8, 0x240c8400

    :try_start_3
    const-string v3, "006^debgdeddbd c"

    .line 5
    invoke-static {v3}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v10, 0x93a80

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    .line 6
    :catchall_0
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    cmp-long v3, v10, v8

    if-gez v3, :cond_0

    .line 7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v2, "rddd che p useable"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v1

    :cond_0
    const-string v3, "004hJbcPh$ca"

    .line 8
    invoke-static {v3}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x19

    if-le v3, v6, :cond_2

    :cond_1
    const-string v3, "006a-babddbXg1bc"

    .line 9
    invoke-static {v3}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-gt v3, v6, :cond_3

    :cond_2
    return-object v2

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/mob/commons/t;->l()Ljava/util/List;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 14
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ge v7, v9, :cond_5

    .line 15
    :try_start_5
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 16
    invoke-virtual {v6, v9, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 17
    invoke-direct {p0, v10}, Lcom/mob/commons/t;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    .line 18
    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 19
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v9, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    move-exception v9

    .line 21
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    if-lez v8, :cond_6

    .line 22
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 23
    invoke-virtual {v2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mob/commons/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Lcom/mob/commons/w;->a(Ljava/lang/String;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_6
    move-object v2, v1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 28
    :goto_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_7
    :goto_3
    return-object v2
.end method

.method private l()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/a/b;->a(Landroid/content/Context;)Lcom/mob/tools/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/a/b;->F()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "com.google.android"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.miui.packageinstaller"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/commons/t;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rddd saveRD pre is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mob/commons/t;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cur is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 9
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    const-string v1, "key_rdt2"

    invoke-virtual {v0, v1, p1}, Lcom/mob/commons/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "2"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/commons/t;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key_rdt2"

    invoke-virtual {v0, v2, v1}, Lcom/mob/commons/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object v0, p0, Lcom/mob/commons/t;->b:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/t;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/commons/t;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/t;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    const-string v1, "key_rdt2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/commons/t;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/mob/commons/t;->h()Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/mob/commons/t;->b:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v1

    const-string v2, "key_rdt2"

    invoke-virtual {v1, v2, v0}, Lcom/mob/commons/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/t;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/mob/commons/t;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/t;->c:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/t;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/t;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lcom/mob/commons/t;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/t;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mob/commons/t;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
