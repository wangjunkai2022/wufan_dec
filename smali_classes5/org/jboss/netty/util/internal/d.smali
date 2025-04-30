.class public final Lorg/jboss/netty/util/internal/d;
.super Ljava/lang/Object;
.source "DetectionUtil.java"


# static fields
.field private static final a:I

.field private static final b:Z

.field private static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/jboss/netty/util/internal/d;->f()I

    move-result v0

    sput v0, Lorg/jboss/netty/util/internal/d;->a:I

    .line 2
    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/util/internal/d;->b(Ljava/lang/ClassLoader;)Z

    move-result v0

    sput-boolean v0, Lorg/jboss/netty/util/internal/d;->b:Z

    const-string v0, "os.name"

    const-string v1, ""

    .line 3
    invoke-static {v0, v1}, Lorg/jboss/netty/util/internal/j;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lorg/jboss/netty/util/internal/d;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/jboss/netty/util/internal/d;->b:Z

    return v0
.end method

.method private static b(Ljava/lang/ClassLoader;)Z
    .locals 4

    const-string v0, "io.netty.noUnsafe"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lorg/jboss/netty/util/internal/j;->d(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "io.netty.tryUnsafe"

    .line 2
    invoke-static {v0}, Lorg/jboss/netty/util/internal/j;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 3
    invoke-static {v0, v3}, Lorg/jboss/netty/util/internal/j;->d(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "org.jboss.netty.tryUnsafe"

    .line 4
    invoke-static {v0, v3}, Lorg/jboss/netty/util/internal/j;->d(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    return v1

    :cond_2
    :try_start_0
    const-string v0, "sun.misc.Unsafe"

    .line 5
    invoke-static {v0, v3, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lorg/jboss/netty/util/internal/d;->c(Ljava/lang/Class;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method private static c(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jboss/netty/util/internal/d$a;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/d$a;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/jboss/netty/util/internal/d;->c:Z

    return v0
.end method

.method public static e()I
    .locals 1

    .line 1
    sget v0, Lorg/jboss/netty/util/internal/d;->a:I

    return v0
.end method

.method private static f()I
    .locals 4

    const/4 v0, 0x6

    :try_start_0
    const-string v1, "android.app.Application"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "java.util.concurrent.LinkedTransferQueue"

    .line 2
    const-class v3, Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x7

    return v0

    :catch_1
    :try_start_2
    const-string v2, "java.util.ArrayDeque"

    .line 3
    const-class v3, Ljava/util/Queue;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return v0

    :catch_2
    const/4 v0, 0x5

    return v0
.end method
