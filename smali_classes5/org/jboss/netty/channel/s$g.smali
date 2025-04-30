.class final Lorg/jboss/netty/channel/s$g;
.super Ljava/lang/Object;
.source "Channels.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/s;->F(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/jboss/netty/channel/e;

.field final synthetic b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/s$g;->a:Lorg/jboss/netty/channel/e;

    iput-object p2, p0, Lorg/jboss/netty/channel/s$g;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/s$g;->a:Lorg/jboss/netty/channel/e;

    iget-object v1, p0, Lorg/jboss/netty/channel/s$g;->b:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    return-void
.end method
