.class Lcom/bda/controller/Controller$a;
.super Lcom/bda/controller/d$a;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bda/controller/Controller;


# direct methods
.method constructor <init>(Lcom/bda/controller/Controller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bda/controller/Controller$a;->this$0:Lcom/bda/controller/Controller;

    invoke-direct {p0}, Lcom/bda/controller/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(Lcom/bda/controller/KeyEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bda/controller/BaseEvent;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/bda/controller/Controller$a;->this$0:Lcom/bda/controller/Controller;

    iget-object v1, v0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/b;

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Lcom/bda/controller/Controller$c;

    invoke-direct {v1, v0, p1}, Lcom/bda/controller/Controller$c;-><init>(Lcom/bda/controller/Controller;Lcom/bda/controller/KeyEvent;)V

    .line 4
    iget-object p1, p0, Lcom/bda/controller/Controller$a;->this$0:Lcom/bda/controller/Controller;

    iget-object p1, p1, Lcom/bda/controller/Controller;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/bda/controller/Controller$c;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bda/controller/BaseEvent;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/bda/controller/Controller$a;->this$0:Lcom/bda/controller/Controller;

    iget-object v1, v0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/b;

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Lcom/bda/controller/Controller$d;

    invoke-direct {v1, v0, p1}, Lcom/bda/controller/Controller$d;-><init>(Lcom/bda/controller/Controller;Lcom/bda/controller/MotionEvent;)V

    .line 4
    iget-object p1, p0, Lcom/bda/controller/Controller$a;->this$0:Lcom/bda/controller/Controller;

    iget-object p1, p1, Lcom/bda/controller/Controller;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/bda/controller/Controller$d;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStateEvent(Lcom/bda/controller/StateEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bda/controller/BaseEvent;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/bda/controller/Controller$a;->this$0:Lcom/bda/controller/Controller;

    iget-object v1, v0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/b;

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Lcom/bda/controller/Controller$f;

    invoke-direct {v1, v0, p1}, Lcom/bda/controller/Controller$f;-><init>(Lcom/bda/controller/Controller;Lcom/bda/controller/StateEvent;)V

    .line 4
    iget-object p1, p0, Lcom/bda/controller/Controller$a;->this$0:Lcom/bda/controller/Controller;

    iget-object p1, p1, Lcom/bda/controller/Controller;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/bda/controller/Controller$f;->run()V

    :cond_1
    :goto_0
    return-void
.end method
