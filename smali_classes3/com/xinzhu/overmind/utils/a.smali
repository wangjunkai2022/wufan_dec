.class public Lcom/xinzhu/overmind/utils/a;
.super Ljava/lang/Object;
.source "AbiUtils.java"


# static fields
.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Lcom/xinzhu/overmind/utils/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/utils/a;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkFile"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v2, "armeabi"

    const-string v3, "armeabi-v7a"

    const-string v4, "lib/armeabi"

    const-string v5, "arm64-v8a"

    const-string v6, "lib/armeabi-v7a"

    const-string v7, "lib/arm64-v8a"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, [Ljava/io/File;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_a

    aget-object v0, v11, v13

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".apk"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 6
    :try_start_0
    new-instance v14, Ljava/util/zip/ZipFile;

    invoke-direct {v14, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 8
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 9
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/zip/ZipEntry;

    .line 10
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    .line 11
    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 12
    iget-object v15, v1, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    invoke-virtual {v15, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v15, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 14
    iget-object v15, v1, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    invoke-virtual {v15, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 16
    iget-object v15, v1, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_3
    new-array v0, v9, [Ljava/io/Closeable;

    aput-object v14, v0, v10

    .line 17
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v14, v8

    .line 18
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-array v0, v9, [Ljava/io/Closeable;

    aput-object v14, v0, v10

    .line 19
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v8, v14

    :goto_3
    new-array v2, v9, [Ljava/io/Closeable;

    aput-object v8, v2, v10

    invoke-static {v2}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    .line 20
    throw v0

    :cond_4
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 21
    :cond_5
    :try_start_3
    new-instance v11, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 22
    :try_start_4
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 23
    :cond_6
    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 24
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 25
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 26
    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 27
    iget-object v8, v1, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 28
    :cond_7
    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 29
    iget-object v8, v1, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 30
    :cond_8
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 31
    iget-object v8, v1, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    invoke-virtual {v8, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :cond_9
    new-array v0, v9, [Ljava/io/Closeable;

    aput-object v11, v0, v10

    .line 32
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v8, v11

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v8, v11

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    .line 33
    :goto_6
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    new-array v0, v9, [Ljava/io/Closeable;

    aput-object v8, v0, v10

    .line 34
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    :cond_a
    :goto_7
    return-void

    :goto_8
    new-array v2, v9, [Ljava/io/Closeable;

    aput-object v8, v2, v10

    invoke-static {v2}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    .line 35
    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public static a(Ljava/io/File;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/utils/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/utils/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/utils/a;

    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/utils/a;-><init>(Ljava/io/File;)V

    .line 3
    sget-object v1, Lcom/xinzhu/overmind/utils/a;->b:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p0, v0, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    return-object p0
.end method

.method public static e(Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkFile"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/utils/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/utils/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/utils/a;

    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/utils/a;-><init>(Ljava/io/File;)V

    .line 3
    sget-object v1, Lcom/xinzhu/overmind/utils/a;->b:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/xinzhu/overmind/utils/a;->d()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->isPluginPkgInstalled()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    .line 6
    :cond_2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->is64Bit()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/xinzhu/overmind/utils/a;->c()Z

    move-result p0

    return p0

    .line 8
    :cond_3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/utils/a;->b()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "armeabi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method
