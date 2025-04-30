.class public Lcom/mob/commons/b/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/mob/commons/b/b;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "005_el!lJfgdffg"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mob/commons/b/b;->c:Landroid/content/Context;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/b/b;->d:Ljava/util/HashMap;

    .line 4
    :try_start_0
    sget-object v0, Lcom/mob/commons/b/b;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mob/commons/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/mob/commons/b/b;->a(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/mob/commons/b/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mob/commons/b/b;
    .locals 2

    const-class v0, Lcom/mob/commons/b/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mob/commons/b/b;->b:Lcom/mob/commons/b/b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/mob/commons/b/b;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/b;->b:Lcom/mob/commons/b/b;

    .line 3
    :cond_0
    sget-object p0, Lcom/mob/commons/b/b;->b:Lcom/mob/commons/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 18
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "005gPgiecfcRg"

    invoke-static {p0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 23
    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 24
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 25
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 26
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 27
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, v1

    .line 29
    invoke-static {v2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v3, v0

    :goto_0
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 30
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/io/File;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 35
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 36
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 37
    new-instance p0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p0, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 38
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, p0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v3, p0, v0

    .line 41
    invoke-static {p0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return v2

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 42
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    return v0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/HashMap;
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

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/b/b;->d:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    monitor-enter p0

    .line 5
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0048ecdfde6h"

    .line 7
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "004\'dfdfde+h"

    .line 9
    invoke-static {p1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "004jLdfdeRh"

    .line 11
    invoke-static {p1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "0041dcMhJdeIh"

    .line 13
    invoke-static {p1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p1, "0096fgdcCee!ecdh_dih"

    .line 14
    invoke-static {p1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/mob/commons/b/b;->c:Landroid/content/Context;

    sget-object p2, Lcom/mob/commons/b/b;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/mob/commons/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 16
    invoke-static {p1, v0}, Lcom/mob/commons/b/b;->a(Ljava/io/File;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    const/4 p1, 0x0

    .line 17
    monitor-exit p0

    return p1
.end method
