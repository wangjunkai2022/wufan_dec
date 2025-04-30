.class Lcom/papa/controller/core/f$d;
.super Ljava/lang/Object;
.source "PaBluetoothSppMonitor.java"

# interfaces
.implements Lcom/papa/controller/component/bluetooth/spp/a$e;


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
    iput-object p1, p0, Lcom/papa/controller/core/f$d;->d:Lcom/papa/controller/core/f;

    iput-object p2, p0, Lcom/papa/controller/core/f$d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa/controller/core/f$d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/papa/controller/core/f$d;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/f$d;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/papa/controller/core/f$d;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/papa/controller/core/PadStateEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/papa/controller/core/f$d;->a:Ljava/lang/String;

    const/16 v7, 0x8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/papa/controller/core/f$d;->b:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/papa/controller/core/PadStateEvent;-><init>(JILjava/lang/String;IILjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/papa/controller/core/f$d;->d:Lcom/papa/controller/core/f;

    invoke-static {v1}, Lcom/papa/controller/core/f;->f(Lcom/papa/controller/core/f;)Lcom/papa/controller/core/c;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/papa/controller/core/f$d;->d:Lcom/papa/controller/core/f;

    invoke-static {v1}, Lcom/papa/controller/core/f;->f(Lcom/papa/controller/core/f;)Lcom/papa/controller/core/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/papa/controller/core/c;->c0(Lcom/papa/controller/core/PadStateEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 9

    .line 1
    new-instance v8, Lcom/papa/controller/core/PadStateEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Lcom/papa/controller/core/f$d;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/papa/controller/core/f$d;->b:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/papa/controller/core/PadStateEvent;-><init>(JILjava/lang/String;IILjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/papa/controller/core/f$d;->d:Lcom/papa/controller/core/f;

    invoke-static {v0}, Lcom/papa/controller/core/f;->f(Lcom/papa/controller/core/f;)Lcom/papa/controller/core/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/papa/controller/core/f$d;->d:Lcom/papa/controller/core/f;

    invoke-static {v0}, Lcom/papa/controller/core/f;->f(Lcom/papa/controller/core/f;)Lcom/papa/controller/core/c;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/papa/controller/core/c;->c0(Lcom/papa/controller/core/PadStateEvent;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
