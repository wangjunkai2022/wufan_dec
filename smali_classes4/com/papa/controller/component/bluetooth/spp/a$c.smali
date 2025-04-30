.class Lcom/papa/controller/component/bluetooth/spp/a$c;
.super Ljava/lang/Object;
.source "BluetoothSPP.java"

# interfaces
.implements Lcom/papa/controller/component/bluetooth/spp/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/component/bluetooth/spp/a;->y(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/papa/controller/component/bluetooth/spp/a;


# direct methods
.method constructor <init>(Lcom/papa/controller/component/bluetooth/spp/a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    iput-object p2, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->b(Lcom/papa/controller/component/bluetooth/spp/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->w(Lcom/papa/controller/component/bluetooth/spp/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->k(Lcom/papa/controller/component/bluetooth/spp/a;)I

    .line 4
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->i(Lcom/papa/controller/component/bluetooth/spp/a;)I

    move-result v0

    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->j(Lcom/papa/controller/component/bluetooth/spp/a;I)I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->i(Lcom/papa/controller/component/bluetooth/spp/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->B(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->l(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->l(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v2}, Lcom/papa/controller/component/bluetooth/spp/a;->i(Lcom/papa/controller/component/bluetooth/spp/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 9
    invoke-static {v3}, Lcom/papa/controller/component/bluetooth/spp/a;->i(Lcom/papa/controller/component/bluetooth/spp/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-interface {v0, v1, v2}, Lcom/papa/controller/component/bluetooth/spp/a$d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/papa/controller/component/bluetooth/spp/a;->g(Lcom/papa/controller/component/bluetooth/spp/a;Lcom/papa/controller/component/bluetooth/spp/a$e;)Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 12
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->h(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/papa/controller/component/bluetooth/spp/a;->g(Lcom/papa/controller/component/bluetooth/spp/a;Lcom/papa/controller/component/bluetooth/spp/a$e;)Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 2
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/papa/controller/component/bluetooth/spp/a;->h(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z

    return-void
.end method
