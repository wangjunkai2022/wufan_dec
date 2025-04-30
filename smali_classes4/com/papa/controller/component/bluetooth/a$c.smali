.class Lcom/papa/controller/component/bluetooth/a$c;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/bluetooth/a;
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
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/a$c;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$c;->a:Lcom/papa/controller/component/bluetooth/a;

    const-string v0, "btReceiver-onReceive"

    invoke-static {p1, v0}, Lcom/papa/controller/component/bluetooth/a;->d(Lcom/papa/controller/component/bluetooth/a;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$c;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/a;->f(Lcom/papa/controller/component/bluetooth/a;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$c;->a:Lcom/papa/controller/component/bluetooth/a;

    .line 5
    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/a;->p()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$c;->a:Lcom/papa/controller/component/bluetooth/a;

    .line 6
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/a;->g(Lcom/papa/controller/component/bluetooth/a;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$c;->a:Lcom/papa/controller/component/bluetooth/a;

    .line 7
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/a;->h(Lcom/papa/controller/component/bluetooth/a;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 8
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$c;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/a;->x()V

    .line 9
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$c;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/a;->s()V

    goto/16 :goto_1

    :cond_0
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.bluetooth.device.action.CLASS_CHANGED"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.bluetooth.device.action.FOUND"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_4
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 19
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_1

    .line 20
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$c;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/a;->i(Lcom/papa/controller/component/bluetooth/a;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_6

    const/16 p1, 0x1f4

    .line 21
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/a;->w(I)V

    .line 22
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$c;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/a;->s()V

    goto :goto_1

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$c;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/a;->i(Lcom/papa/controller/component/bluetooth/a;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/papa/controller/component/bluetooth/a$c$a;

    invoke-direct {p2, p0}, Lcom/papa/controller/component/bluetooth/a$c$a;-><init>(Lcom/papa/controller/component/bluetooth/a$c;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_1
    return-void
.end method
