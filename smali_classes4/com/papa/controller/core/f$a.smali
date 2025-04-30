.class Lcom/papa/controller/core/f$a;
.super Ljava/lang/Object;
.source "PaBluetoothSppMonitor.java"

# interfaces
.implements Lcom/papa/controller/component/bluetooth/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/core/f;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/controller/core/f;


# direct methods
.method constructor <init>(Lcom/papa/controller/core/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/f$a;->a:Lcom/papa/controller/core/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/f$a;->a:Lcom/papa/controller/core/f;

    invoke-static {v0}, Lcom/papa/controller/core/f;->a(Lcom/papa/controller/core/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/papa/controller/core/f$a;->a:Lcom/papa/controller/core/f;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/papa/controller/core/f;->b(Lcom/papa/controller/core/f;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/f$a;->a:Lcom/papa/controller/core/f;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/papa/controller/core/f;->c(Lcom/papa/controller/core/f;Ljava/lang/String;)V

    return-void
.end method
