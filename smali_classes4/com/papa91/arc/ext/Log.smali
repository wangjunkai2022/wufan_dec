.class public Lcom/papa91/arc/ext/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/ext/Log$LogWrapper;
    }
.end annotation


# static fields
.field public static final BAD_IMPLEMENTATION:Ljava/lang/String; = "Bad implementation"

.field private static final DISABLE_LOG:Z = true

.field private static final FLUSH_LOG_EVERY_MS:J = 0x1388L

.field static LOG_FILE:Ljava/lang/String; = "/last_run.log"

.field public static final TAG:Ljava/lang/String; = "WF-LOG"

.field static volatile closed:Z

.field static final flushTask:Ljava/lang/Runnable;

.field private static lastFlush:J

.field public static lastSearchLog:Ljava/lang/String;

.field static lastSearchLogCurrent:Ljava/lang/StringBuilder;

.field static volatile writer:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/arc/ext/Log$1;

    invoke-direct {v0}, Lcom/papa91/arc/ext/Log$1;-><init>()V

    sput-object v0, Lcom/papa91/arc/ext/Log;->flushTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 2
    sput-wide v0, Lcom/papa91/arc/ext/Log;->lastFlush:J

    const-string v0, "- none -"

    .line 3
    sput-object v0, Lcom/papa91/arc/ext/Log;->lastSearchLog:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/papa91/arc/ext/Log;->lastSearchLogCurrent:Ljava/lang/StringBuilder;

    .line 5
    sput-object v0, Lcom/papa91/arc/ext/Log;->writer:Ljava/io/BufferedWriter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static badImplementation(Ljava/lang/Throwable;)I
    .locals 1

    const-string v0, "Bad implementation"

    .line 1
    invoke-static {v0, p0}, Lcom/papa91/arc/ext/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static close()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/ext/Log$2;

    invoke-direct {v0}, Lcom/papa91/arc/ext/Log$2;-><init>()V

    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnLogThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static crash()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/ext/Log$3;

    invoke-direct {v0}, Lcom/papa91/arc/ext/Log$3;-><init>()V

    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnLogThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 1
    invoke-static {v0, p0}, Lcom/papa91/arc/ext/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/papa91/arc/ext/Log$LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/papa91/arc/ext/Log$LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/papa91/arc/ext/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 1
    invoke-static {v0, p0}, Lcom/papa91/arc/ext/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/papa91/arc/ext/Log$LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/papa91/arc/ext/Log$LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/papa91/arc/ext/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static flush(Z)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/papa91/arc/ext/Log;->writer:Ljava/io/BufferedWriter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    sget-wide v4, Lcom/papa91/arc/ext/Log;->lastFlush:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    if-nez p0, :cond_1

    return v1

    .line 4
    :cond_1
    :try_start_1
    sget-object p0, Lcom/papa91/arc/ext/Log;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5
    :catch_0
    :try_start_2
    sput-wide v2, Lcom/papa91/arc/ext/Log;->lastFlush:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 p0, 0x1

    return p0

    :catch_1
    move-exception p0

    const-string v0, "WF-LOG"

    const-string v2, "Log write: I/O"

    .line 6
    invoke-static {v0, v2, p0}, Lcom/papa91/arc/ext/Log$LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_2

    .line 1
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 4
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 5
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on printStackTrace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    const-string v3, "OutOfMemoryError 1\n"

    .line 7
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :goto_1
    if-eqz p0, :cond_3

    .line 8
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    .line 9
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string v3, "OutOfMemoryError 2\n"

    .line 10
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 11
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_1

    .line 12
    :cond_3
    :goto_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 13
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    return-object p0
.end method

.method public static here()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "here: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/ext/Log;->d(Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 1
    invoke-static {v0, p0}, Lcom/papa91/arc/ext/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/papa91/arc/ext/Log$LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/papa91/arc/ext/Log$LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/papa91/arc/ext/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static iFull(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit16 v3, v2, 0x3eb

    if-ge v3, v0, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v0

    .line 2
    :goto_1
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/papa91/arc/ext/Log;->i(Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method static reopen()V
    .locals 0

    return-void
.end method

.method public static runLogOnProcessErrStream(Ljava/lang/Process;Ljava/io/InputStream;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/papa91/arc/ext/Log$4;

    const-string v1, "runLogOnProcessErrStream"

    invoke-direct {v0, v1, p1, p0}, Lcom/papa91/arc/ext/Log$4;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Process;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized s(Ljava/lang/String;)V
    .locals 0

    const-class p0, Lcom/papa91/arc/ext/Log;

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public static v(Ljava/lang/String;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 1
    invoke-static {v0, p0}, Lcom/papa91/arc/ext/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/papa91/arc/ext/Log$LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/papa91/arc/ext/Log$LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/papa91/arc/ext/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 1
    invoke-static {v0, p0}, Lcom/papa91/arc/ext/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/papa91/arc/ext/Log$LogWrapper;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/papa91/arc/ext/Log$LogWrapper;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/papa91/arc/ext/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static wt(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/papa91/arc/ext/Log$LogWrapper;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method
