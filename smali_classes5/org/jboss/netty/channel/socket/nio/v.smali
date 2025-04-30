.class final Lorg/jboss/netty/channel/socket/nio/v;
.super Ljava/lang/Object;
.source "SelectorUtil.java"


# static fields
.field static final a:I

.field static final b:J = 0x1f4L

.field static final c:J

.field static final d:J

.field static final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lorg/jboss/netty/channel/socket/nio/v;->a:I

    const-string v0, "org.jboss.netty.selectTimeout"

    const-wide/16 v1, 0x1f4

    .line 2
    invoke-static {v0, v1, v2}, Lorg/jboss/netty/util/internal/j;->f(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lorg/jboss/netty/channel/socket/nio/v;->c:J

    .line 3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lorg/jboss/netty/channel/socket/nio/v;->d:J

    const-string v0, "org.jboss.netty.epollBugWorkaround"

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lorg/jboss/netty/util/internal/j;->d(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/v;->e:Z

    const-string v0, "sun.nio.ch.bugLevel"

    .line 5
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 6
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/nio/channels/Selector;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-wide v0, Lorg/jboss/netty/channel/socket/nio/v;->c:J

    invoke-virtual {p0, v0, v1}, Ljava/nio/channels/Selector;->select(J)I

    move-result p0
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/nio/channels/CancelledKeyException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method
