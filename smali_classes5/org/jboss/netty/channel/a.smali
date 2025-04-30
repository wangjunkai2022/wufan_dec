.class public abstract Lorg/jboss/netty/channel/a;
.super Ljava/lang/Object;
.source "AbstractChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/a$a;
    }
.end annotation


# static fields
.field static final k:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/channel/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/Random;

.field static final synthetic m:Z


# instance fields
.field private final a:Ljava/lang/Integer;

.field private final b:Lorg/jboss/netty/channel/e;

.field private final c:Lorg/jboss/netty/channel/i;

.field private final d:Lorg/jboss/netty/channel/n;

.field private final e:Lorg/jboss/netty/channel/j;

.field private final f:Lorg/jboss/netty/channel/a$a;

.field private volatile g:I

.field private h:Z

.field private i:Ljava/lang/String;

.field private volatile j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/jboss/netty/channel/a;

    .line 2
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/a;->k:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/a;->l:Ljava/util/Random;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Integer;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lorg/jboss/netty/channel/n0;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/n0;-><init>(Lorg/jboss/netty/channel/e;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/a;->e:Lorg/jboss/netty/channel/j;

    .line 12
    new-instance v0, Lorg/jboss/netty/channel/a$a;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/a$a;-><init>(Lorg/jboss/netty/channel/a;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/a;->f:Lorg/jboss/netty/channel/a$a;

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lorg/jboss/netty/channel/a;->g:I

    .line 14
    iput-object p1, p0, Lorg/jboss/netty/channel/a;->a:Ljava/lang/Integer;

    .line 15
    iput-object p2, p0, Lorg/jboss/netty/channel/a;->b:Lorg/jboss/netty/channel/e;

    .line 16
    iput-object p3, p0, Lorg/jboss/netty/channel/a;->c:Lorg/jboss/netty/channel/i;

    .line 17
    iput-object p4, p0, Lorg/jboss/netty/channel/a;->d:Lorg/jboss/netty/channel/n;

    .line 18
    invoke-interface {p4, p0, p5}, Lorg/jboss/netty/channel/n;->i(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/p;)V

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/jboss/netty/channel/n0;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/n0;-><init>(Lorg/jboss/netty/channel/e;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/a;->e:Lorg/jboss/netty/channel/j;

    .line 3
    new-instance v0, Lorg/jboss/netty/channel/a$a;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/a$a;-><init>(Lorg/jboss/netty/channel/a;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/a;->f:Lorg/jboss/netty/channel/a$a;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lorg/jboss/netty/channel/a;->g:I

    .line 5
    iput-object p1, p0, Lorg/jboss/netty/channel/a;->b:Lorg/jboss/netty/channel/e;

    .line 6
    iput-object p2, p0, Lorg/jboss/netty/channel/a;->c:Lorg/jboss/netty/channel/i;

    .line 7
    iput-object p3, p0, Lorg/jboss/netty/channel/a;->d:Lorg/jboss/netty/channel/n;

    .line 8
    invoke-static {p0}, Lorg/jboss/netty/channel/a;->m(Lorg/jboss/netty/channel/e;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jboss/netty/channel/a;->a:Ljava/lang/Integer;

    .line 9
    invoke-interface {p3, p0, p4}, Lorg/jboss/netty/channel/n;->i(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/p;)V

    return-void
.end method

.method private static m(Lorg/jboss/netty/channel/e;)Ljava/lang/Integer;
    .locals 2

    .line 1
    sget-object v0, Lorg/jboss/netty/channel/a;->l:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    :goto_0
    sget-object v1, Lorg/jboss/netty/channel/a;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private x()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const-string v0, "00000000"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected A()Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->e:Lorg/jboss/netty/channel/j;

    return-object v0
.end method

.method public Q()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/a;->g:I

    return v0
.end method

.method protected U()Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/f0;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/channel/f0;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected Y()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/jboss/netty/channel/a;->k:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lorg/jboss/netty/channel/a;->a:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->f:Lorg/jboss/netty/channel/a$a;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/a$a;->n()Z

    move-result v0

    return v0
.end method

.method protected a0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/jboss/netty/channel/a;->g:I

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/a;->j:Ljava/lang/Object;

    return-void
.end method

.method public bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/s;->a(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    move-result-object p1

    return-object p1
.end method

.method public close()Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->c(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->f:Lorg/jboss/netty/channel/a$a;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/jboss/netty/channel/e;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/a;->s(Lorg/jboss/netty/channel/e;)I

    move-result p1

    return p1
.end method

.method public connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/s;->e(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public disconnect()Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->g(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->X(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(I)Lorg/jboss/netty/channel/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/s;->U(Lorg/jboss/netty/channel/e;I)Lorg/jboss/netty/channel/j;

    move-result-object p1

    return-object p1
.end method

.method public final getId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public getParent()Lorg/jboss/netty/channel/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->b:Lorg/jboss/netty/channel/e;

    return-object v0
.end method

.method public getPipeline()Lorg/jboss/netty/channel/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->d:Lorg/jboss/netty/channel/n;

    return-object v0
.end method

.method public h(Z)Lorg/jboss/netty/channel/j;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->Q()I

    move-result p1

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/a;->g(I)Lorg/jboss/netty/channel/j;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->Q()I

    move-result p1

    and-int/lit8 p1, p1, -0x2

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/a;->g(I)Lorg/jboss/netty/channel/j;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/channel/s;->b0(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    move-result-object p1

    return-object p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->f:Lorg/jboss/netty/channel/a$a;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/w;->isDone()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isReadable()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->Q()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWritable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->Q()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final s(Lorg/jboss/netty/channel/e;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/channel/e;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public t()Lorg/jboss/netty/channel/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->c:Lorg/jboss/netty/channel/i;

    return-object v0
.end method

.method public t0()Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->f:Lorg/jboss/netty/channel/a$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->isConnected()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lorg/jboss/netty/channel/a;->h:Z

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/channel/a;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "[id: 0x"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {p0}, Lorg/jboss/netty/channel/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 7
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    const-string v4, ", "

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->getParent()Lorg/jboss/netty/channel/e;

    move-result-object v4

    const-string v5, " => "

    const-string v6, " :> "

    if-nez v4, :cond_2

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v6

    .line 11
    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v6

    .line 14
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    const/16 v2, 0x5d

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    iput-object v1, p0, Lorg/jboss/netty/channel/a;->i:Ljava/lang/String;

    .line 21
    iput-boolean v0, p0, Lorg/jboss/netty/channel/a;->h:Z

    return-object v1
.end method

.method public write(Ljava/lang/Object;)Lorg/jboss/netty/channel/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/s;->a0(Lorg/jboss/netty/channel/e;Ljava/lang/Object;)Lorg/jboss/netty/channel/j;

    move-result-object p1

    return-object p1
.end method
