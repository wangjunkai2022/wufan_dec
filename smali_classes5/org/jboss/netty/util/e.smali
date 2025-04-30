.class public Lorg/jboss/netty/util/e;
.super Ljava/lang/Object;
.source "ThreadRenamingRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile d:Lorg/jboss/netty/util/d;


# instance fields
.field private final a:Lorg/jboss/netty/util/d;

.field private final b:Ljava/lang/Runnable;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/util/d;->a:Lorg/jboss/netty/util/d;

    sput-object v0, Lorg/jboss/netty/util/e;->d:Lorg/jboss/netty/util/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/util/e;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Lorg/jboss/netty/util/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;Lorg/jboss/netty/util/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "runnable"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "proposedThreadName"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lorg/jboss/netty/util/e;->b:Ljava/lang/Runnable;

    .line 5
    iput-object p3, p0, Lorg/jboss/netty/util/e;->a:Lorg/jboss/netty/util/d;

    .line 6
    iput-object p2, p0, Lorg/jboss/netty/util/e;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/e;->a:Lorg/jboss/netty/util/d;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/jboss/netty/util/e;->b()Lorg/jboss/netty/util/d;

    move-result-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/util/e;->c:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lorg/jboss/netty/util/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public static b()Lorg/jboss/netty/util/d;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/util/e;->d:Lorg/jboss/netty/util/d;

    return-object v0
.end method

.method public static c(Lorg/jboss/netty/util/d;)V
    .locals 1

    const-string v0, "threadNameDeterminer"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sput-object p0, Lorg/jboss/netty/util/e;->d:Lorg/jboss/netty/util/d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {p0, v1}, Lorg/jboss/netty/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_0
    const/4 v2, 0x0

    .line 7
    :goto_0
    :try_start_1
    iget-object v3, p0, Lorg/jboss/netty/util/e;->b:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_2
    throw v3
.end method
