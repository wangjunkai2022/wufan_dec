.class public Lcom/tencent/stat/StatNativeCrashReport;
.super Ljava/lang/Object;


# static fields
.field public static final PRE_TAG_TOMBSTONE_FNAME:Ljava/lang/String; = "tombstone_"

.field static a:Lcom/tencent/stat/StatNativeCrashReport;

.field private static b:Lcom/tencent/stat/common/StatLogger;

.field private static d:Z

.field private static e:Z

.field private static f:Ljava/lang/String;


# instance fields
.field private volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    new-instance v0, Lcom/tencent/stat/StatNativeCrashReport;

    invoke-direct {v0}, Lcom/tencent/stat/StatNativeCrashReport;-><init>()V

    sput-object v0, Lcom/tencent/stat/StatNativeCrashReport;->a:Lcom/tencent/stat/StatNativeCrashReport;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/stat/StatNativeCrashReport;->d:Z

    sput-boolean v0, Lcom/tencent/stat/StatNativeCrashReport;->e:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/tencent/stat/StatNativeCrashReport;->f:Ljava/lang/String;

    :try_start_0
    const-string v1, "MtaNativeCrash"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sput-boolean v0, Lcom/tencent/stat/StatNativeCrashReport;->d:Z

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/stat/StatNativeCrashReport;->c:Z

    return-void
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object v1, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, p0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;)Ljava/util/LinkedHashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p0}, Lcom/tencent/stat/StatNativeCrashReport;->getTombstonesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tombstone_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get tombstone file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static b(Ljava/io/File;)J
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "tombstone_"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v0, p0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static doNativeCrashTest()V
    .locals 1

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->a:Lcom/tencent/stat/StatNativeCrashReport;

    invoke-virtual {v0}, Lcom/tencent/stat/StatNativeCrashReport;->makeJniCrash()Ljava/lang/String;

    return-void
.end method

.method public static getTombstonesDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "__mta_tombstone__"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/stat/StatNativeCrashReport;->f:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcom/tencent/stat/StatNativeCrashReport;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static initNativeCrash(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->a:Lcom/tencent/stat/StatNativeCrashReport;

    iget-boolean v0, v0, Lcom/tencent/stat/StatNativeCrashReport;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    const-string p1, "tombstones"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_2

    sget-object p0, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The length of tombstones dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can\'t exceeds 200 bytes."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    return-void

    :cond_2
    sput-object p1, Lcom/tencent/stat/StatNativeCrashReport;->f:Ljava/lang/String;

    const-string v0, "__mta_tombstone__"

    invoke-static {p0, v0, p1}, Lcom/tencent/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/tencent/stat/StatNativeCrashReport;->setNativeCrashEnable(Z)V

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->a:Lcom/tencent/stat/StatNativeCrashReport;

    invoke-virtual {v0, p1}, Lcom/tencent/stat/StatNativeCrashReport;->initJNICrash(Ljava/lang/String;)Z

    sget-object p1, Lcom/tencent/stat/StatNativeCrashReport;->a:Lcom/tencent/stat/StatNativeCrashReport;

    iput-boolean p0, p1, Lcom/tencent/stat/StatNativeCrashReport;->c:Z

    sget-object p0, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    const-string p1, "initNativeCrash success."

    invoke-virtual {p0, p1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {p1, p0}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static isNativeCrashDebugEnable()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/stat/StatNativeCrashReport;->e:Z

    return v0
.end method

.method public static isNativeCrashEnable()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/stat/StatNativeCrashReport;->d:Z

    return v0
.end method

.method public static onNativeCrashHappened()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MTA has caught a native crash, java stack:\n"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setNativeCrashDebugEnable(Z)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->a:Lcom/tencent/stat/StatNativeCrashReport;

    invoke-virtual {v0, p0}, Lcom/tencent/stat/StatNativeCrashReport;->enableNativeCrashDebug(Z)V

    sput-boolean p0, Lcom/tencent/stat/StatNativeCrashReport;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v0, p0}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static setNativeCrashEnable(Z)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->a:Lcom/tencent/stat/StatNativeCrashReport;

    invoke-virtual {v0, p0}, Lcom/tencent/stat/StatNativeCrashReport;->enableNativeCrash(Z)V

    sput-boolean p0, Lcom/tencent/stat/StatNativeCrashReport;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v0, p0}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public native enableNativeCrash(Z)V
.end method

.method public native enableNativeCrashDebug(Z)V
.end method

.method public native initJNICrash(Ljava/lang/String;)Z
.end method

.method public native makeJniCrash()Ljava/lang/String;
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method
