.class public final Lio/netty/channel/udt/UdtChannelOption;
.super Lio/netty/channel/ChannelOption;
.source "UdtChannelOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/channel/ChannelOption<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PROTOCOL_RECEIVE_BUFFER_SIZE:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_SEND_BUFFER_SIZE:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_RECEIVE_BUFFER_SIZE:Lio/netty/channel/ChannelOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_SEND_BUFFER_SIZE:Lio/netty/channel/ChannelOption;
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
    const-class v0, Lio/netty/channel/udt/UdtChannelOption;

    const-string v1, "PROTOCOL_RECEIVE_BUFFER_SIZE"

    .line 2
    invoke-static {v0, v1}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/udt/UdtChannelOption;->PROTOCOL_RECEIVE_BUFFER_SIZE:Lio/netty/channel/ChannelOption;

    .line 3
    const-class v0, Lio/netty/channel/udt/UdtChannelOption;

    const-string v1, "PROTOCOL_SEND_BUFFER_SIZE"

    .line 4
    invoke-static {v0, v1}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/udt/UdtChannelOption;->PROTOCOL_SEND_BUFFER_SIZE:Lio/netty/channel/ChannelOption;

    .line 5
    const-class v0, Lio/netty/channel/udt/UdtChannelOption;

    const-string v1, "SYSTEM_RECEIVE_BUFFER_SIZE"

    .line 6
    invoke-static {v0, v1}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/udt/UdtChannelOption;->SYSTEM_RECEIVE_BUFFER_SIZE:Lio/netty/channel/ChannelOption;

    .line 7
    const-class v0, Lio/netty/channel/udt/UdtChannelOption;

    const-string v1, "SYSTEM_SEND_BUFFER_SIZE"

    .line 8
    invoke-static {v0, v1}, Lio/netty/channel/ChannelOption;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    sput-object v0, Lio/netty/channel/udt/UdtChannelOption;->SYSTEM_SEND_BUFFER_SIZE:Lio/netty/channel/ChannelOption;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/netty/channel/ChannelOption;-><init>(Ljava/lang/String;)V

    return-void
.end method
