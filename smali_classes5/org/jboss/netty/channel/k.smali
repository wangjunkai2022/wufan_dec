.class public interface abstract Lorg/jboss/netty/channel/k;
.super Ljava/lang/Object;
.source "ChannelFutureListener.java"

# interfaces
.implements Ljava/util/EventListener;


# static fields
.field public static final g0:Lorg/jboss/netty/channel/k;

.field public static final h0:Lorg/jboss/netty/channel/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/k$a;

    invoke-direct {v0}, Lorg/jboss/netty/channel/k$a;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/k;->g0:Lorg/jboss/netty/channel/k;

    .line 2
    new-instance v0, Lorg/jboss/netty/channel/k$b;

    invoke-direct {v0}, Lorg/jboss/netty/channel/k$b;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/k;->h0:Lorg/jboss/netty/channel/k;

    return-void
.end method


# virtual methods
.method public abstract b(Lorg/jboss/netty/channel/j;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
