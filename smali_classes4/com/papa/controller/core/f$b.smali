.class Lcom/papa/controller/core/f$b;
.super Ljava/lang/Object;
.source "PaBluetoothSppMonitor.java"

# interfaces
.implements Lcom/papa/controller/component/bluetooth/spp/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/core/f;->g(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/papa/controller/core/f;


# direct methods
.method constructor <init>(Lcom/papa/controller/core/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/f$b;->b:Lcom/papa/controller/core/f;

    iput-object p2, p0, Lcom/papa/controller/core/f$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BLjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/papa/controller/core/f$b;->b:Lcom/papa/controller/core/f;

    iget-object v0, p0, Lcom/papa/controller/core/f$b;->a:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/papa/controller/core/f;->d(Lcom/papa/controller/core/f;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
