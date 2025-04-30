.class public final Lio/netty/channel/epoll/EpollChannelOption;
.super Lio/netty/channel/unix/UnixChannelOption;
.source "EpollChannelOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/channel/unix/UnixChannelOption<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final EPOLL_MODE:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Lio/netty/channel/epoll/EpollMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final IP_FREEBIND:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final IP_RECVORIGDSTADDR:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final IP_TRANSPARENT:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_DATAGRAM_PAYLOAD_SIZE:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SO_BUSY_POLL:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TCP_CORK:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TCP_DEFER_ACCEPT:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TCP_FASTOPEN:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TCP_FASTOPEN_CONNECT:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TCP_KEEPCNT:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TCP_KEEPIDLE:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TCP_KEEPINTVL:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TCP_MD5SIG:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "[B>;>;"
        }
    .end annotation
.end field

.field public static final TCP_NOTSENT_LOWAT:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final TCP_QUICKACK:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TCP_USER_TIMEOUT:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lio/netty/channel/epoll/EpollChannelOption;

    const-string v1, "TCP_CORK"

    invoke-static {v0, v1}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_CORK:Lio/netty/channel/ChannelOption;

    .line 2
    const-class v0, Lio/netty/channel/epoll/EpollChannelOption;

    const-string v1, "TCP_NOTSENT_LOWAT"

    invoke-static {v0, v1}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_NOTSENT_LOWAT:Lio/netty/channel/ChannelOption;

    .line 3
    const-class v0, Lio/netty/channel/epoll/EpollChannelOption;

    const-string v1, "TCP_KEEPIDLE"

    invoke-static {v0, v1}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_KEEPIDLE:Lio/netty/channel/ChannelOption;

    .line 4
    const-class v0, Lio/netty/channel/epoll/EpollChannelOption;

    const-string v1, "TCP_KEEPINTVL"

    invoke-static {v0, v1}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_KEEPINTVL:Lio/netty/channel/ChannelOption;

    .line 5
    const-class v0, Lio/netty/channel/epoll/EpollChannelOption;

    const-string v1, "TCP_KEEPCNT"

    invoke-static {v0, v1}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_KEEPCNT:Lio/netty/channel/ChannelOption;

    .line 6
    const-class v0, Lio/netty/channel/epoll/EpollChannelOption;

    const-string v1, "TCP_USER_TIMEOUT"

    .line 7
    invoke-static {v0, v1}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_USER_TIMEOUT:Lio/netty/channel/ChannelOption;

    const-string v0, "IP_FREEBIND"

    .line 8
    invoke-static {v0}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->IP_FREEBIND:Lio/netty/channel/ChannelOption;

    const-string v0, "IP_TRANSPARENT"

    .line 9
    invoke-static {v0}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->IP_TRANSPARENT:Lio/netty/channel/ChannelOption;

    const-string v0, "IP_RECVORIGDSTADDR"

    .line 10
    invoke-static {v0}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->IP_RECVORIGDSTADDR:Lio/netty/channel/ChannelOption;

    .line 11
    const-class v0, Lio/netty/channel/epoll/EpollChannelOption;

    const-string v1, "TCP_FASTOPEN"

    invoke-static {v0, v1}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_FASTOPEN:Lio/netty/channel/ChannelOption;

    .line 12
    const-class v0, Lio/netty/channel/epoll/EpollChannelOption;

    const-string v1, "TCP_FASTOPEN_CONNECT"

    .line 13
    invoke-static {v0, v1}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_FASTOPEN_CONNECT:Lio/netty/channel/ChannelOption;

    .line 14
    const-class v0, Lio/netty/channel/epoll/EpollChannelOption;

    const-string v1, "TCP_DEFER_ACCEPT"

    .line 15
    invoke-static {v0, v1}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_DEFER_ACCEPT:Lio/netty/channel/ChannelOption;

    .line 16
    const-class v0, Lio/netty/channel/epoll/EpollChannelOption;

    const-string v1, "TCP_QUICKACK"

    invoke-static {v0, v1}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_QUICKACK:Lio/netty/channel/ChannelOption;

    .line 17
    const-class v0, Lio/netty/channel/epoll/EpollChannelOption;

    const-string v1, "SO_BUSY_POLL"

    invoke-static {v0, v1}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->SO_BUSY_POLL:Lio/netty/channel/ChannelOption;

    .line 18
    const-class v0, Lio/netty/channel/epoll/EpollChannelOption;

    const-string v1, "EPOLL_MODE"

    .line 19
    invoke-static {v0, v1}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->EPOLL_MODE:Lio/netty/channel/ChannelOption;

    const-string v0, "TCP_MD5SIG"

    .line 20
    invoke-static {v0}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_MD5SIG:Lio/netty/channel/ChannelOption;

    const-string v0, "MAX_DATAGRAM_PAYLOAD_SIZE"

    .line 21
    invoke-static {v0}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollChannelOption;->MAX_DATAGRAM_PAYLOAD_SIZE:Lio/netty/channel/ChannelOption;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/netty/channel/unix/UnixChannelOption;-><init>()V

    return-void
.end method
