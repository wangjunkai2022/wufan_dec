.class Lcom/join/mgps/service/UpdateLodingService$b;
.super Landroid/os/Handler;
.source "UpdateLodingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/UpdateLodingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/service/UpdateLodingService;


# direct methods
.method public constructor <init>(Lcom/join/mgps/service/UpdateLodingService;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/UpdateLodingService$b;->b:Lcom/join/mgps/service/UpdateLodingService;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p3, p0, Lcom/join/mgps/service/UpdateLodingService$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    if-eqz p1, :cond_5

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/service/UpdateLodingService$b;->b:Lcom/join/mgps/service/UpdateLodingService;

    iget-object v0, v0, Lcom/join/mgps/service/UpdateLodingService;->f:Lcom/join/mgps/service/UpdateLodingService$d;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/join/mgps/service/UpdateLodingService$d;->update(ILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/service/UpdateLodingService$b;->b:Lcom/join/mgps/service/UpdateLodingService;

    iget-object v0, v0, Lcom/join/mgps/service/UpdateLodingService;->f:Lcom/join/mgps/service/UpdateLodingService$d;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/join/mgps/service/UpdateLodingService$d;->update(ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/service/UpdateLodingService$b;->b:Lcom/join/mgps/service/UpdateLodingService;

    iget-object v0, v0, Lcom/join/mgps/service/UpdateLodingService;->f:Lcom/join/mgps/service/UpdateLodingService$d;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/join/mgps/service/UpdateLodingService$d;->update(ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/service/UpdateLodingService$b;->b:Lcom/join/mgps/service/UpdateLodingService;

    iget-object v0, v0, Lcom/join/mgps/service/UpdateLodingService;->f:Lcom/join/mgps/service/UpdateLodingService$d;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/join/mgps/service/UpdateLodingService$d;->update(ILjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/service/UpdateLodingService$b;->b:Lcom/join/mgps/service/UpdateLodingService;

    iget-object v0, v0, Lcom/join/mgps/service/UpdateLodingService;->f:Lcom/join/mgps/service/UpdateLodingService$d;

    const/4 v1, 0x0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/join/mgps/service/UpdateLodingService$d;->update(ILjava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method
