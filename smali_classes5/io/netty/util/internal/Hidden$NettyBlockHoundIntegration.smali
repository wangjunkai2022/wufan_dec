.class public final Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration;
.super Ljava/lang/Object;
.source "Hidden.java"

# interfaces
.implements Lreactor/blockhound/integration/BlockHoundIntegration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/Hidden;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NettyBlockHoundIntegration"
.end annotation

.annotation build Lio/netty/util/internal/SuppressJava6Requirement;
    reason = "BlockHound is Java 8+, but this class is only loaded by it\'s SPI"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTo(Lreactor/blockhound/BlockHound$Builder;)V
    .locals 3

    const-string v0, "io.netty.channel.nio.NioEventLoop"

    const-string v1, "handleLoopException"

    .line 1
    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v0, "io.netty.channel.kqueue.KQueueEventLoop"

    .line 2
    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v0, "io.netty.channel.epoll.EpollEventLoop"

    .line 3
    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v0, "io.netty.util.HashedWheelTimer$Worker"

    const-string v1, "waitForNextTick"

    .line 4
    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v0, "io.netty.util.concurrent.SingleThreadEventExecutor"

    const-string v1, "confirmShutdown"

    .line 5
    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v1, "io.netty.handler.ssl.SslHandler"

    const-string v2, "handshake"

    .line 6
    invoke-virtual {p1, v1, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v2, "runAllDelegatedTasks"

    .line 7
    invoke-virtual {p1, v1, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v1, "io.netty.util.concurrent.GlobalEventExecutor"

    const-string v2, "takeTask"

    .line 8
    invoke-virtual {p1, v1, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 9
    invoke-virtual {p1, v0, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 10
    new-instance v0, Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration$1;

    invoke-direct {v0, p0}, Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration$1;-><init>(Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration;)V

    invoke-virtual {p1, v0}, Lreactor/blockhound/BlockHound$Builder;->nonBlockingThreadPredicate(Ljava/util/function/Function;)Lreactor/blockhound/BlockHound$Builder;

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lreactor/blockhound/integration/BlockHoundIntegration;

    invoke-virtual {p0, p1}, Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration;->compareTo(Lreactor/blockhound/integration/BlockHoundIntegration;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lreactor/blockhound/integration/BlockHoundIntegration;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
