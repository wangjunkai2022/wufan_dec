.class public Lorg/jboss/netty/channel/o0;
.super Ljava/lang/Object;
.source "UpstreamChannelStateEvent.java"

# interfaces
.implements Lorg/jboss/netty/channel/q;


# instance fields
.field private final a:Lorg/jboss/netty/channel/e;

.field private final b:Lorg/jboss/netty/channel/ChannelState;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "channel"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "state"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lorg/jboss/netty/channel/o0;->a:Lorg/jboss/netty/channel/e;

    .line 5
    iput-object p2, p0, Lorg/jboss/netty/channel/o0;->b:Lorg/jboss/netty/channel/ChannelState;

    .line 6
    iput-object p3, p0, Lorg/jboss/netty/channel/o0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d()Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/o0;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Lorg/jboss/netty/channel/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/o0;->a:Lorg/jboss/netty/channel/e;

    return-object v0
.end method

.method public getState()Lorg/jboss/netty/channel/ChannelState;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/o0;->b:Lorg/jboss/netty/channel/ChannelState;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/o0;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/o0;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    sget-object v0, Lorg/jboss/netty/channel/o0$a;->a:[I

    invoke-virtual {p0}, Lorg/jboss/netty/channel/o0;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/jboss/netty/channel/o0;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lorg/jboss/netty/channel/o0;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, " INTEREST_CHANGED"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/o0;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, " CONNECTED: "

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Lorg/jboss/netty/channel/o0;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v0, " DISCONNECTED"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0}, Lorg/jboss/netty/channel/o0;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, " BOUND: "

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Lorg/jboss/netty/channel/o0;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v0, " UNBOUND"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 17
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/o0;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " OPEN"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    const-string v0, " CLOSED"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
