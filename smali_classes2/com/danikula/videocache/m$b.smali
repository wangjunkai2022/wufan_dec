.class Lcom/danikula/videocache/m$b;
.super Ljava/lang/Object;
.source "Pinger.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danikula/videocache/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/danikula/videocache/m;


# direct methods
.method private constructor <init>(Lcom/danikula/videocache/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/danikula/videocache/m$b;->a:Lcom/danikula/videocache/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/danikula/videocache/m;Lcom/danikula/videocache/m$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/danikula/videocache/m$b;-><init>(Lcom/danikula/videocache/m;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/danikula/videocache/m$b;->a:Lcom/danikula/videocache/m;

    invoke-static {v0}, Lcom/danikula/videocache/m;->a(Lcom/danikula/videocache/m;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/danikula/videocache/m$b;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
