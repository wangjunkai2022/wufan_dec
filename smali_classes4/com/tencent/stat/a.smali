.class public Lcom/tencent/stat/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/tencent/stat/a;


# instance fields
.field private a:Lcom/tencent/stat/common/StatLogger;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/a;->a:Lcom/tencent/stat/common/StatLogger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/stat/a;->c:Z

    iput-boolean v0, p0, Lcom/tencent/stat/a;->d:Z

    iput-boolean v0, p0, Lcom/tencent/stat/a;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/stat/a;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/a;->f:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/tencent/stat/a;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/stat/a;->c:Z

    invoke-direct {p0, p1}, Lcom/tencent/stat/a;->d(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/stat/a;->d:Z

    invoke-direct {p0, p1}, Lcom/tencent/stat/a;->c(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/stat/a;->e:Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/stat/a;
    .locals 2

    const-class v0, Lcom/tencent/stat/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/stat/a;->b:Lcom/tencent/stat/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/stat/a;

    invoke-direct {v1, p0}, Lcom/tencent/stat/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/stat/a;->b:Lcom/tencent/stat/a;

    :cond_0
    sget-object p0, Lcom/tencent/stat/a;->b:Lcom/tencent/stat/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/stat/a;->a:Lcom/tencent/stat/common/StatLogger;

    const-string v0, "Check permission failed: android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private c(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p1, v0}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/stat/a;->a:Lcom/tencent/stat/common/StatLogger;

    const-string v0, "Check permission failed: android.permission.WRITE_SETTINGS"

    invoke-virtual {p1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private d(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/tencent/stat/common/k;->d()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/stat/a;->b(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/stat/a;->f:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/tencent/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/stat/a;->f:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/tencent/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/stat/a;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Tencent/mta"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/common/d;->a(Ljava/lang/String;)Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Tencent/mta/.mid.txt"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/stat/a;->a:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {p2, p1}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    return v1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-boolean p2, p0, Lcom/tencent/stat/a;->c:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Tencent/mta/.mid.txt"

    invoke-direct {p2, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/stat/common/d;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    aget-object p1, v1, p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/stat/a;->a:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {p2, p1}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/tencent/stat/a;->a:Lcom/tencent/stat/common/StatLogger;

    const-string p2, "Tencent/mta/.mid.txt not found."

    invoke-virtual {p1, p2}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/stat/a;->e:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/stat/a;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/stat/a;->e:Z

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    iget-object p2, p0, Lcom/tencent/stat/a;->f:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
