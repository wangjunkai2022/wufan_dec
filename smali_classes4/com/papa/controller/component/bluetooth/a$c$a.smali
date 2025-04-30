.class Lcom/papa/controller/component/bluetooth/a$c$a;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/component/bluetooth/a$c;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/controller/component/bluetooth/a$c;


# direct methods
.method constructor <init>(Lcom/papa/controller/component/bluetooth/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/a$c$a;->a:Lcom/papa/controller/component/bluetooth/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/a$c$a;->a:Lcom/papa/controller/component/bluetooth/a$c;

    iget-object v0, v0, Lcom/papa/controller/component/bluetooth/a$c;->a:Lcom/papa/controller/component/bluetooth/a;

    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/a;->s()V

    return-void
.end method
