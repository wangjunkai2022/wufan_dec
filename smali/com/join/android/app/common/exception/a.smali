.class public Lcom/join/android/app/common/exception/a;
.super Ljava/lang/Object;
.source "DefaultExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final e:Z = true

.field public static final f:Ljava/lang/String; = "CrashCatchHandler"

.field private static final g:Ljava/lang/String; = "VERSION_NAME"

.field private static final h:Ljava/lang/String; = "VERSION_CODE"

.field private static final i:Ljava/lang/String; = "EXCEPTION"

.field private static final j:Ljava/lang/String; = "crash"

.field private static final k:Ljava/lang/String; = ".log"

.field private static final l:I = 0x7d0

.field private static final m:Ljava/lang/String; = "/log"

.field private static final n:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final o:Lcom/join/android/app/common/exception/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Ljava/util/Properties;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/android/app/common/exception/a;

    invoke-direct {v0}, Lcom/join/android/app/common/exception/a;-><init>()V

    sput-object v0, Lcom/join/android/app/common/exception/a;->o:Lcom/join/android/app/common/exception/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/common/exception/a;->c:Ljava/util/Properties;

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/common/exception/a;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/common/exception/a;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lcom/join/android/app/common/exception/a;Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/common/exception/a;->i(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method private d(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lcom/join/android/app/common/exception/a;->c:Ljava/util/Properties;

    const-string v3, "EXCEPTION"

    invoke-virtual {v2, v3, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 8
    :goto_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 9
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 10
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "crash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".log"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/android/app/common/exception/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "unable to write to log file"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/exception/a;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 20
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/join/android/app/common/exception/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/exception/a;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/join/android/app/common/exception/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v3
.end method

.method public static e()Lcom/join/android/app/common/exception/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/exception/a;->o:Lcom/join/android/app/common/exception/a;

    return-object v0
.end method

.method public static f()Ljava/io/FilenameFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/android/app/common/exception/a$b;

    invoke-direct {v0}, Lcom/join/android/app/common/exception/a$b;-><init>()V

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/exception/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/common/exception/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/android/app/common/exception/a;->a:Landroid/content/Context;

    const-class v2, Lcom/join/mgps/activity/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/join/android/app/common/exception/a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/android/app/common/exception/a;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private i(Ljava/lang/Throwable;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v0, "\u7a0b\u5e8f\u5f02\u5e38\uff0c\u5373\u5c06\u9000\u51fa:\r\n"

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/join/android/app/common/exception/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/common/exception/a;->c()V

    .line 4
    invoke-direct {p0, p1}, Lcom/join/android/app/common/exception/a;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method private k(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/android/app/common/exception/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/j;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";error::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 5
    :try_start_0
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/common/exception/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/p;->H1(Ljava/lang/String;)V

    return-void
.end method

.method private l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public c()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/common/exception/a;->c:Ljava/util/Properties;

    const-string v1, "VERSION_NAME"

    const-string v2, "4.9.9.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/exception/a;->c:Ljava/util/Properties;

    const-string v1, "VERSION_CODE"

    const-string v2, "340"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x1

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    :try_start_1
    iget-object v4, p0, Lcom/join/android/app/common/exception/a;->c:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 8
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public j(Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/exception/a;->a:Landroid/content/Context;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/common/exception/a;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 3
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/join/android/app/common/exception/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/log"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/common/exception/a;->d:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/join/android/app/common/exception/a;->d:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/join/android/app/common/exception/a;->f()Ljava/io/FilenameFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    return-void
.end method

.method public m(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/android/app/common/exception/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/exception/a;->c:Ljava/util/Properties;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    new-instance p1, Lcom/join/android/app/common/exception/a$a;

    invoke-direct {p1, p0, p2}, Lcom/join/android/app/common/exception/a$a;-><init>(Lcom/join/android/app/common/exception/a;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-wide/16 p1, 0x7d0

    .line 4
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    invoke-direct {p0}, Lcom/join/android/app/common/exception/a;->h()V

    return-void
.end method
