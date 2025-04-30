.class final Lcom/efs/sdk/memoryinfo/b$1$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/efs/sdk/memoryinfo/b$1;->onChange(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/os/HandlerThread;

.field final synthetic e:Lcom/efs/sdk/memoryinfo/b$1;


# direct methods
.method constructor <init>(Lcom/efs/sdk/memoryinfo/b$1;Landroid/os/Looper;Landroid/os/HandlerThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/efs/sdk/memoryinfo/b$1$1;->e:Lcom/efs/sdk/memoryinfo/b$1;

    iput-object p3, p0, Lcom/efs/sdk/memoryinfo/b$1$1;->d:Landroid/os/HandlerThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/efs/sdk/memoryinfo/b$1$1;->d:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
