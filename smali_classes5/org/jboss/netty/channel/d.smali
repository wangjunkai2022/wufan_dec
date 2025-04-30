.class public Lorg/jboss/netty/channel/d;
.super Ljava/lang/Object;
.source "AdaptiveReceiveBufferSizePredictorFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/k0;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x40

    const/16 v1, 0x400

    const/high16 v2, 0x10000

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/d;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_2

    if-lt p2, p1, :cond_1

    if-lt p3, p2, :cond_0

    .line 3
    iput p1, p0, Lorg/jboss/netty/channel/d;->a:I

    .line 4
    iput p2, p0, Lorg/jboss/netty/channel/d;->b:I

    .line 5
    iput p3, p0, Lorg/jboss/netty/channel/d;->c:I

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maximum: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initial: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "minimum: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a()Lorg/jboss/netty/channel/j0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/c;

    iget v1, p0, Lorg/jboss/netty/channel/d;->a:I

    iget v2, p0, Lorg/jboss/netty/channel/d;->b:I

    iget v3, p0, Lorg/jboss/netty/channel/d;->c:I

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/c;-><init>(III)V

    return-object v0
.end method
