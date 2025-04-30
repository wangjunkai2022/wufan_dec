.class final Lorg/jboss/netty/channel/s$a;
.super Ljava/lang/Object;
.source "Channels.java"

# interfaces
.implements Lorg/jboss/netty/channel/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/s;->T(Lorg/jboss/netty/channel/n;)Lorg/jboss/netty/channel/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/jboss/netty/channel/n;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/s$a;->a:Lorg/jboss/netty/channel/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPipeline()Lorg/jboss/netty/channel/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/s$a;->a:Lorg/jboss/netty/channel/n;

    invoke-static {v0}, Lorg/jboss/netty/channel/s;->R(Lorg/jboss/netty/channel/n;)Lorg/jboss/netty/channel/n;

    move-result-object v0

    return-object v0
.end method
