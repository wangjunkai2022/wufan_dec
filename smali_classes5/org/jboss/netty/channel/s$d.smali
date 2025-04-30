.class final Lorg/jboss/netty/channel/s$d;
.super Ljava/lang/Object;
.source "Channels.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/s;->t(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/jboss/netty/channel/e;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/s$d;->a:Lorg/jboss/netty/channel/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/s$d;->a:Lorg/jboss/netty/channel/e;

    invoke-static {v0}, Lorg/jboss/netty/channel/s;->r(Lorg/jboss/netty/channel/e;)V

    return-void
.end method
