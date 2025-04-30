.class public Lcom/papa91/arc/ext/Tools$HandlerWrapper;
.super Landroid/os/Handler;
.source "Tools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/ext/Tools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandlerWrapper"
.end annotation


# instance fields
.field final base:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p1, p0, Lcom/papa91/arc/ext/Tools$HandlerWrapper;->base:Landroid/os/Handler;

    return-void
.end method

.method public static wrap(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/papa91/arc/ext/Tools$HandlerWrapper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/ext/Tools$HandlerWrapper;

    invoke-direct {v0, p0}, Lcom/papa91/arc/ext/Tools$HandlerWrapper;-><init>(Landroid/os/Handler;)V

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa91/arc/ext/Tools$HandlerWrapper;->base:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/papa91/arc/ext/Log;->badImplementation(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
