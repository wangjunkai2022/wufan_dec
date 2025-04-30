.class final Lorg/jboss/netty/channel/s$b;
.super Ljava/lang/Object;
.source "Channels.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/s;->N(Lorg/jboss/netty/channel/e;J)Lorg/jboss/netty/channel/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/jboss/netty/channel/e;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/e;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/s$b;->a:Lorg/jboss/netty/channel/e;

    iput-wide p2, p0, Lorg/jboss/netty/channel/s$b;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/s$b;->a:Lorg/jboss/netty/channel/e;

    iget-wide v1, p0, Lorg/jboss/netty/channel/s$b;->b:J

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/channel/s;->L(Lorg/jboss/netty/channel/e;J)V

    return-void
.end method
