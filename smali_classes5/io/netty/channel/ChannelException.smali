.class public Lio/netty/channel/ChannelException;
.super Ljava/lang/RuntimeException;
.source "ChannelException.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x285d7cf2a6a69bbcL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/netty/channel/ChannelException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1
    .annotation build Lio/netty/util/internal/SuppressJava6Requirement;
        reason = "uses Java 7+ RuntimeException.<init>(String, Throwable, boolean, boolean) but is guarded by version checks"
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method static newStatic(Ljava/lang/String;Ljava/lang/Throwable;)Lio/netty/channel/ChannelException;
    .locals 2

    .line 1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lio/netty/channel/ChannelException;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/netty/channel/ChannelException;

    invoke-direct {v0, p0, p1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
