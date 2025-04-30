.class public Lcom/netease/nis/basesdk/crash/CrashStore;
.super Ljava/lang/Object;
.source "CrashStore.java"


# static fields
.field private static final b:Lcom/netease/nis/basesdk/crash/CrashStore;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/nis/basesdk/crash/CrashStore;

    invoke-direct {v0}, Lcom/netease/nis/basesdk/crash/CrashStore;-><init>()V

    sput-object v0, Lcom/netease/nis/basesdk/crash/CrashStore;->b:Lcom/netease/nis/basesdk/crash/CrashStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netease/nis/basesdk/crash/CrashStore;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/nis/basesdk/crash/CrashStore;->b:Lcom/netease/nis/basesdk/crash/CrashStore;

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/nis/basesdk/crash/a;->b()Lcom/netease/nis/basesdk/crash/a;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/nis/basesdk/crash/a;->a(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "delete file success"

    .line 2
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/crash/CrashStore;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/netease/nis/basesdk/crash/a;->b()Lcom/netease/nis/basesdk/crash/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nis/basesdk/crash/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public loadJava()[Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/CrashStore;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/io/File;

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/nis/basesdk/crash/CrashStore;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v2, Lcom/netease/nis/basesdk/crash/CrashStore$a;

    invoke-direct {v2, p0}, Lcom/netease/nis/basesdk/crash/CrashStore$a;-><init>(Lcom/netease/nis/basesdk/crash/CrashStore;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/io/File;

    return-object v0

    .line 5
    :cond_2
    new-instance v1, Lcom/netease/nis/basesdk/crash/CrashStore$b;

    invoke-direct {v1, p0}, Lcom/netease/nis/basesdk/crash/CrashStore$b;-><init>(Lcom/netease/nis/basesdk/crash/CrashStore;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0

    :cond_3
    :goto_0
    new-array v0, v1, [Ljava/io/File;

    return-object v0
.end method

.method public loadNative()[Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/CrashStore;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/io/File;

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/nis/basesdk/crash/CrashStore;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v2, Lcom/netease/nis/basesdk/crash/CrashStore$c;

    invoke-direct {v2, p0}, Lcom/netease/nis/basesdk/crash/CrashStore$c;-><init>(Lcom/netease/nis/basesdk/crash/CrashStore;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/io/File;

    return-object v0

    .line 5
    :cond_2
    new-instance v1, Lcom/netease/nis/basesdk/crash/CrashStore$d;

    invoke-direct {v1, p0}, Lcom/netease/nis/basesdk/crash/CrashStore$d;-><init>(Lcom/netease/nis/basesdk/crash/CrashStore;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0

    :cond_3
    :goto_0
    new-array v0, v1, [Ljava/io/File;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "parse log file failed"

    const-string v1, "CrashCrashStore"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    .line 2
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 8
    :catch_0
    invoke-static {v1, v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto :goto_5

    :catch_1
    move-object v2, v4

    goto :goto_2

    :catch_2
    move-object v2, v4

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    .line 9
    :catch_3
    :goto_2
    :try_start_3
    invoke-static {v1, v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 10
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    .line 11
    :catch_4
    :goto_3
    :try_start_5
    invoke-static {v1, v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_2

    .line 12
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    .line 13
    :catch_5
    invoke-static {v1, v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_4
    return-object v3

    :goto_5
    if-eqz v2, :cond_3

    .line 14
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    .line 15
    :catch_6
    invoke-static {v1, v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_3
    :goto_6
    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public store(Ljava/lang/String;)Ljava/io/File;
    .locals 12

    const-string v0, "write log file failed"

    const-string v1, "CrashCrashStore"

    .line 1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/4 v3, 0x0

    .line 2
    :try_start_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "%s/%s_%020d_%s"

    const/4 v6, 0x4

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/netease/nis/basesdk/crash/CrashStore;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "tombstone"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x3

    const-string v7, ".java.crash"

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/netease/nis/basesdk/crash/a;->b()Lcom/netease/nis/basesdk/crash/a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/netease/nis/basesdk/crash/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "createLogFile failed"

    .line 4
    invoke-static {v1, v2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_2

    .line 5
    :try_start_2
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rws"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "UTF-8"

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :cond_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 9
    :catch_2
    :goto_1
    :try_start_5
    invoke-static {v1, v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_2

    .line 10
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 11
    :catch_3
    invoke-static {v1, v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_2
    if-eqz v3, :cond_1

    .line 12
    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 13
    :catch_4
    invoke-static {v1, v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    :goto_3
    throw p1

    :cond_2
    :goto_4
    return-object v2
.end method
