.class public final synthetic Lcom/wufan/friend/chat/rpc/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# instance fields
.field public final synthetic a:Lcom/wufan/friend/chat/rpc/b;


# direct methods
.method public synthetic constructor <init>(Lcom/wufan/friend/chat/rpc/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wufan/friend/chat/rpc/a;->a:Lcom/wufan/friend/chat/rpc/b;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 1

    iget-object v0, p0, Lcom/wufan/friend/chat/rpc/a;->a:Lcom/wufan/friend/chat/rpc/b;

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/rpc/b;->a(Lcom/wufan/friend/chat/rpc/b;Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
