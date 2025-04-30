.class final Lorg/jboss/netty/channel/s$h;
.super Ljava/lang/Object;
.source "Channels.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/s;->G(Lorg/jboss/netty/channel/m;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/jboss/netty/channel/m;

.field final synthetic b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/s$h;->a:Lorg/jboss/netty/channel/m;

    iput-object p2, p0, Lorg/jboss/netty/channel/s$h;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/s$h;->a:Lorg/jboss/netty/channel/m;

    iget-object v1, p0, Lorg/jboss/netty/channel/s$h;->b:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/s;->E(Lorg/jboss/netty/channel/m;Ljava/lang/Throwable;)V

    return-void
.end method
