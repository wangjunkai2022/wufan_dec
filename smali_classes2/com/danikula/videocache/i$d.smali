.class final Lcom/danikula/videocache/i$d;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danikula/videocache/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/danikula/videocache/i;


# direct methods
.method public constructor <init>(Lcom/danikula/videocache/i;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/danikula/videocache/i$d;->b:Lcom/danikula/videocache/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/danikula/videocache/i$d;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/i$d;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2
    iget-object v0, p0, Lcom/danikula/videocache/i$d;->b:Lcom/danikula/videocache/i;

    invoke-static {v0}, Lcom/danikula/videocache/i;->a(Lcom/danikula/videocache/i;)V

    return-void
.end method
