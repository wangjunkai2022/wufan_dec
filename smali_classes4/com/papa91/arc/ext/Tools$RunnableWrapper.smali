.class public Lcom/papa91/arc/ext/Tools$RunnableWrapper;
.super Ljava/lang/Object;
.source "Tools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/ext/Tools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunnableWrapper"
.end annotation


# instance fields
.field final base:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/papa91/arc/ext/Tools$RunnableWrapper;->base:Ljava/lang/Runnable;

    return-void
.end method

.method public static wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/papa91/arc/ext/Tools$RunnableWrapper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/ext/Tools$RunnableWrapper;

    invoke-direct {v0, p0}, Lcom/papa91/arc/ext/Tools$RunnableWrapper;-><init>(Ljava/lang/Runnable;)V

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa91/arc/ext/Tools$RunnableWrapper;->base:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/papa91/arc/ext/Log;->badImplementation(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
