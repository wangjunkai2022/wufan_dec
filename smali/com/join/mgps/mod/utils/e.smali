.class public Lcom/join/mgps/mod/utils/e;
.super Ljava/lang/Object;
.source "SoLibManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/mod/utils/e$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "e"

.field private static c:Lcom/join/mgps/mod/utils/e;

.field private static d:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/mod/utils/e;

    invoke-direct {v0}, Lcom/join/mgps/mod/utils/e;-><init>()V

    sput-object v0, Lcom/join/mgps/mod/utils/e;->c:Lcom/join/mgps/mod/utils/e;

    const-string v0, ""

    .line 2
    sput-object v0, Lcom/join/mgps/mod/utils/e;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/mod/utils/e;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/mod/utils/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Lcom/join/mgps/mod/utils/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/mod/utils/e;->c:Lcom/join/mgps/mod/utils/e;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "mips"

    const-string v2, "x86"

    const-string v3, "armeabi"

    if-eqz v0, :cond_1

    :cond_0
    move-object v1, v3

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, v2

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    :goto_0
    return-object v1
.end method

.method private f()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string v1, ":\\s+"

    const/4 v2, 0x2

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 6
    array-length v1, v0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 7
    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    const-string v10, "com.join.android.app.mgsim.wufun.soCopyFinish"

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/mod/utils/e;->f()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {v9, v1}, Lcom/join/mgps/mod/utils/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3
    sput-object p3, Lcom/join/mgps/mod/utils/e;->d:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cpuArchitect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 6
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.join.android.app.mgsim.wufun.soCopyStart"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8
    new-instance v14, Ljava/util/zip/ZipFile;

    move-object/from16 v1, p2

    invoke-direct {v14, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v15

    .line 10
    :goto_0
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 12
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 14
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v1

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v1

    :goto_1
    move-wide v7, v1

    .line 16
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".so"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "skip copying, the so lib is exist and not change: "

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 18
    invoke-static {v0, v1}, Lcom/join/mgps/mod/utils/PluginConfig;->getSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v7, v4

    if-nez v2, :cond_2

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 20
    :cond_2
    iget-object v5, v9, Lcom/join/mgps/mod/utils/e;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/join/mgps/mod/utils/e$a;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v16, v11

    move-object v11, v4

    move-object/from16 v4, p3

    move-object/from16 p2, v15

    move-object v15, v5

    move-object v5, v14

    invoke-direct/range {v1 .. v8}, Lcom/join/mgps/mod/utils/e$a;-><init>(Lcom/join/mgps/mod/utils/e;Landroid/content/Context;Ljava/lang/String;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;J)V

    invoke-interface {v15, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    move-object/from16 v16, v11

    move-object/from16 p2, v15

    const-string v2, "EXTDEX"

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    .line 22
    invoke-static {v0, v1}, Lcom/join/mgps/mod/utils/PluginConfig;->getSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v7, v4

    if-nez v2, :cond_4

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 24
    :cond_4
    iget-object v11, v9, Lcom/join/mgps/mod/utils/e;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v15, Lcom/join/mgps/mod/utils/e$a;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object v5, v14

    invoke-direct/range {v1 .. v8}, Lcom/join/mgps/mod/utils/e$a;-><init>(Lcom/join/mgps/mod/utils/e;Landroid/content/Context;Ljava/lang/String;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;J)V

    invoke-interface {v11, v15}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_2
    move-object/from16 v15, p2

    move-object/from16 v11, v16

    goto/16 :goto_0

    .line 25
    :cond_6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 26
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### copy so time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v12

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 30
    :goto_4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 31
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    const-string v10, "com.join.android.app.mgsim.wufun.soCopyFinish"

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/mod/utils/e;->f()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {v9, v1}, Lcom/join/mgps/mod/utils/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3
    sput-object p3, Lcom/join/mgps/mod/utils/e;->d:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cpuArchitect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 6
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.join.android.app.mgsim.wufun.soCopyStart"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7
    new-instance v14, Ljava/util/zip/ZipFile;

    move-object/from16 v1, p2

    invoke-direct {v14, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v15

    .line 9
    :goto_0
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 10
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 11
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 14
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v2

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v2

    :goto_1
    move-wide v7, v2

    const-string v2, ".so"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "skip copying, the so lib is exist and not change: "

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_2

    .line 17
    invoke-static {v0, v1}, Lcom/join/mgps/mod/utils/PluginConfig;->getSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v7, v4

    if-nez v2, :cond_2

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 19
    :goto_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 20
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, p5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v4, p3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v5, p5

    move-object/from16 v4, p4

    .line 21
    :goto_3
    iget-object v3, v9, Lcom/join/mgps/mod/utils/e;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/join/mgps/mod/utils/e$a;

    move-object v1, v2

    move-object/from16 v16, v11

    move-object v11, v2

    move-object/from16 v2, p0

    move-object/from16 p2, v15

    move-object v15, v3

    move-object/from16 v3, p1

    move-object v5, v14

    invoke-direct/range {v1 .. v8}, Lcom/join/mgps/mod/utils/e$a;-><init>(Lcom/join/mgps/mod/utils/e;Landroid/content/Context;Ljava/lang/String;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;J)V

    invoke-interface {v15, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_5
    move-object/from16 v16, v11

    move-object/from16 p2, v15

    const-string v2, "EXTDEX"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    .line 23
    invoke-static {v0, v1}, Lcom/join/mgps/mod/utils/PluginConfig;->getSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v7, v4

    if-nez v2, :cond_6

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 25
    :cond_6
    iget-object v11, v9, Lcom/join/mgps/mod/utils/e;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v15, Lcom/join/mgps/mod/utils/e$a;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object v5, v14

    invoke-direct/range {v1 .. v8}, Lcom/join/mgps/mod/utils/e$a;-><init>(Lcom/join/mgps/mod/utils/e;Landroid/content/Context;Ljava/lang/String;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;J)V

    invoke-interface {v11, v15}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_4
    move-object/from16 v15, p2

    move-object/from16 v11, v16

    goto/16 :goto_0

    .line 26
    :cond_8
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 27
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### copy so time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v12

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 31
    :goto_6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 32
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public g(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/mod/utils/e;->f()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {p0, v1}, Lcom/join/mgps/mod/utils/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 6
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 8
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".so"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "/"

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    return-object v0
.end method
