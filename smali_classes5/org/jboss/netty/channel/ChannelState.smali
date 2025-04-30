.class public final enum Lorg/jboss/netty/channel/ChannelState;
.super Ljava/lang/Enum;
.source "ChannelState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jboss/netty/channel/ChannelState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/channel/ChannelState;

.field public static final enum BOUND:Lorg/jboss/netty/channel/ChannelState;

.field public static final enum CONNECTED:Lorg/jboss/netty/channel/ChannelState;

.field public static final enum INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

.field public static final enum OPEN:Lorg/jboss/netty/channel/ChannelState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/ChannelState;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    .line 2
    new-instance v1, Lorg/jboss/netty/channel/ChannelState;

    const-string v3, "BOUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jboss/netty/channel/ChannelState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    .line 3
    new-instance v3, Lorg/jboss/netty/channel/ChannelState;

    const-string v5, "CONNECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jboss/netty/channel/ChannelState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    .line 4
    new-instance v5, Lorg/jboss/netty/channel/ChannelState;

    const-string v7, "INTEREST_OPS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jboss/netty/channel/ChannelState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jboss/netty/channel/ChannelState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lorg/jboss/netty/channel/ChannelState;->$VALUES:[Lorg/jboss/netty/channel/ChannelState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelState;
    .locals 1

    .line 1
    const-class v0, Lorg/jboss/netty/channel/ChannelState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jboss/netty/channel/ChannelState;

    return-object p0
.end method

.method public static values()[Lorg/jboss/netty/channel/ChannelState;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/channel/ChannelState;->$VALUES:[Lorg/jboss/netty/channel/ChannelState;

    invoke-virtual {v0}, [Lorg/jboss/netty/channel/ChannelState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/channel/ChannelState;

    return-object v0
.end method
