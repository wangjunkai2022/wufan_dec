.class public Lcom/mob/tools/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private volatile c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/io/File;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mob/tools/a;->a:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mob/tools/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    .line 3
    iput p3, p0, Lcom/mob/tools/a;->e:I

    if-nez p2, :cond_0

    const-string p2, "null"

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/mob/tools/a;->f:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/mob/MobSDK;->getContextSafely()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/a;->d:Ljava/io/File;

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/mob/tools/a;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-void
.end method

.method private a(Z)Ljava/io/File;
    .locals 17

    move-object/from16 v1, p0

    .line 26
    iget-object v0, v1, Lcom/mob/tools/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 27
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "_"

    const/4 v10, 0x1

    if-eqz v2, :cond_4

    .line 28
    array-length v0, v2

    if-lez v0, :cond_4

    .line 29
    array-length v11, v2

    const/4 v12, 0x0

    const/4 v13, 0x1

    :goto_0
    if-ge v12, v11, :cond_3

    aget-object v0, v2, v12

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 31
    iget-object v15, v1, Lcom/mob/tools/a;->f:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 32
    invoke-virtual {v14, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    if-nez p1, :cond_1

    .line 33
    array-length v3, v15

    if-ne v3, v5, :cond_1

    .line 34
    :try_start_0
    aget-object v3, v15, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 35
    iget v5, v1, Lcom/mob/tools/a;->e:I

    if-ge v3, v5, :cond_1

    .line 36
    invoke-direct {v1, v14}, Lcom/mob/tools/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 37
    new-instance v5, Ljava/io/File;

    iget-object v14, v1, Lcom/mob/tools/a;->d:Ljava/io/File;

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/mob/tools/a;->f:Ljava/lang/String;

    aput-object v4, v6, v7

    aput-object v9, v6, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x2

    aput-object v4, v6, v16

    const/4 v4, 0x3

    aput-object v9, v6, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v6, v4

    invoke-static {v6}, Lcom/mob/tools/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v14, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    return-object v5

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 39
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 40
    :cond_1
    array-length v0, v15

    if-le v0, v10, :cond_2

    .line 41
    :try_start_1
    aget-object v0, v15, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v13, :cond_2

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 42
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    goto :goto_0

    .line 43
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/mob/tools/a;->d:Ljava/io/File;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/mob/tools/a;->f:Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object v9, v3, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    aput-object v9, v3, v4

    const/4 v4, 0x4

    aput-object v8, v3, v4

    invoke-static {v3}, Lcom/mob/tools/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    .line 44
    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/mob/tools/a;->d:Ljava/io/File;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/mob/tools/a;->f:Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object v9, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    aput-object v9, v3, v4

    const/4 v4, 0x4

    aput-object v8, v3, v4

    invoke-static {v3}, Lcom/mob/tools/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    return-object v0
.end method

.method static synthetic a(Lcom/mob/tools/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method private static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_2

    .line 77
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 3
    monitor-exit v0

    return p1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 5
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(J)V
    .locals 9

    .line 69
    sget-object v0, Lcom/mob/tools/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a;->d:Ljava/io/File;

    new-instance v2, Lcom/mob/tools/a$2;

    invoke-direct {v2, p0}, Lcom/mob/tools/a$2;-><init>(Lcom/mob/tools/a;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 71
    array-length v2, v1

    if-lez v2, :cond_1

    const-wide/16 v2, 0x0

    .line 72
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v1, v6

    .line 73
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    cmp-long v4, v2, p1

    if-ltz v4, :cond_1

    .line 74
    array-length p1, v1

    :goto_1
    if-ge v5, p1, :cond_1

    aget-object p2, v1, v5

    .line 75
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 76
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public a(Lcom/mob/tools/a$a;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 46
    :cond_0
    sget-object v0, Lcom/mob/tools/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a;->d:Ljava/io/File;

    new-instance v2, Lcom/mob/tools/a$1;

    invoke-direct {v2, p0}, Lcom/mob/tools/a$1;-><init>(Lcom/mob/tools/a;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 48
    array-length v2, v1

    if-lez v2, :cond_4

    .line 49
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 50
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 51
    invoke-direct {p0, v6}, Lcom/mob/tools/a;->b(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v7, :cond_1

    goto :goto_4

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 52
    :try_start_1
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 53
    :try_start_2
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    :goto_1
    :try_start_3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 55
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v7, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    const-string v12, "utf-8"

    invoke-direct {v11, v7, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {p1, v11}, Lcom/mob/tools/a$a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 56
    :cond_2
    invoke-interface {p1}, Lcom/mob/tools/a$a;->a()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 57
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    new-array v5, v8, [Ljava/io/Closeable;

    aput-object v10, v5, v3

    .line 58
    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    new-array v5, v8, [Ljava/io/Closeable;

    aput-object v9, v5, v3

    .line 59
    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 60
    :goto_2
    invoke-direct {p0, v6}, Lcom/mob/tools/a;->c(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_0
    move-exception v5

    move-object v7, v10

    goto :goto_3

    :catchall_1
    move-exception v5

    goto :goto_3

    :catchall_2
    move-exception v5

    move-object v9, v7

    .line 61
    :goto_3
    :try_start_5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    new-array v5, v8, [Ljava/io/Closeable;

    aput-object v7, v5, v3

    .line 62
    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    new-array v5, v8, [Ljava/io/Closeable;

    aput-object v9, v5, v3

    .line 63
    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    goto :goto_2

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_3
    move-exception p1

    new-array v1, v8, [Ljava/io/Closeable;

    aput-object v7, v1, v3

    .line 64
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    new-array v1, v8, [Ljava/io/Closeable;

    aput-object v9, v1, v3

    .line 65
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 66
    invoke-direct {p0, v6}, Lcom/mob/tools/a;->c(Ljava/lang/String;)V

    .line 67
    throw p1

    .line 68
    :cond_4
    monitor-exit v0

    return-void

    :catchall_4
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 6

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "utf-8"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object p1, v0

    .line 6
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 7
    :cond_1
    sget-object v1, Lcom/mob/tools/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 8
    :try_start_1
    invoke-direct {p0, p2}, Lcom/mob/tools/a;->a(Z)Ljava/io/File;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 9
    :try_start_2
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 10
    :try_start_3
    new-instance v5, Ljava/io/BufferedWriter;

    invoke-direct {v5, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 11
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 12
    invoke-virtual {v5, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v5, p1, v2

    .line 13
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v4, p1, v2

    .line 14
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 15
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1}, Lcom/mob/tools/a;->c(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v0, v5

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_2

    :catchall_3
    move-exception p1

    move-object v4, v0

    .line 16
    :goto_2
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v0, p1, v2

    .line 17
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v4, p1, v2

    .line 18
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 19
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 20
    :goto_3
    monitor-exit v1

    return-void

    :catchall_4
    move-exception p1

    new-array v5, v3, [Ljava/io/Closeable;

    aput-object v0, v5, v2

    .line 21
    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    .line 22
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 23
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/mob/tools/a;->c(Ljava/lang/String;)V

    .line 24
    throw p1

    :catchall_5
    move-exception p1

    .line 25
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
