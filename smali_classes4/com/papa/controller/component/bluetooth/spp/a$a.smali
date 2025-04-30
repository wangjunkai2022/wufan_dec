.class Lcom/papa/controller/component/bluetooth/spp/a$a;
.super Ljava/lang/Object;
.source "BluetoothSPP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/component/bluetooth/spp/a;->stopService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/controller/component/bluetooth/spp/a;


# direct methods
.method constructor <init>(Lcom/papa/controller/component/bluetooth/spp/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$a;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$a;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->a(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$a;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->d(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z

    .line 3
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$a;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->a(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->q()V

    :cond_0
    return-void
.end method
