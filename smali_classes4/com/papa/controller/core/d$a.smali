.class Lcom/papa/controller/core/d$a;
.super Landroid/os/Handler;
.source "ControllerMonitor.java"


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
    iput-object p1, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    invoke-static {v0}, Lcom/papa/controller/core/d;->b(Lcom/papa/controller/core/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

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
    iget-object v1, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    invoke-static {v1}, Lcom/papa/controller/core/d;->f(Lcom/papa/controller/core/d;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    invoke-static {p1}, Lcom/papa/controller/core/d;->f(Lcom/papa/controller/core/d;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa/controller/core/e;

    .line 9
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    invoke-static {v0, p1}, Lcom/papa/controller/core/d;->g(Lcom/papa/controller/core/d;Lcom/papa/controller/core/e;)Z

    return-void

    .line 10
    :cond_1
    new-instance v1, Lcom/papa/controller/core/e;

    iget-object v2, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    invoke-static {v2}, Lcom/papa/controller/core/d;->h(Lcom/papa/controller/core/d;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/papa/controller/core/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    invoke-static {p1}, Lcom/papa/controller/core/d;->i(Lcom/papa/controller/core/d;)Lcom/papa/controller/core/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/papa/controller/core/e;->E(Lcom/papa/controller/core/c;)V

    .line 12
    iget-object p1, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    invoke-static {p1}, Lcom/papa/controller/core/d;->f(Lcom/papa/controller/core/d;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    invoke-static {p1, v1}, Lcom/papa/controller/core/d;->j(Lcom/papa/controller/core/d;Lcom/papa/controller/core/e;)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method b(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/papa/controller/core/ControllerManager$c;->b()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/papa/controller/core/ControllerManager$c;->b()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v0, p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    invoke-static {v0}, Lcom/papa/controller/core/d;->f(Lcom/papa/controller/core/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    invoke-static {v0}, Lcom/papa/controller/core/d;->f(Lcom/papa/controller/core/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa/controller/core/e;

    .line 7
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    invoke-static {v0, p1}, Lcom/papa/controller/core/d;->k(Lcom/papa/controller/core/d;Lcom/papa/controller/core/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

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
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    invoke-static {v0}, Lcom/papa/controller/core/d;->a(Lcom/papa/controller/core/d;)Lcom/papa/controller/core/ControllerManager$d;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    invoke-static {v0}, Lcom/papa/controller/core/d;->a(Lcom/papa/controller/core/d;)Lcom/papa/controller/core/ControllerManager$d;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/papa/controller/core/ControllerManager$c;

    invoke-interface {v0, p1}, Lcom/papa/controller/core/ControllerManager$d;->b(Lcom/papa/controller/core/ControllerManager$c;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    invoke-static {v0}, Lcom/papa/controller/core/d;->a(Lcom/papa/controller/core/d;)Lcom/papa/controller/core/ControllerManager$d;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/papa/controller/core/d$a;->a:Lcom/papa/controller/core/d;

    invoke-static {v0}, Lcom/papa/controller/core/d;->a(Lcom/papa/controller/core/d;)Lcom/papa/controller/core/ControllerManager$d;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/papa/controller/core/ControllerManager$c;

    invoke-interface {v0, p1}, Lcom/papa/controller/core/ControllerManager$d;->a(Lcom/papa/controller/core/ControllerManager$c;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 8
    check-cast p1, Lcom/papa/controller/core/ControllerManager$c;

    invoke-virtual {p0, p1}, Lcom/papa/controller/core/d$a;->b(Lcom/papa/controller/core/ControllerManager$c;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 10
    check-cast p1, Lcom/papa/controller/core/ControllerManager$c;

    invoke-virtual {p0, p1}, Lcom/papa/controller/core/d$a;->a(Lcom/papa/controller/core/ControllerManager$c;)V

    :cond_4
    :goto_0
    return-void
.end method
