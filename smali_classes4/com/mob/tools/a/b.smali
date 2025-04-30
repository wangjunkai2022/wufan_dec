.class public Lcom/mob/tools/a/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/mob/tools/a/b;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Ljava/lang/Object;

.field private d:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/mob/tools/a/b;->d:J

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static U()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/commons/r;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static V()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/commons/r;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mob/tools/a/b;
    .locals 2

    const-class v0, Lcom/mob/tools/a/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mob/tools/a/b;->b:Lcom/mob/tools/a/b;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 2
    new-instance v1, Lcom/mob/tools/a/b;

    invoke-direct {v1, p0}, Lcom/mob/tools/a/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/tools/a/b;->b:Lcom/mob/tools/a/b;

    .line 3
    :cond_0
    sget-object p0, Lcom/mob/tools/a/b;->b:Lcom/mob/tools/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "017ZhfdfZj:dfeleddfdkffelgedcdkLdWde2li"

    .line 6
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "010;ff<id:gedcdk?dLde^li"

    .line 7
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "004iSdl?i%dg"

    .line 8
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v2

    new-array p0, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, p0, v2

    invoke-static {v0, v1, v4, p0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object p1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/a/k;->a()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 107
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x0

    .line 108
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 0

    .line 109
    :try_start_0
    iget-object p1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/mob/tools/a/k;->a(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 110
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(Ljava/io/File;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 40
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    long-to-int p1, v5

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 43
    :goto_0
    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-lez v5, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 45
    iget-object v5, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/mob/tools/a/b;->a(Ljava/lang/String;[B)Ljava/util/HashMap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v0, v3, v2

    aput-object v4, v3, v1

    .line 46
    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v4, v0

    .line 47
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v4, p1, v2

    aput-object v0, p1, v1

    .line 48
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_2
    move-exception p1

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v4, v3, v2

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 49
    throw p1

    .line 50
    :cond_1
    :goto_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private a(Ljava/lang/String;[B)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 53
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 54
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[J)V
    .locals 3

    .line 87
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    const-string v0, " \\d+ "

    .line 88
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 89
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    aput-wide v1, p3, p2

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 91
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    const/4 v0, 0x1

    aput-wide p1, p3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 92
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v1, "004*eldfdkfg"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ResHelper;->saveObjectToFile(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 63
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .line 64
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

.method private aZ()Z
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "025g5fgdifg.dilg!df(eeg\'ehdc ei4dhdcfgSi:dheldfOeQdj"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0x10

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "012gh-df2d8df:gHedecdgdfedSg"

    .line 2
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "016gh(df2dMdfPg1edecdgdfed8g3fcdedk;g"

    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x2

    const-string v5, "017gh.dfFdYdf*gFedecdgdfed9g[dlfcdedkXg"

    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "006gQfgfcdedkLg"

    .line 3
    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "008gNfgdc8gPfcdedk@g"

    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "012gFfgdifg_dilgOfcdedk+g"

    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "017gCfgdifgTdilg)fcdedk?gPel1i_dlHdg"

    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "021gTfgdifg<dilg=fcdedk;g9fhdfdeedfgdffhTig"

    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "016g+fgdifgDdilg6fgChg>dlfcdedkEg"

    .line 4
    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "025g^fgdifgVdilgYdcfgdhPg;fdIiUhidk8iihThidhecec;dg"

    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "013g5fgdifgKdilg3dlfcdedk_g"

    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "013gNfgdifg0dilg>fgfcdedk8g"

    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "012gji]dk!h_ecdhUgIfcdedk0g"

    .line 5
    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "006g[dgdfdgWci"

    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "005gh!dfYdPdf"

    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "004ghij"

    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 6
    aget-object v5, v3, v4

    .line 7
    new-instance v6, Ljava/io/File;

    const-string v7, "002Gfgdc"

    invoke-static {v7}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    .line 8
    aget-object v5, v3, v4

    .line 9
    new-instance v6, Ljava/io/File;

    const-string v7, "007Sfcdcfgdifcecdl"

    invoke-static {v7}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_6

    .line 10
    aget-object v5, v3, v4

    .line 11
    new-instance v6, Ljava/io/File;

    const-string v7, "006l,dfffdefgdj"

    invoke-static {v7}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_5

    return v2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 12
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_6
    return v0
.end method

.method private b(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->aK()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catchall_0
    move-exception p1

    .line 25
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MobPush checkIsInMainProcess: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private declared-synchronized b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 18
    :try_start_0
    iget-object p1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/a/k;->b()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x0

    .line 20
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(ZZZ)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lcom/mob/tools/a/j;->a(Landroid/content/Context;ZZZ)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 13
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/utils/DeviceHelper;->getAInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p1, p2}, Lcom/mob/tools/a/h;->a(Landroid/content/Context;I)Lcom/mob/tools/a/h;

    move-result-object p1

    iget-object p2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/mob/tools/a/h;->a(Landroid/content/Context;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 14
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method private ba()Ljava/lang/String;
    .locals 5

    const-string v0, ":"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->f()Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->SHA1(Ljava/lang/String;)[B

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->byteToHex([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method

.method private bb()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, ":"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->bc()Ljava/util/HashMap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const-string v3, "010hijOdedg$i<egdkfhec"

    .line 3
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    :try_start_1
    const-string v3, "iemt"

    .line 4
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_2

    const-string v3, "snmt"

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_2
    const-string v4, "005l;ec[hi\'ed"

    .line 7
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->SHA1(Ljava/lang/String;)[B

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->byteToHex([B)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 11
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    return-object v1
.end method

.method private bc()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v2, "0140dgec;llghZfcfg(g!elRhNdcdeRh"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v2, :cond_3

    .line 3
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_0
    move-object v3, v0

    goto :goto_0

    :catchall_1
    move-object v2, v0

    move-object v3, v2

    :catchall_2
    :goto_0
    move-object v4, v0

    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_0

    .line 6
    :try_start_4
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7
    :cond_0
    invoke-direct {p0, v1}, Lcom/mob/tools/a/b;->a(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v4

    .line 8
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "010hij5dedgLi]egdkfhec"

    .line 9
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    new-array v4, v7, [Ljava/io/Closeable;

    aput-object v2, v4, v6

    aput-object v3, v4, v5

    .line 10
    invoke-static {v4}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return-object v1

    :cond_2
    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v6

    aput-object v3, v1, v5

    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_3
    move-exception v1

    .line 11
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v6

    aput-object v3, v1, v5

    .line 12
    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_4
    move-exception v1

    new-array v4, v7, [Ljava/io/Closeable;

    aput-object v2, v4, v6

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 13
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v1

    .line 14
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-object v0
.end method

.method private bd()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->G()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    const-string v2, "008=eh)cDdfdhTi!ehfihj"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/io/File;

    const-string v2, "003Bel1h?dj"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v2, "003;elYhQdj"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getCacheRootFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v1, "003Pel8hTdj"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getCacheRootFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 11
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 12
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 14
    instance-of v5, v4, [C

    if-eqz v5, :cond_2

    .line 15
    check-cast v4, [C

    .line 16
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v0, v3, v2

    .line 17
    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_0
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 18
    throw v1
.end method

.method private be()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v1, "004+eldfdkfg"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->readObjectFromFile(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 3
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v1, "004Xeldfdkfg"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private bf()Ljava/lang/Object;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mob/tools/a/b;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/tools/a/b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    const-string v0, "041Gdfdk6hSdhecde0h0el_ei<dhUlSdefgfgdeecdkelejgggggdehehddggflejgeehgdddekflggejeiegflef"

    .line 3
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "phone"

    .line 4
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "015NffHid.gg i)ededekecdgdf_dXdeecdk"

    .line 5
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/mob/tools/a/b;->c:Ljava/lang/Object;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/a/b;->d:J

    .line 8
    iget-object v0, p0, Lcom/mob/tools/a/b;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 9
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private c(ZZZ)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->F()Ljava/util/ArrayList;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 16
    invoke-direct {p0}, Lcom/mob/tools/a/b;->be()Ljava/util/HashMap;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 17
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v8, 0x1

    .line 18
    :try_start_1
    iget-object v9, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v9

    invoke-virtual {v9, v8, v7, v5}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(ZLjava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    .line 19
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v7, v3

    :goto_2
    if-eqz v7, :cond_9

    if-eqz p1, :cond_2

    .line 20
    invoke-direct {p0, v7}, Lcom/mob/tools/a/b;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 21
    invoke-direct {p0, v7}, Lcom/mob/tools/a/b;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    .line 22
    :cond_3
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v10, "003eQdjff"

    .line 23
    invoke-static {v10}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_7

    if-eqz v4, :cond_4

    .line 24
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v10}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_3

    .line 25
    :cond_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v10, v3

    .line 26
    :goto_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v11, :cond_6

    .line 27
    :try_start_3
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 28
    :catchall_1
    :try_start_4
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v10, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v2, v6, v11, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-object v6, v3

    :goto_4
    if-nez v6, :cond_5

    .line 29
    :try_start_5
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_5

    :cond_5
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5
    move-object v10, v6

    .line 30
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    :cond_6
    const-string v8, "004GdkdfSli"

    .line 31
    invoke-static {v8}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v8, "007ji[dhfgdeecdk"

    .line 32
    invoke-static {v8}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "006iYdkdffced8i"

    .line 33
    invoke-static {v8}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v10, v10, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v10, :cond_8

    const-string v10, "1"

    goto :goto_6

    :cond_8
    const-string v10, "0"

    :goto_6
    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "016CfhdedhfgTdEegdkfg-dBdfededeide7li"

    .line 34
    invoke-static {v8}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, v7, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "014@eddffgDdKee[eh$df^diOeide_li"

    .line 35
    invoke-static {v8}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz p3, :cond_1

    if-eqz v6, :cond_1

    .line 37
    invoke-direct {p0, v4}, Lcom/mob/tools/a/b;->a(Ljava/util/HashMap;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_1

    :cond_a
    return-object v1

    :catchall_3
    move-exception p1

    .line 38
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->bc()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private l(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v1, "003<elRh>dj"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getCacheRootFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 5
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v0, p1, v2

    .line 10
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 11
    throw p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_0

    const-string v2, ".*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_0

    .line 4
    :try_start_1
    invoke-static {v1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    return-object v1

    .line 5
    :catchall_0
    :cond_1
    :goto_0
    :try_start_2
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-lez v2, :cond_2

    .line 6
    :try_start_3
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 7
    :try_start_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_1
    return-object v1

    :catchall_2
    move-exception v0

    .line 9
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const-string v0, ""

    return-object v0
.end method

.method public D()I
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 4
    :cond_0
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return v0
.end method

.method public E()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->B()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const-string v0, "1.0"

    return-object v0
.end method

.method public F()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "007hi%fg*d?dhecdi"

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "005li]degcdc"

    .line 2
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "016elDiceddefgXd1icDeTdfdgdjdfffGi3fg"

    .line 3
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/a/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "014Yff9idJegdkBe8dcSd[eh6dKdhHiWdfPl"

    .line 4
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    .line 5
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "utf-8"

    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 6
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-le v6, v7, :cond_0

    .line 10
    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v8, "008e=dfdgdjdfff[if"

    .line 11
    invoke-static {v8}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 12
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 14
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 17
    :try_start_1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 18
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_3

    .line 19
    :try_start_3
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_1
    move-exception v1

    if-eqz v2, :cond_2

    :try_start_4
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 20
    :catchall_2
    :cond_2
    throw v1

    :catchall_3
    :cond_3
    :goto_1
    return-object v1
.end method

.method public G()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, v2, :cond_0

    const-string v1, "mounted"

    .line 2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized I()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->j()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_2

    const-string v0, "035BdfdkMhPdhecdeGhLel-eiOdhZl*defgfgdeecdkelgegdejfiddghhdflefgdddeheiejeigd"

    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "phone"

    .line 4
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 5
    monitor-exit p0

    return-object v1

    .line 6
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/mob/tools/a/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/16 v0, 0xf

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v0, :cond_4

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->J()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 10
    array-length v3, v2

    if-lez v3, :cond_4

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v0, :cond_4

    .line 11
    aget-object v1, v2, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized J()[Ljava/lang/String;
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->j()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_3

    const-string v0, "0350dfdkJhYdhecdeZh$elMei\'dh,l%defgfgdeecdkelgegdejfiddghhdflefgdddeheiejeigd"

    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "021PfffgNl6elfgde l7elec]ei2dhdfHd=ecdheldeQlNfgde"

    .line 4
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ","

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 9
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 12
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :cond_3
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public K()I
    .locals 4

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->bf()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "016Ygg9hl4dfgg1iLededekecdgdf,d%deecdk"

    .line 2
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0065ff@idUggdeWh"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public L()I
    .locals 4

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->bf()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "016?ggIhlNdfgg]i9ededekecdgdfCdMdeecdk"

    .line 2
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0063ff;id^ekdfdg"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public M()I
    .locals 4

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->bf()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "016Kgg.hlEdfgg6i<ededekecdgdf9dDdeecdk"

    .line 2
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "006PffOid:ghfgdg"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public N()I
    .locals 4

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->bf()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "016JggPhlKdfggZiVededekecdgdfAd2deecdk"

    .line 2
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "022[ffYid fjdffg_i?eh(d\'dfFd]deecdkekdf_d>deHdKdc4hi"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public O()I
    .locals 4

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->bf()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "016Vgg0hl=dfggFi)ededekecdgdf d deecdk"

    .line 2
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "023$ff1idZfjdffgEiLeh6dJdf>d*deecdkekecdkffde9d.dcXhi"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public P()I
    .locals 4

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->bf()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "016!gg=hlUdfgg2i$ededekecdgdf7d-deecdk"

    .line 2
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "0169ffOid$fjdffg-i0ehBdOdfXd$deecdkeg\'h"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public Q()I
    .locals 4

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->bf()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "016<ggIhl dfgg0i3ededekecdgdfPdFdeecdk"

    .line 2
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "0114ffVidYehdifgZdil(egBh"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public R()I
    .locals 4

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->bf()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "016Ggg^hl7dfgg,i_ededekecdgdfQd*deecdk"

    .line 2
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "012+ff8id8ef8idIfdecdhdjeg\'h"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public S()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "041Zdfdk3h5dhecde)h4el+eiHdhEl1defgfgdeecdkelejgggggdehehddggflejgeehgdddekflggejeiegflef"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->aq()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "phone"

    .line 2
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "022Rff?id)ef*i<deffTcNfcecdhdedkffggTiBededegdkfhec"

    .line 3
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "006+ffNidNggde?h"

    .line 7
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v6, "0067ffKid0ekdfdg"

    .line 8
    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "007?ffIid*gefgfgde"

    .line 9
    invoke-static {v7}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "006WffUid7ghfgdg"

    .line 10
    invoke-static {v8}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v3, v8, v9}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "014?ff0idHef*id@fdecdhdjeidi\'ei"

    .line 11
    invoke-static {v9}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v3, v9, v10}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v5, :cond_0

    if-eq v6, v5, :cond_0

    .line 12
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v9, "004Idg]iGeded"

    .line 13
    invoke-static {v9}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "003Beddfdg"

    .line 14
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "004<dhfgfgde"

    .line 15
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "003eZfgdg"

    .line 16
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "011-dkZidEfdecdhdjeidi;ei"

    .line 17
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 19
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_2

    return-object v1

    :catchall_0
    move-exception v0

    .line 20
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public T()Ljava/lang/String;
    .locals 3

    const-string v0, "009]eeeffigdfkegefgdfi"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "uimode"

    .line 2
    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "009Oeeeffigdfkegefgdfi"

    goto :goto_0

    :pswitch_0
    const-string v1, "009Lgfgehdgdejfiehgdei"

    .line 4
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const-string v1, "005Yhcejeigghd"

    .line 5
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const-string v1, "009Oejghghekegejefgggd"

    .line 6
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    const-string v1, "010Yeigdekgdgfegehegflef"

    .line 7
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    const-string v1, "003<ggejge"

    .line 8
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    const-string v1, "004Afigdehhj"

    .line 9
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    const-string v1, "0059efflddeeeg"

    .line 10
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 11
    :goto_0
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 12
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "036!dfdk2hGdhecdeCh]el4ei!dh0lCdefgfgdeecdkelejgggggdehehddhcegfkegddeheiejeigd"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wifi"

    .line 2
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "017>ffIid]ggecdkdk2i8dg!d;deecdkegdkfhec"

    .line 3
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "bsmt"

    .line 5
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ssmt"

    .line 6
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    const-string v3, "013<ff0id?hddeOhhi3dkehehegfi"

    .line 7
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "006cHdeRhhiVdk"

    .line 8
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    const-string v3, "012BffGid6ekdedkdjeh*eiih"

    .line 9
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "spmt"

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :try_start_3
    const-string v3, "012;ffWidIef\'idGfdecdhdjegLh"

    .line 11
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "009WdkXid4fdecdhdjeg5h"

    .line 12
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :try_start_4
    const-string v3, "007BffTid:gefgfgde"

    .line 13
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "0051ed8iji0ed"

    .line 14
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :try_start_5
    const-string v3, "012?ff,id fkdh;ikCdcWi*dkdgdi"

    .line 15
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "0095fhdhMik;dc7i^dkdgdi"

    .line 16
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    return-object v1

    :catchall_5
    move-exception v0

    .line 17
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public X()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "036Adfdk1hJdhecde6hDel6eiLdhHlKdefgfgdeecdkelejgggggdehehddhcegfkegddeheiejeigd"

    .line 1
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "wifi"

    .line 2
    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "014Zff!idSehdgdfdkge9iWfgdcedUdTfg"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/16 v4, 0x1b

    const-string v5, ","

    if-le v2, v4, :cond_2

    :try_start_1
    const-string v2, "086TehehegfijefjehehegfijedgdfAe\'dffcdeeddeWdDde5iSfgjeedKiji$edjefhdhQikPdc^i-dkdgdijedgJcAdfdkdkGi!edhcde.hdcMjedg:i\'dkEdiUdhfkdh;ikGfejedg%iNdk1diMdhfkdh4ik?gljeLd]deHli0fg2d^dfKle"

    .line 5
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v4, "031ji^dkdcFiFefdfZliVjeicec%ei_dhdf3d:ecdhfkdhde1iXdk.h!eddiefdf)li"

    .line 6
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v2, "SSID,BSSID,hessid,anqpDomainId,capabilities,level,frequency,channelWidth,centerFreq0,centerFreq1,timestamp,seen,isAutoJoinCandidate,numIpConfigFailures,blackListTimestamp,untrusted,numConnection,numUsage,distanceCm,distanceSdCm,flags"

    .line 7
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v4, "039)fddefhdeehfgdeSh)jeHjiLdkdcQiHefdfJliOjeec0ei8dhdfXdKecdhfkdhdeXi?dk;hMeddiefdfFli"

    .line 8
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 9
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 11
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 12
    array-length v8, v2

    move-object v10, v0

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_7

    aget-object v11, v2, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 13
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "004Tehehegfi"

    .line 14
    invoke-static {v12}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 15
    invoke-static {v6, v11}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    :try_start_3
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v12

    goto :goto_4

    .line 17
    :cond_3
    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-object v10, v12

    goto :goto_3

    :cond_4
    :try_start_4
    const-string v12, "012Jdgdf)e_dffcdeeddeFd1de7iPfg"

    .line 18
    invoke-static {v12}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 19
    invoke-static {v6, v11}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_5

    const-string v13, "[IBSS]"

    .line 20
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v10, v0

    goto :goto_4

    .line 21
    :cond_5
    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 22
    :cond_6
    invoke-static {v6, v11}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 23
    :cond_7
    :goto_4
    :try_start_5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_1

    .line 24
    :cond_8
    array-length v8, v4

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_a

    aget-object v10, v4, v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 25
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 26
    invoke-static {v6, v10}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_9

    move-object v11, v0

    goto :goto_6

    .line 27
    :cond_9
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_6
    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_a
    :try_start_7
    const-string v8, "018@defggjfegkglglRl8dgge]iZfgYe1ecdk,hiSdh"

    .line 28
    invoke-static {v8}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "021FdefggjfegkglglgidggeeieigeOi-fgCeDecdk%hiOdh"

    .line 29
    invoke-static {v9}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 30
    :catchall_3
    :try_start_8
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-ge v8, v9, :cond_c

    const-string v8, "009Zdfdk@ke!ekdedk8i2fg"

    .line 31
    invoke-static {v8}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const-string v8, "009VdfdkGkeWekdedkPi5fg"

    .line 32
    invoke-static {v8}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v6, :cond_b

    move-object v9, v0

    goto :goto_7

    :cond_b
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_7
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 33
    :catchall_4
    :cond_c
    :try_start_9
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto/16 :goto_1

    :cond_d
    return-object v5

    :catchall_5
    move-exception v1

    .line 34
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_e
    return-object v0
.end method

.method public Y()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "036.dfdk)hPdhecde^h(elTeiBdhFl!defgfgdeecdkelgghdejefhkgdddhcegfkegddeheiejeigd"

    .line 1
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "wifi"

    .line 2
    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "009Kfg8d+dfdh?dZehdgdfdk"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    return v0
.end method

.method public Z()Ljava/util/HashMap;
    .locals 9
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
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "013geHdhecdg:g.dg,eRdcdedkfhec"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "010e)dhecdg]i.fgfgecdhfg"

    .line 5
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    :cond_0
    :goto_0
    move-object v5, v4

    .line 6
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v5, :cond_0

    .line 8
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "009eWdhecdgZi7fgfgecdh"

    .line 10
    invoke-static {v7}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v5, :cond_3

    .line 11
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :cond_4
    const-string v7, ":"

    .line 13
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 14
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    const/4 v7, 0x0

    if-nez v5, :cond_5

    .line 15
    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 16
    :cond_5
    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 17
    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 18
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 19
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_2
    return-object v0
.end method

.method public a(IIZ)Landroid/location/Location;
    .locals 2

    :try_start_0
    const-string v0, "039TdfdkOhDdhecde)h)elVeiAdhGlAdefgfgdeecdkelejgggggdehehddfkegefgdddekflggejeiegflef"

    .line 68
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    const-string v0, "045%dfdk6h7dhecde,h6elQeiCdhFlYdefgfgdeecdkelejgggggdehehddfjejgghjhkgefleeeffiddekflggejeiegflef"

    .line 69
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 71
    invoke-static {}, Lcom/mob/tools/utils/a;->a()Lcom/mob/tools/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/mob/tools/utils/a;->a(Landroid/content/Context;IIZ)Landroid/location/Location;

    move-result-object p1

    return-object p1

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "Method \'getLocation\' can not be called from Main Thread"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 73
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)Ljava/lang/String;
    .locals 6

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    xor-long/2addr v0, v2

    .line 30
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 32
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_2

    const/4 v4, 0x2

    .line 33
    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    rem-int/2addr v5, v4

    if-nez v5, :cond_0

    const-string v4, "0047dgNc0dfdh"

    goto :goto_1

    :cond_0
    const-string v4, "0036dkdcMl"

    :goto_1
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "004EdgEc=dfdh"

    .line 34
    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1a

    .line 35
    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    add-int/lit8 v5, v3, 0x1

    .line 36
    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 37
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->insert(II)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x28

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\n"

    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-static {p2, p1}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    .line 11
    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v1
.end method

.method public a(Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->bb()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 14
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v1, v0

    :goto_0
    const/16 v2, 0x28

    if-nez p1, :cond_1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v2, :cond_1

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->ba()Ljava/lang/String;

    move-result-object v1

    .line 17
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v2, :cond_2

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/mob/tools/a/b;->bd()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 20
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 21
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v2, :cond_3

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v2, :cond_5

    .line 24
    :cond_4
    invoke-virtual {p0, v2}, Lcom/mob/tools/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    .line 25
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-direct {p0, v0}, Lcom/mob/tools/a/b;->l(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 27
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return-object v0
.end method

.method public a(ZZZ)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 55
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/mob/tools/a/b;->c(ZZZ)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    .line 57
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mob/tools/a/b;->b(ZZZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mob/tools/a/b;->c(ZZZ)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 60
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public a(Landroid/content/BroadcastReceiver;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 93
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "0182dcdkdh_iKffdefgEdiBdhgeViLdg4i_deCjiRdh"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    new-array p1, v2, [Ljava/lang/Class;

    const-class v2, Landroid/content/BroadcastReceiver;

    aput-object v2, p1, v4

    invoke-static {v0, v1, v3, p1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 94
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 95
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge v0, v1, :cond_0

    .line 96
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "016^dhUi1ffdefg+di_dhgeFiMdgYi?deQjiRdh"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p2, v5, v2

    new-array p1, v4, [Ljava/lang/Class;

    const-class p2, Landroid/content/BroadcastReceiver;

    aput-object p2, p1, v3

    const-class p2, Landroid/content/IntentFilter;

    aput-object p2, p1, v2

    invoke-static {v0, v1, v5, p1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "016[dhTi)ffdefg)diWdhge<i1dgUi0de+jiRdh"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object p2, v6, v2

    const/4 p1, 0x4

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v4

    new-array p1, v5, [Ljava/lang/Class;

    const-class p2, Landroid/content/BroadcastReceiver;

    aput-object p2, p1, v3

    const-class p2, Landroid/content/IntentFilter;

    aput-object p2, p1, v2

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p2, p1, v4

    .line 99
    invoke-static {v0, v1, v6, p1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 100
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public a(Landroid/os/Handler$Callback;)V
    .locals 9

    .line 74
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/mob/tools/a/b$1;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/a/b$1;-><init>(Lcom/mob/tools/a/b;Landroid/os/Handler$Callback;)V

    .line 77
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ge v2, v3, :cond_0

    .line 78
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v3, "016Zdh2iVffdefg6di*dhgeEi<dgMi de.jiOdh"

    .line 79
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v1, v7, v5

    aput-object v0, v7, v4

    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Landroid/content/BroadcastReceiver;

    aput-object v1, v0, v5

    const-class v1, Landroid/content/IntentFilter;

    aput-object v1, v0, v4

    .line 80
    invoke-static {v2, v3, v7, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v3, "016]dhMi2ffdefgYdi(dhgeYi$dgKi de)ji@dh"

    .line 82
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v1, v8, v5

    aput-object v0, v8, v4

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v6

    new-array v0, v7, [Ljava/lang/Class;

    const-class v1, Landroid/content/BroadcastReceiver;

    aput-object v1, v0, v5

    const-class v1, Landroid/content/IntentFilter;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    .line 83
    invoke-static {v2, v3, v8, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 84
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    if-eqz p1, :cond_1

    .line 85
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 86
    invoke-interface {p1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    const-string v0, "input_method"

    .line 65
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public a(Ljava/util/concurrent/BlockingQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/mob/tools/a/b$2;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/a/b$2;-><init>(Lcom/mob/tools/a/b;Ljava/util/concurrent/BlockingQueue;)V

    .line 102
    :try_start_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 103
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/a/b;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 105
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 4

    .line 4
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "009di\'fgTdJhidjIi7difg"

    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/mob/tools/a/b;->aZ()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public aA()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "017-dhecelfcecdfdh%h8elVeSeddfQdSfhecdhAl"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public aB()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/NtFetcher;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/NtFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/NtFetcher;->getDtNtType()I

    move-result v0

    return v0
.end method

.method public aC()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    .line 3
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "001g"

    .line 5
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public aD()Ljava/util/HashMap;
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
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->aC()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "004Adkdf3li"

    .line 4
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "003eAdjff"

    .line 5
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public aE()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "input_method"

    .line 2
    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v2, :cond_0

    .line 5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v4, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "0043dkdfPli"

    .line 7
    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "003eHdjff"

    .line 8
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    return-object v0
.end method

.method public aF()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public aG()Z
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Lcom/mob/tools/utils/e;

    invoke-direct {v2}, Lcom/mob/tools/utils/e;-><init>()V

    .line 2
    iget-object v3, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/e;->a(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v5, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/mob/tools/utils/e;->b(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    if-lt v3, v0, :cond_2

    return v4

    .line 4
    :cond_2
    iget-object v5, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/mob/tools/utils/e;->c(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    if-lt v3, v0, :cond_4

    return v4

    .line 5
    :cond_4
    iget-object v5, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/mob/tools/utils/e;->d(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_5
    if-lt v3, v0, :cond_6

    return v4

    .line 6
    :cond_6
    iget-object v5, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/mob/tools/utils/e;->e(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    :cond_7
    if-lt v3, v0, :cond_8

    return v4

    :cond_8
    if-lt v3, v0, :cond_9

    return v4

    .line 7
    :cond_9
    iget-object v5, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/mob/tools/utils/e;->f(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v4, :cond_a

    add-int/lit8 v3, v3, 0x1

    :cond_a
    if-lt v3, v0, :cond_b

    return v4

    .line 8
    :cond_b
    iget-object v5, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/mob/tools/utils/e;->g(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v4, :cond_c

    add-int/lit8 v3, v3, 0x1

    :cond_c
    if-lt v3, v0, :cond_d

    return v4

    .line 9
    :cond_d
    invoke-virtual {v2}, Lcom/mob/tools/utils/e;->a()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v4, :cond_e

    add-int/lit8 v3, v3, 0x1

    :cond_e
    if-lt v3, v0, :cond_f

    return v4

    :cond_f
    if-lt v3, v0, :cond_10

    return v4

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_10
    return v1
.end method

.method public aH()Ljava/util/HashMap;
    .locals 8
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

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "013geYdhecdgNglil)dedkfhec"

    .line 2
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "\\s+"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    array-length v2, v1

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    const/4 v2, 0x0

    .line 7
    aget-object v2, v1, v2

    .line 8
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x400

    mul-long v4, v4, v6

    const-string v1, "MemTotal:"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "015dSecWdUdfedgi9il?ecdhdiehdegcMi"

    .line 10
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "008XgiSilNfkdh iif"

    .line 11
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "014]fhdh3ii8gi5il_ecdhdiehdegcGi"

    .line 12
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v1, "0137gi\'il6ej[j!dfdeeddffced%if"

    .line 13
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "019>dfIjDdfdeeddffcedRi?gi4il3ecdhdiehdegc$i"

    .line 14
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v1, "0072ejdgIdYdeNjif"

    .line 15
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "016]dfdg7d de2ji4giGilKecdhdiehdegcPi"

    .line 16
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    const-string v1, "Inactive:"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "018\'dedkdfdgJd]de3ji.gi]il]ecdhdiehdegcWi"

    .line 18
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 19
    :cond_5
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 20
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v3, :cond_6

    .line 21
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    .line 22
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return-object v0

    :catchall_3
    move-exception v0

    if-eqz v3, :cond_7

    .line 23
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v1

    .line 24
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 25
    :cond_7
    :goto_3
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public aI()Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->ag()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_0

    .line 4
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v2, 0x0

    :goto_0
    :try_start_2
    const-string v3, "0065dldedfec-lOde"

    .line 6
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    .line 8
    :cond_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    :goto_1
    return v0
.end method

.method public aJ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/mob/tools/a/b;->b(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public aK()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 2
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v2, "0267dfdk8h0dhecde2h_eldf?eeIelejdg7d@deIjQde$d@diei]cJdh8iSdfVh"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/app/Application;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentProcessName"

    new-array v4, v1, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 8
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 9
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MobPush getProcessName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public aL()J
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->B()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2
    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public aM()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public aN()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public aO()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public aP()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method public aQ()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aR()Ljava/lang/String;
    .locals 7

    const-string v0, "007hi7fg0d9dhecdi"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "021RdgdfRd6icIgeWdhecdg=g fgDi?edfh1g9dgffdhecdcFe"

    .line 1
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/DeviceHelper;->invokeRuntimeExec(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v4, "014)ffBid)egdkBe%dc;dYeh9d<dhEi6df%l"

    .line 2
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    if-eqz v4, :cond_0

    .line 3
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v3, :cond_1

    .line 5
    :try_start_2
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v3, v1

    .line 6
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v3, :cond_1

    .line 7
    :try_start_4
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :cond_1
    :goto_1
    return-object v1

    :catchall_3
    move-exception v1

    if-eqz v3, :cond_2

    :try_start_5
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 8
    :catchall_4
    :cond_2
    throw v1
.end method

.method public aS()Ljava/lang/String;
    .locals 8

    const-string v0, "007hi2fg5d(dhecdi"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "0172dgdf5dJic7geEdhecdg*g<dgHeMdcdedkfhec"

    .line 1
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/DeviceHelper;->invokeRuntimeExec(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "0142ff.idZegdk eGdc+d.ehPd,dh@iVdfQl"

    .line 2
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    if-eqz v3, :cond_2

    .line 3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "utf-8"

    invoke-direct {v6, v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 5
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 8
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 9
    :try_start_1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    return-object v3

    :cond_2
    if-eqz v2, :cond_3

    :try_start_2
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 10
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_3

    .line 11
    :try_start_4
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :cond_3
    :goto_1
    const-string v0, ""

    return-object v0

    :catchall_3
    move-exception v3

    if-eqz v2, :cond_4

    :try_start_5
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 12
    :catchall_4
    :cond_4
    goto :goto_3

    :goto_2
    throw v3

    :goto_3
    goto :goto_2
.end method

.method public aT()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/b/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aU()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/b/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aV()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/b/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aW()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/b/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aX()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/b/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aY()Ljava/util/HashMap;
    .locals 1
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
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/b/d;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public aa()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_5

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "017ge?dhecdg4gdd diAgh:dhdeFjiZdhfg"

    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 9
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 11
    array-length v6, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v4, v7

    .line 12
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 13
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 16
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 17
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_5
    :goto_2
    return-object v0
.end method

.method public ab()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    .line 2
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public ac()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    .line 2
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public ad()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object v0

    const-string v1, "0146dheceldjEi-dhdk.iOedelGkil]dc"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/mob/tools/a/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public ae()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "006^fg0hCdgdfdhVh"

    .line 2
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "004hFdfSd[df"

    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    :goto_0
    const-string v3, "available"

    if-ge v4, v1, :cond_0

    .line 3
    aget-object v5, v2, v4

    .line 4
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v7, -0x1

    .line 5
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "004-fhdhCii"

    .line 6
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "005d9ecHdQdfed"

    .line 7
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->G()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "0063fg4h9dgdfdh3h"

    .line 11
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :catchall_0
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "004h;dfDdNdf"

    .line 13
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :catchall_1
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/StatFs;

    .line 16
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-gt v5, v6, :cond_3

    .line 17
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long v5, v5, v7

    .line 18
    invoke-virtual {v4}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v9, v9

    mul-long v7, v7, v9

    .line 19
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v11, v4

    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v7

    mul-long v5, v5, v7

    .line 21
    invoke-virtual {v4}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v7

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v9

    mul-long v7, v7, v9

    .line 22
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v9

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v11

    :goto_2
    mul-long v9, v9, v11

    .line 23
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 24
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "004:fhdh@ii"

    .line 25
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "005d\'ec0d+dfed"

    .line 26
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    return-object v0
.end method

.method public af()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v1, -0x1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "available"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "005dUec3d2dfed"

    .line 3
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "005Rdefgekecfd"

    .line 4
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "009dc8dhSi>fg=c_eced1h"

    .line 5
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v1, "008EdfdgJd de?jIde)dZdi"

    .line 6
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v4, "013Fff,id6gi=ilOecdhdiegdkfhec"

    .line 8
    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v1, v4, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const-string v1, "005dAec4dZdfed"

    .line 11
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "005>defgekecfd"

    .line 12
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v3, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eqz v2, :cond_1

    const-wide/16 v4, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "009dc dh!i,fg1cGecedRh"

    .line 13
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v3, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public ag()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/tools/utils/b;->a()Lcom/mob/tools/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ah()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public ai()Z
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "020SdgecMlKelRdSec3eShfec2cGdkfddcelHlCdfffdefgdj"

    .line 1
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "032hiJeldhecfcQj)eldfdk8h>dhecde5h$eldl!e?ecfg0ih?eldedkfgWdPdfeded,i3dh"

    .line 2
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "028Zecdhffel-liKecfddgdfPdXelNih!dl6e]ecfg8ih6el%l0dfdkdfffUiIdh"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "027l>ec7i]elfg1c*degcdcdjdceldh$ihMdedh7i.dg;dIfg7dFecdhdfff!i"

    .line 4
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    aget-object v5, v1, v2

    .line 6
    :try_start_0
    iget-object v6, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Lcom/mob/tools/a/k;->b(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    return v4

    :catchall_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "test"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v5, v0, v2

    .line 9
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "035hiTeldhecfc5jCeldfdk0h]dhecde[hHeldlEe8ecfgGih(elhg>e*ecfgUihVfjdhde]h*ff.i"

    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "036hi;eldhecfcTjWeldfdkXhTdhecde;h?eldlTe)ecfg^ih*elhgSe_ecfg ih%hd]i=edZeiNdhfg"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 11
    :try_start_3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "035hi9eldhecfc7j>eldfdkUh.dhecdeJh(eldl_eGecfg;ihHelhg!e,ecfg[ih!fjdhdeHh1ff2i"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    return v4

    :catchall_2
    const/4 v0, 0x0

    .line 12
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "006geYdhecdg]g"

    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "005glRdfYe;fg"

    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x0

    .line 13
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "006EdlHe*ecfg,ih"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    .line 15
    :cond_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 16
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_3
    return v0

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 17
    :goto_4
    :try_start_7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v1, :cond_5

    .line 18
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 19
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_5
    :goto_5
    return v3

    :catchall_5
    move-exception v0

    if-eqz v1, :cond_6

    .line 20
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_6

    :catch_3
    move-exception v1

    .line 21
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 22
    :cond_6
    :goto_6
    throw v0

    :catch_4
    return v4
.end method

.method public aj()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ak()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x11

    const/4 v3, 0x1

    const-string v4, "adb_enabled"

    if-lt v1, v2, :cond_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 7
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v1, :cond_1

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return v0
.end method

.method public al()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x11

    const/4 v3, 0x1

    const-string v4, "development_settings_enabled"

    if-lt v1, v2, :cond_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 7
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v1, :cond_1

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return v0
.end method

.method public am()Z
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ge v2, v3, :cond_0

    .line 3
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v3, "016@dhTiGffdefg,diNdhge7iHdg%iNde*ji@dh"

    .line 4
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v0

    aput-object v1, v7, v5

    new-array v1, v6, [Ljava/lang/Class;

    const-class v4, Landroid/content/BroadcastReceiver;

    aput-object v4, v1, v0

    const-class v4, Landroid/content/IntentFilter;

    aput-object v4, v1, v5

    .line 5
    invoke-static {v2, v3, v7, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v3, "016Tdh;i.ffdefg>diJdhge!i2dgPi7de1jiZdh"

    .line 7
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v4, v8, v0

    aput-object v1, v8, v5

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v6

    new-array v1, v7, [Ljava/lang/Class;

    const-class v4, Landroid/content/BroadcastReceiver;

    aput-object v4, v1, v0

    const-class v4, Landroid/content/IntentFilter;

    aput-object v4, v1, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v6

    .line 8
    invoke-static {v2, v3, v8, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    :goto_0
    const-string v2, "plugged"

    const/4 v3, -0x1

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v6, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    .line 10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return v0
.end method

.method public an()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ao()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return v0
.end method

.method public ap()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    const/4 v3, -0x1

    if-lt v1, v2, :cond_1

    const-string v1, "014cddeHel@e<dhecdldihdecfgBd"

    .line 2
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "014cddeNel@eDdhecdldighecdhEd"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v2, "-1"

    .line 4
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 v2, -0x1

    goto :goto_1

    .line 5
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v2

    .line 7
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_2

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    :catchall_1
    :cond_2
    return v0
.end method

.method public aq()Z
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v4, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v4, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public ar()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public as()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 4
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 5
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 6
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v1, :cond_1

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 8
    :cond_1
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public at()Ljava/util/HashMap;
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
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_0

    :try_start_1
    const-string v2, "mbmt"

    const-string v3, "026?dfdk=hYdhecde9hOelMc[dfdh<hJfddfdhHi7el!di7edUiec$ecdkdi"

    .line 3
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    const-string v2, "wmt"

    const-string v3, "021^dfdkPh\'dhecde*h]elUcFdfdhIhRfddfdh?i=elfddefhde"

    .line 4
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :try_start_3
    const-string v2, "gmt"

    const-string v3, "029BdfdkNhJdhecde[hEel,cQdfdhLh;fddfdh?iZeledecdgdfTdYdeecdkelff4e@fg"

    .line 5
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :try_start_4
    const-string v2, "nmt"

    const-string v3, "020@dfdk^hBdhecde,h5el%c(dfdh-hDfddfdhTiUeldkfhdg"

    .line 6
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :try_start_5
    const-string v2, "003>ec,dXff"

    .line 7
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "025ZdfdkKhUdhecde)hNelXcNdfdhHh4fddfdhDi!eldcfgfcel:cHecfgJd"

    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_0
    return-object v0
.end method

.method public au()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "053gRfgdifgOghijOdedgZi6fgRg\'fgdifg?dilgMdg*eXdc!gCdgAe_dcfeNgKdg]e6dcfhdh,ikgRfgdgdfeddedkffdddgdcdhddfhdhQik"

    .line 2
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "012:dgdcdhdh3iTdkFd=ggYe$dchdgc"

    .line 4
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "053gWfgdifgDghij9dedg^iGfg gMfgdifg5dilg?dgVe)dc*g@dg e.dcfeOg]dg@e9dcfhdhWikg8dgEeYdcdedkfhecddQl:dedkddfhdhBik"

    .line 5
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "008l0dedkgg?ePdchdgc"

    .line 7
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "053gZfgdifg(ghijFdedg4i\'fg gKfgdifg2dilg4dgJeLdcZg9dgMe5dcfe9g+dg8eYdcfhdh,ikg]dg^eVdcdedkfhecddKlOdfdlddfhdhHik"

    .line 8
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "008l+dfdlggIe5dchdgc"

    .line 10
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public av()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public aw()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "015Wdhecelfcdcdeed1h4elfheddfKjLecdh"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public ax()Ljava/util/HashMap;
    .locals 11
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
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1d

    if-ge v1, v3, :cond_3

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "013ge6dhecdgCgRdkUidghij"

    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    new-array v5, v4, [J

    const-string v6, "0066fdeddfdkfe8f"

    .line 8
    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v6, v5}, Lcom/mob/tools/a/b;->a(Ljava/lang/String;Ljava/lang/String;[J)V

    const-string v6, "012hHecfddkfkedecfdhcdefhde"

    .line 9
    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-wide v8, v5, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "014GdcTeBfddfdh7hFfkedecfdhcdefhde"

    .line 10
    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-wide v8, v5, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v4, v4, [J

    const-string v5, "007*dhDl.dk<id@fe!f"

    .line 11
    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5, v4}, Lcom/mob/tools/a/b;->a(Ljava/lang/String;Ljava/lang/String;[J)V

    const-string v1, "016hUecfddkfkedecfdgg>i\'ededdceddfdh"

    .line 12
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-wide v5, v4, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "018[dc%e:fddfdh.h]fkedecfdgg4iPededdceddfdh"

    .line 13
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-wide v5, v4, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    .line 15
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v3, :cond_3

    .line 16
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    .line 17
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_3
    move-exception v0

    if-eqz v3, :cond_2

    .line 18
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v1

    .line 19
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 20
    :cond_2
    :goto_2
    throw v0

    .line 21
    :cond_3
    :goto_3
    :try_start_6
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 22
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    const/16 v4, 0x18

    if-lt v3, v4, :cond_4

    .line 23
    :try_start_7
    iget-object v3, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 25
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v2, "0139dcYe3fddfdhFhSfkedecfdej:ee"

    .line 26
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "011hQecfddkfkedecfdej?ee"

    .line 27
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v1

    .line 28
    :try_start_8
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_4

    :catchall_6
    move-exception v1

    .line 29
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_4
    :goto_4
    return-object v0
.end method

.method public ay()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "0204fffg:lOelYji4dhfgdeecdkelfcdffg$iOfcdfdk4h"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public az()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "016WdhecelGeFdhec0h+dcdg+d8elfcecdfdh7h"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "0362dfdk?hHdhecdeRh%elZei[dhKl:defgfgdeecdkelejgggggdehehddhcegfkegddeheiejeigd"

    .line 1
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "wifi"

    .line 2
    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v2, "017+ffIid4ggecdkdk(i(dg+d1deecdkegdkfhec"

    .line 4
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "007HffCid3ehehegfi"

    .line 5
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "\""

    const-string v3, ""

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    const-string v0, "input_method"

    .line 15
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    return-void
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "036>dfdkEhXdhecde h>elBei9dh!lCdefgfgdeecdkelejgggggdehehddhcegfkegddeheiejeigd"

    .line 1
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "wifi"

    .line 2
    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v2, "017(ff-idJggecdkdk=i^dgDd$deecdkegdkfhec"

    .line 4
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "0083ff]idLfjehehegfi"

    .line 5
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 6
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 10
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    .line 11
    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/Data;->MD5([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 5
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->g()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->i()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x17

    if-lt v0, v4, :cond_1

    :try_start_0
    const-string v0, "023^dfdk^hLdhecdeThMeldgecdkZdi1dk7d*elggecdkJdiXdlYd"

    .line 5
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v4, "019Gdg>ciLdgdjehFi]edfhgh.iQdh]l)defgfgdeecdk"

    invoke-static {v4}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v0, v4, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public declared-synchronized g()Ljava/lang/String;
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->i()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    const-string v0, "phone"

    .line 3
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-nez v0, :cond_1

    .line 4
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    const-string v2, "0358dfdkChGdhecde6h3elAei9dhSl>defgfgdeecdkelgegdejfiddghhdflefgdddeheiejeigd"

    .line 5
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_2

    .line 6
    :try_start_3
    invoke-direct {p0, v0}, Lcom/mob/tools/a/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :cond_2
    move-object v0, v1

    .line 8
    :goto_0
    :try_start_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    const-string v2, "iemt"

    .line 9
    invoke-direct {p0, v2}, Lcom/mob/tools/a/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    iget-object v5, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v6, "008Udgec^llgXel,hDde"

    invoke-static {v6}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mob/tools/utils/ResHelper;->getCacheRootFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 14
    :try_start_6
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 15
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 16
    instance-of v6, v1, [C

    if-eqz v6, :cond_3

    .line 17
    check-cast v1, [C

    .line 18
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v2, v1

    :cond_3
    :try_start_8
    new-array v1, v4, [Ljava/io/Closeable;

    aput-object v5, v1, v3

    .line 19
    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_1

    :catchall_2
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    :goto_1
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v5, v2, v3

    invoke-static {v2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 20
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 21
    :cond_4
    :goto_2
    monitor-exit p0

    return-object v2

    .line 22
    :cond_5
    :try_start_9
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v5, "0088dgecEllg_elNhPde"

    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mob/tools/utils/ResHelper;->getCacheRootFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 23
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 24
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 25
    :cond_6
    :try_start_a
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 26
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 27
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 28
    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    new-array v1, v4, [Ljava/io/Closeable;

    aput-object v2, v1, v3

    .line 30
    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_3
    move-exception v1

    goto :goto_3

    :catchall_4
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    :goto_3
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v2, v4, v3

    invoke-static {v4}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 31
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :catchall_6
    move-exception v0

    .line 32
    :goto_4
    :try_start_d
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-object v0, v1

    .line 33
    :goto_5
    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, v0}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(ZLjava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public declared-synchronized h()[Ljava/lang/String;
    .locals 14

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->i()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v2, "phone"

    .line 4
    invoke-virtual {p0, v2}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_1

    .line 5
    monitor-exit p0

    return-object v1

    .line 6
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->g()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "-1"

    .line 8
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "035,dfdkDh+dhecdeNh:el eiGdh;lNdefgfgdeecdkelgegdejfiddghhdflefgdddeheiejeigd"

    .line 9
    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v5, 0x1d

    if-ge v3, v5, :cond_4

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x5

    if-gt v3, v5, :cond_4

    .line 10
    :try_start_4
    invoke-direct {p0, v2, v3}, Lcom/mob/tools/a/b;->a(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-object v5, v1

    .line 11
    :goto_1
    :try_start_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v5, "-1"

    .line 12
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    new-array v3, v2, [[Ljava/lang/String;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "012Mdhdeedelfffg6lBeldeBliVde"

    .line 13
    invoke-static {v7}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v6, v3, v4

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "017ZdheceldhdeedelJl,dedcdeelde2li%defe"

    .line 14
    invoke-static {v8}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "017.dheceldhdeedelIl%dedcdeelde,liRdegl"

    invoke-static {v8}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    aput-object v7, v3, v5

    new-array v7, v5, [Ljava/lang/String;

    const-string v8, "015OdheceldhdeedelecHil:eldeZli+de"

    .line 15
    invoke-static {v8}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    aput-object v7, v3, v6

    const/4 v7, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const-string v8, "016Gdheceldhdeedelec9ilBeldeGli<degl"

    .line 16
    invoke-static {v8}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "0166dheceldhdeedelecKilTelde5liLdegk"

    invoke-static {v8}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v5

    aput-object v6, v3, v7

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_8

    .line 17
    aget-object v6, v3, v5

    .line 18
    array-length v7, v6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_7

    aget-object v9, v6, v8

    .line 19
    invoke-virtual {p0, v9}, Lcom/mob/tools/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    .line 20
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 21
    array-length v10, v9

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_6

    aget-object v12, v9, v11

    .line 22
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 23
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catchall_1
    move-exception v2

    .line 24
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 25
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception v0

    .line 27
    :try_start_7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 28
    :cond_9
    monitor-exit p0

    return-object v1

    :catchall_3
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "\n"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 10
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 12
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "|"

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->l()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->A()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_1

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/mob/tools/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "037Fdfdk>h_dhecde,hGdleldgecdhPi(eldf@ee>elej@eeBfl%eLfggidfdkdfffDi+dhggecLleVdfFd"

    .line 8
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "014ei6dh2lLdefgfgdeecdkeiecflFe"

    .line 9
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v1, v2, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "011JdkecKdiDghdhecdldifl6e"

    .line 10
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    aput-object v5, v4, v0

    aput-object p1, v4, v3

    const/4 p1, 0x2

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->B()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    invoke-static {v1, v2, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->l()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const-string v3, "x"

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 4

    const-string v0, "-1"

    :try_start_0
    const-string v1, "phone"

    .line 1
    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "014HffKid%ehde:l@fl.ei@dhdfTdCecdh"

    .line 2
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 4

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "035FdfdkRhVdhecdeFh)el3ei<dh;l1defgfgdeecdkelgegdejfiddghhdflefgdddeheiejeigd"

    .line 2
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "018Xff0idHehde7lHflQeiNdhdf8d5ecdhefdfOli"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method public t()Ljava/lang/String;
    .locals 1

    const-string v0, "-1"

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->B()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    .line 5
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/NtFetcher;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/NtFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/NtFetcher;->getNtType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->z()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0045fddefhde"

    .line 2
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "002@heff"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "002Ejiff"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "002Zjcff"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "002Qgkff"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "004Fdkecdk i"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "002Yheff"

    .line 3
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "002)jiff"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "002Fjcff"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "002_gkff"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "004Nfddefhde"

    .line 4
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "004Wfddefhde"

    .line 5
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "005XecSdci+dh"

    .line 6
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const-string v0, "004%dgNi8eded"

    .line 7
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    const-string v0, "004Mdkecdk4i"

    .line 8
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "004^dkecdkMi"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "004>fddefhde"

    .line 3
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "004<fddefhde"

    .line 4
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "002Zheff"

    .line 5
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "002*heff"

    .line 6
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "002 jiff"

    .line 7
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "002Wjiff"

    .line 8
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v1, "002)jcff"

    .line 9
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "002Rjcff"

    .line 10
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v1, "0021gkff"

    .line 11
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "002Ygkff"

    .line 12
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v1, "009?fceddcHid(ecec8dc"

    .line 13
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "009^fceddcCidOececUdc"

    .line 14
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0

    :cond_7
    :goto_0
    const-string v0, "004.dkecdkMi"

    .line 15
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 16
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const-string v0, "004:dkecdkZi"

    .line 17
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
