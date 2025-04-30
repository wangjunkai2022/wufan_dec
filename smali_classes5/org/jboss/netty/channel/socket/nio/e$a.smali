.class Lorg/jboss/netty/channel/socket/nio/e$a;
.super Ljava/lang/Object;
.source "AbstractNioWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/socket/nio/e;->t(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/jboss/netty/channel/socket/nio/b;

.field final synthetic b:Lorg/jboss/netty/channel/j;

.field final synthetic c:I

.field final synthetic d:Lorg/jboss/netty/channel/socket/nio/e;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/e;Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/e$a;->d:Lorg/jboss/netty/channel/socket/nio/e;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/e$a;->a:Lorg/jboss/netty/channel/socket/nio/b;

    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/e$a;->b:Lorg/jboss/netty/channel/j;

    iput p4, p0, Lorg/jboss/netty/channel/socket/nio/e$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/e$a;->d:Lorg/jboss/netty/channel/socket/nio/e;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/e$a;->a:Lorg/jboss/netty/channel/socket/nio/b;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/e$a;->b:Lorg/jboss/netty/channel/j;

    iget v3, p0, Lorg/jboss/netty/channel/socket/nio/e$a;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jboss/netty/channel/socket/nio/e;->t(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;I)V

    return-void
.end method
