.class Lcom/mob/tools/a/i$65;
.super Lcom/mob/tools/a/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/i;->a(Landroid/os/Handler$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/i$a<",
        "Landroid/os/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/a/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/i;Landroid/os/Message;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/i$65;->a:Lcom/mob/tools/a/i;

    invoke-direct {p0, p2, p3, p4}, Lcom/mob/tools/a/i$a;-><init>(Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/os/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/mob/tools/a/i$65;->a:Lcom/mob/tools/a/i;

    invoke-static {v1}, Lcom/mob/tools/a/i;->a(Lcom/mob/tools/a/i;)Lcom/mob/tools/a/b;

    move-result-object v1

    new-instance v2, Lcom/mob/tools/a/i$65$1;

    invoke-direct {v2, p0, v0}, Lcom/mob/tools/a/i$65$1;-><init>(Lcom/mob/tools/a/i$65;Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {v1, v2}, Lcom/mob/tools/a/b;->a(Landroid/os/Handler$Callback;)V

    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xbb8

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mob/tools/a/i$65;->a()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method
