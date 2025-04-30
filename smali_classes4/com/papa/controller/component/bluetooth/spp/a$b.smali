.class Lcom/papa/controller/component/bluetooth/spp/a$b;
.super Landroid/os/Handler;
.source "BluetoothSPP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/bluetooth/spp/a;
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
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->u(Lcom/papa/controller/component/bluetooth/spp/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "toast"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "device_name"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->o(Lcom/papa/controller/component/bluetooth/spp/a;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "device_address"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/papa/controller/component/bluetooth/spp/a;->q(Lcom/papa/controller/component/bluetooth/spp/a;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->r(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$e;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->r(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$e;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->n(Lcom/papa/controller/component/bluetooth/spp/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->p(Lcom/papa/controller/component/bluetooth/spp/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a$e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {p1, v2}, Lcom/papa/controller/component/bluetooth/spp/a;->t(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z

    goto/16 :goto_0

    .line 9
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    .line 10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    if-eqz p1, :cond_b

    .line 11
    array-length v1, p1

    if-lez v1, :cond_b

    .line 12
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->m(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$g;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 13
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->m(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$g;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/papa/controller/component/bluetooth/spp/a$g;->a([BLjava/lang/String;)V

    goto/16 :goto_0

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->v(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$f;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->v(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$f;

    move-result-object v0

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v4}, Lcom/papa/controller/component/bluetooth/spp/a$f;->a(I)V

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->s(Lcom/papa/controller/component/bluetooth/spp/a;)Z

    move-result v0

    const/4 v4, 0x3

    if-eqz v0, :cond_8

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v4, :cond_8

    .line 17
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->r(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$e;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 18
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->r(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa/controller/component/bluetooth/spp/a$e;->b()V

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->w(Lcom/papa/controller/component/bluetooth/spp/a;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0, v3}, Lcom/papa/controller/component/bluetooth/spp/a;->x(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z

    .line 21
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->c(Lcom/papa/controller/component/bluetooth/spp/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/papa/controller/component/bluetooth/spp/a;->y(Ljava/lang/String;)V

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0, v3}, Lcom/papa/controller/component/bluetooth/spp/a;->t(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z

    .line 23
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/papa/controller/component/bluetooth/spp/a;->o(Lcom/papa/controller/component/bluetooth/spp/a;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0, v5}, Lcom/papa/controller/component/bluetooth/spp/a;->q(Lcom/papa/controller/component/bluetooth/spp/a;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    :cond_8
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->e(Lcom/papa/controller/component/bluetooth/spp/a;)Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_9

    .line 26
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {p1, v2}, Lcom/papa/controller/component/bluetooth/spp/a;->f(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z

    goto :goto_0

    .line 27
    :cond_9
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->e(Lcom/papa/controller/component/bluetooth/spp/a;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 28
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v4, :cond_a

    .line 29
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->r(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$e;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 30
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->r(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$e;

    move-result-object p1

    invoke-interface {p1}, Lcom/papa/controller/component/bluetooth/spp/a$e;->a()V

    .line 31
    :cond_a
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-static {p1, v3}, Lcom/papa/controller/component/bluetooth/spp/a;->f(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z

    :cond_b
    :goto_0
    return-void
.end method
