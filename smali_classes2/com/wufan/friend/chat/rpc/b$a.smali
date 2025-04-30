.class Lcom/wufan/friend/chat/rpc/b$a;
.super Ljava/lang/Object;
.source "FriendClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wufan/friend/chat/rpc/b;->p(Lio/netty/channel/ChannelFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wufan/friend/chat/rpc/b;


# direct methods
.method constructor <init>(Lcom/wufan/friend/chat/rpc/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/rpc/b$a;->a:Lcom/wufan/friend/chat/rpc/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/rpc/b$a;->a:Lcom/wufan/friend/chat/rpc/b;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->d()V

    return-void
.end method
