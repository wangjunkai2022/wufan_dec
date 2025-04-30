.class public Lcom/mob/commons/a/m;
.super Lcom/mob/commons/a/c;


# instance fields
.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    const-string v0, "002f)eg"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "004f,egghei"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x12c

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mob/commons/a/m;->c:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/mob/commons/a/m;->d:J

    .line 4
    iput-object v0, p0, Lcom/mob/commons/a/m;->e:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Lcom/mob/commons/a/c;->c()V

    .line 6
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/j;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/a/m;->c:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/w;->c:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/commons/w;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/commons/a/m;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/mob/commons/a/m;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/mob/commons/a/m;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/mob/commons/a/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "key_rcdat"

    invoke-virtual {v2, v5, v3, v4}, Lcom/mob/commons/w;->a(Ljava/lang/String;J)V

    .line 15
    :cond_2
    iget-object v2, p0, Lcom/mob/commons/a/m;->e:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/mob/commons/b;->b:Z

    if-eqz v2, :cond_4

    .line 16
    :cond_3
    sput-boolean v3, Lcom/mob/commons/b;->b:Z

    .line 17
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/mob/tools/utils/DeviceHelper;->getIA(Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/commons/a/m;->e:Ljava/util/ArrayList;

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/mob/commons/a/m;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    const/4 v2, 0x0

    .line 19
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 20
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-eqz v4, :cond_5

    const-string v5, "003f4ekgg"

    .line 21
    invoke-static {v5}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v5, v1

    .line 22
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-direct {p0, v5}, Lcom/mob/commons/a/m;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 23
    invoke-direct {p0, v0, v5}, Lcom/mob/commons/a/m;->b(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "003fGekgg"

    .line 24
    invoke-static {v7}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "004>eleg-mj"

    .line 25
    invoke-static {v7}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "007kjBeigheffdel"

    .line 26
    invoke-static {v7}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "0082eiedel]e]ef_mj^gh"

    .line 27
    invoke-static {v4}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_6

    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    invoke-static {v4}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_3
    const-string v7, "008HeiedelAe!ef$mjPgh"

    .line 28
    invoke-static {v7}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v9, v4

    invoke-virtual {p0}, Lcom/mob/commons/a/c;->k()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-direct {p0, v0, v5}, Lcom/mob/commons/a/m;->a(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 30
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_8
    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    long-to-int p2, v3

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 53
    :goto_0
    invoke-virtual {v2, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 55
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/mob/commons/a/m;->a(Ljava/lang/String;[B)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array p2, v1, [Ljava/io/Closeable;

    aput-object v2, p2, v0

    .line 56
    invoke-static {p2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 57
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    .line 58
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :catchall_1
    move-exception p1

    new-array p2, v1, [Ljava/io/Closeable;

    aput-object v2, p2, v0

    .line 60
    invoke-static {p2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 61
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private static a(Ljava/lang/String;[B)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 67
    :try_start_0
    invoke-static {p0, p1}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {p0}, Lcom/mob/commons/a/m;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 69
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 70
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/mob/commons/a/m;->a(Ljava/lang/String;Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 42
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 44
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 45
    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    .line 46
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception p1

    .line 47
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    .line 48
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return v0

    :catchall_1
    move-exception p1

    new-array p2, v1, [Ljava/io/Closeable;

    aput-object v2, p2, v0

    invoke-static {p2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 49
    throw p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, v0}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(ZLjava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 32
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v3, 0x200000

    and-int/2addr p1, v3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :catchall_0
    :cond_2
    return v0
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "008<ei*j=ehfdeiGi0eg>e"

    .line 37
    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v1

    const-string v2, "key_rcdat"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/mob/commons/w;->b(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    const-string v4, "PRTMT"

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, p1

    .line 38
    invoke-virtual/range {v1 .. v7}, Lcom/mob/commons/a/c;->a(JLjava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :catchall_0
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object p1

    sget-object v0, Lcom/mob/commons/w;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/mob/commons/w;->a(Ljava/lang/String;J)V

    .line 40
    invoke-direct {p0}, Lcom/mob/commons/a/m;->n()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "003fTekgg"

    .line 34
    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static a(Ljava/lang/String;Ljava/util/ArrayList;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)[B"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 63
    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 64
    :try_start_0
    invoke-static {p0, p1}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 65
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_1

    .line 8
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p0

    .line 10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 11
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private b(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "003fRekgg"

    .line 2
    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private n()Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mob/commons/a/m;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/commons/a/m;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/mob/commons/a/m;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/a/m;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/mob/commons/a/m;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "005f)egggegNf"

    .line 5
    invoke-static {v3}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0xe10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    .line 6
    iget-wide v5, p0, Lcom/mob/commons/a/m;->d:J

    sub-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lcom/mob/commons/a/m;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/w;->c:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/commons/w;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/commons/a/m;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
