.class Lcom/papa/controller/component/bluetooth/a$b;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/a$b;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$b;->a:Lcom/papa/controller/component/bluetooth/a;

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/papa/controller/component/bluetooth/a;->d(Lcom/papa/controller/component/bluetooth/a;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$b;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-static {p1, p2}, Lcom/papa/controller/component/bluetooth/a;->e(Lcom/papa/controller/component/bluetooth/a;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    .line 3
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$b;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/a;->s()V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$b;->a:Lcom/papa/controller/component/bluetooth/a;

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/papa/controller/component/bluetooth/a;->d(Lcom/papa/controller/component/bluetooth/a;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/a$b;->a:Lcom/papa/controller/component/bluetooth/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/papa/controller/component/bluetooth/a;->e(Lcom/papa/controller/component/bluetooth/a;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    return-void
.end method
