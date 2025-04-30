.class Lcom/papa/controller/core/f$c;
.super Ljava/lang/Object;
.source "PaBluetoothSppMonitor.java"

# interfaces
.implements Lcom/papa/controller/component/bluetooth/spp/a$f;


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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/papa/controller/component/bluetooth/spp/a;

.field final synthetic d:Lcom/papa/controller/core/f;


# direct methods
.method constructor <init>(Lcom/papa/controller/core/f;Ljava/lang/String;Ljava/lang/String;Lcom/papa/controller/component/bluetooth/spp/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/f$c;->d:Lcom/papa/controller/core/f;

    iput-object p2, p0, Lcom/papa/controller/core/f$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa/controller/core/f$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/papa/controller/core/f$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Lcom/papa/controller/core/PadStateEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/papa/controller/core/f$c;->a:Ljava/lang/String;

    const/4 v6, 0x2

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/papa/controller/core/f$c;->b:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/papa/controller/core/PadStateEvent;-><init>(JILjava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2
    new-instance p1, Lcom/papa/controller/core/PadStateEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/papa/controller/core/f$c;->a:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/papa/controller/core/f$c;->b:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/papa/controller/core/PadStateEvent;-><init>(JILjava/lang/String;IILjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/papa/controller/core/f$c;->d:Lcom/papa/controller/core/f;

    iget-object v1, p0, Lcom/papa/controller/core/f$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0, v1}, Lcom/papa/controller/core/f;->e(Lcom/papa/controller/core/f;Lcom/papa/controller/component/bluetooth/spp/a;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/papa/controller/core/f$c;->d:Lcom/papa/controller/core/f;

    invoke-static {v0}, Lcom/papa/controller/core/f;->f(Lcom/papa/controller/core/f;)Lcom/papa/controller/core/c;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/papa/controller/core/f$c;->d:Lcom/papa/controller/core/f;

    invoke-static {v0}, Lcom/papa/controller/core/f;->f(Lcom/papa/controller/core/f;)Lcom/papa/controller/core/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/papa/controller/core/c;->c0(Lcom/papa/controller/core/PadStateEvent;)V

    :cond_2
    return-void
.end method
