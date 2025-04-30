.class Lcom/papa/controller/core/d$b;
.super Ljava/lang/Object;
.source "ControllerMonitor.java"

# interfaces
.implements Lcom/papa/controller/core/ControllerManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/core/d;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/controller/core/d;


# direct methods
.method constructor <init>(Lcom/papa/controller/core/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    invoke-static {v0}, Lcom/papa/controller/core/d;->l(Lcom/papa/controller/core/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    invoke-static {v0}, Lcom/papa/controller/core/d;->l(Lcom/papa/controller/core/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/papa/controller/core/d$b;->c(Lcom/papa/controller/core/ControllerManager$c;)V

    return-void
.end method

.method public b(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    invoke-static {v0}, Lcom/papa/controller/core/d;->l(Lcom/papa/controller/core/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    invoke-static {v0}, Lcom/papa/controller/core/d;->l(Lcom/papa/controller/core/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method c(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    invoke-static {v0}, Lcom/papa/controller/core/d;->b(Lcom/papa/controller/core/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    invoke-static {v0}, Lcom/papa/controller/core/d;->e(Lcom/papa/controller/core/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/papa/controller/core/ControllerManager$c;->b()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/papa/controller/core/ControllerManager$c;->b()Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of v0, p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    invoke-static {v1}, Lcom/papa/controller/core/d;->f(Lcom/papa/controller/core/d;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    invoke-static {p1}, Lcom/papa/controller/core/d;->f(Lcom/papa/controller/core/d;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa/controller/core/e;

    .line 9
    iget-object v0, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    invoke-static {v0, p1}, Lcom/papa/controller/core/d;->g(Lcom/papa/controller/core/d;Lcom/papa/controller/core/e;)Z

    return-void

    .line 10
    :cond_1
    new-instance v1, Lcom/papa/controller/core/e;

    iget-object v2, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    invoke-static {v2}, Lcom/papa/controller/core/d;->h(Lcom/papa/controller/core/d;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/papa/controller/core/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    invoke-static {p1}, Lcom/papa/controller/core/d;->i(Lcom/papa/controller/core/d;)Lcom/papa/controller/core/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/papa/controller/core/e;->E(Lcom/papa/controller/core/c;)V

    .line 12
    iget-object p1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    invoke-static {p1}, Lcom/papa/controller/core/d;->c(Lcom/papa/controller/core/d;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/papa/controller/core/e;->F(Landroid/os/Handler;)V

    .line 13
    iget-object p1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    invoke-static {p1}, Lcom/papa/controller/core/d;->d(Lcom/papa/controller/core/d;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/papa/controller/core/e;->G(Z)V

    .line 14
    iget-object p1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    invoke-static {p1}, Lcom/papa/controller/core/d;->f(Lcom/papa/controller/core/d;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/papa/controller/core/d$b;->a:Lcom/papa/controller/core/d;

    invoke-static {p1, v1}, Lcom/papa/controller/core/d;->j(Lcom/papa/controller/core/d;Lcom/papa/controller/core/e;)V

    nop

    :cond_2
    :goto_0
    return-void
.end method
