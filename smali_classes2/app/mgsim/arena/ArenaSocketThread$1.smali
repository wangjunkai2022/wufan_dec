.class Lapp/mgsim/arena/ArenaSocketThread$1;
.super Ljava/lang/Object;
.source "ArenaSocketThread.java"

# interfaces
.implements Lorg/jboss/netty/channel/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/mgsim/arena/ArenaSocketThread;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/mgsim/arena/ArenaSocketThread;


# direct methods
.method constructor <init>(Lapp/mgsim/arena/ArenaSocketThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/ArenaSocketThread$1;->this$0:Lapp/mgsim/arena/ArenaSocketThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPipeline()Lorg/jboss/netty/channel/n;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jboss/netty/channel/ChannelHandler;

    .line 1
    new-instance v1, Lapp/mgsim/arena/ProtobufferDecoder;

    invoke-direct {v1}, Lapp/mgsim/arena/ProtobufferDecoder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lapp/mgsim/arena/BattleServiceHandler;

    iget-object v2, p0, Lapp/mgsim/arena/ArenaSocketThread$1;->this$0:Lapp/mgsim/arena/ArenaSocketThread;

    .line 2
    invoke-static {v2}, Lapp/mgsim/arena/ArenaSocketThread;->access$000(Lapp/mgsim/arena/ArenaSocketThread;)Lapp/mgsim/arena/SocketListener;

    move-result-object v2

    invoke-direct {v1, v2}, Lapp/mgsim/arena/BattleServiceHandler;-><init>(Lapp/mgsim/arena/SocketListener;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Lorg/jboss/netty/channel/s;->S([Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/n;

    move-result-object v0

    return-object v0
.end method
