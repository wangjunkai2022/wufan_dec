.class Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$3;
.super Ljava/lang/Object;
.source "AbstractHttp2StreamChannel.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

.field final synthetic val$bytes:J

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelPromise;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$3;->this$1:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

    iput-object p2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$3;->val$promise:Lio/netty/channel/ChannelPromise;

    iput-wide p3, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$3;->val$bytes:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$3;->this$1:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$3;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v0, p1, v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->access$1900(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    .line 3
    iget-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$3;->this$1:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;

    iget-object p1, p1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    iget-wide v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$3;->val$bytes:J

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$300(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;JZ)V

    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$Http2ChannelUnsafe$3;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
