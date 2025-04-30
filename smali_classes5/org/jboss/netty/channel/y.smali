.class public Lorg/jboss/netty/channel/y;
.super Ljava/lang/Object;
.source "DefaultChildChannelStateEvent.java"

# interfaces
.implements Lorg/jboss/netty/channel/t;


# instance fields
.field private final a:Lorg/jboss/netty/channel/e;

.field private final b:Lorg/jboss/netty/channel/e;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "parentChannel"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "childChannel"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lorg/jboss/netty/channel/y;->a:Lorg/jboss/netty/channel/e;

    .line 5
    iput-object p2, p0, Lorg/jboss/netty/channel/y;->b:Lorg/jboss/netty/channel/e;

    return-void
.end method


# virtual methods
.method public b()Lorg/jboss/netty/channel/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/y;->b:Lorg/jboss/netty/channel/e;

    return-object v0
.end method

.method public d()Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/y;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Lorg/jboss/netty/channel/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/y;->a:Lorg/jboss/netty/channel/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/y;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lorg/jboss/netty/channel/y;->b()Lorg/jboss/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/e;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " CHILD_OPEN: "

    goto :goto_0

    :cond_0
    const-string v0, " CHILD_CLOSED: "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lorg/jboss/netty/channel/y;->b()Lorg/jboss/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/e;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
