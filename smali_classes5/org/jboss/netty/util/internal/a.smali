.class public final Lorg/jboss/netty/util/internal/a;
.super Ljava/lang/Object;
.source "ByteBufferUtil.java"


# static fields
.field private static final a:Z

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "java.nio.DirectByteBuffer"

    .line 1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "cleaner"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v4, "sun.misc.Cleaner"

    .line 3
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "clean"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-object v1, v0

    :goto_0
    move-object v3, v0

    move-object v0, v1

    const/4 v1, 0x0

    .line 5
    :goto_1
    sput-boolean v1, Lorg/jboss/netty/util/internal/a;->a:Z

    .line 6
    sput-object v3, Lorg/jboss/netty/util/internal/a;->b:Ljava/lang/reflect/Method;

    .line 7
    sput-object v0, Lorg/jboss/netty/util/internal/a;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    sget-boolean v0, Lorg/jboss/netty/util/internal/a;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Lorg/jboss/netty/util/internal/a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    sget-object v0, Lorg/jboss/netty/util/internal/a;->c:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
