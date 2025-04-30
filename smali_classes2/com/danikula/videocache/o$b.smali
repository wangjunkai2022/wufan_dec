.class Lcom/danikula/videocache/o$b;
.super Ljava/lang/Object;
.source "ProxyCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danikula/videocache/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/danikula/videocache/o;


# direct methods
.method private constructor <init>(Lcom/danikula/videocache/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/danikula/videocache/o$b;->a:Lcom/danikula/videocache/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/danikula/videocache/o;Lcom/danikula/videocache/o$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/danikula/videocache/o$b;-><init>(Lcom/danikula/videocache/o;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/o$b;->a:Lcom/danikula/videocache/o;

    invoke-static {v0}, Lcom/danikula/videocache/o;->a(Lcom/danikula/videocache/o;)V

    return-void
.end method
