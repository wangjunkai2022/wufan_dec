.class Lcom/papa/controller/core/e$c;
.super Ljava/lang/Object;
.source "PaBluetoothSpp.java"

# interfaces
.implements Lcom/papa/controller/component/bluetooth/spp/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/core/e;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/controller/core/e;


# direct methods
.method constructor <init>(Lcom/papa/controller/core/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    invoke-static {v0}, Lcom/papa/controller/core/e;->g(Lcom/papa/controller/core/e;)Lcom/papa/controller/component/bluetooth/spp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    .line 2
    invoke-static {v0}, Lcom/papa/controller/core/e;->g(Lcom/papa/controller/core/e;)Lcom/papa/controller/component/bluetooth/spp/a;

    move-result-object v0

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

    iget-object v1, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    invoke-static {v1}, Lcom/papa/controller/core/e;->d(Lcom/papa/controller/core/e;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    const/4 v8, 0x2

    iget-object v1, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    invoke-static {v1}, Lcom/papa/controller/core/e;->a(Lcom/papa/controller/core/e;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/papa/controller/core/PadStateEvent;-><init>(JILjava/lang/String;IILjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    invoke-static {v1}, Lcom/papa/controller/core/e;->f(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/c;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    invoke-static {v1}, Lcom/papa/controller/core/e;->f(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/c;

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

    iget-object v0, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    invoke-static {v0}, Lcom/papa/controller/core/e;->d(Lcom/papa/controller/core/e;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    invoke-static {v0}, Lcom/papa/controller/core/e;->a(Lcom/papa/controller/core/e;)Ljava/lang/String;

    move-result-object v7

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/papa/controller/core/PadStateEvent;-><init>(JILjava/lang/String;IILjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    invoke-static {v0}, Lcom/papa/controller/core/e;->f(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    invoke-static {v0}, Lcom/papa/controller/core/e;->f(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/c;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/papa/controller/core/c;->c0(Lcom/papa/controller/core/PadStateEvent;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
