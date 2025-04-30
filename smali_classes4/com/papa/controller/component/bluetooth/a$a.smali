.class Lcom/papa/controller/component/bluetooth/a$a;
.super Landroid/os/Handler;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/component/bluetooth/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/controller/component/bluetooth/a;


# direct methods
.method constructor <init>(Lcom/papa/controller/component/bluetooth/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/a$a;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/a$a;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/a;->a(Lcom/papa/controller/component/bluetooth/a;)Lcom/papa/controller/component/bluetooth/a$d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 4
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 5
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/a$a;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-static {v2}, Lcom/papa/controller/component/bluetooth/a;->b(Lcom/papa/controller/component/bluetooth/a;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 8
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/a$a;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-static {v2}, Lcom/papa/controller/component/bluetooth/a;->b(Lcom/papa/controller/component/bluetooth/a;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$a;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-static {p1, v1, v0}, Lcom/papa/controller/component/bluetooth/a;->c(Lcom/papa/controller/component/bluetooth/a;ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/a$a;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-static {v1}, Lcom/papa/controller/component/bluetooth/a;->b(Lcom/papa/controller/component/bluetooth/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/a$a;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-static {v1}, Lcom/papa/controller/component/bluetooth/a;->b(Lcom/papa/controller/component/bluetooth/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$a;->a:Lcom/papa/controller/component/bluetooth/a;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/papa/controller/component/bluetooth/a;->c(Lcom/papa/controller/component/bluetooth/a;ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$a;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/a;->a(Lcom/papa/controller/component/bluetooth/a;)Lcom/papa/controller/component/bluetooth/a$d;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/papa/controller/component/bluetooth/a$d;->a(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$a;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/a;->a(Lcom/papa/controller/component/bluetooth/a;)Lcom/papa/controller/component/bluetooth/a$d;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/papa/controller/component/bluetooth/a$d;->b(Landroid/bluetooth/BluetoothDevice;)V

    :cond_5
    :goto_0
    return-void
.end method
