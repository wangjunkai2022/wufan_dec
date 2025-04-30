.class public Lio/netty/handler/codec/spdy/SpdyProtocolException;
.super Ljava/lang/Exception;
.source "SpdyProtocolException.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x6d37dbcac25aef60L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/netty/handler/codec/spdy/SpdyProtocolException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .annotation build Lio/netty/util/internal/SuppressJava6Requirement;
        reason = "uses Java 7+ Exception.<init>(String, Throwable, boolean, boolean) but is guarded by version checks"
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method static newStatic(Ljava/lang/String;)Lio/netty/handler/codec/spdy/SpdyProtocolException;
    .locals 2

    .line 1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyProtocolException;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/spdy/SpdyProtocolException;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/spdy/SpdyProtocolException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
