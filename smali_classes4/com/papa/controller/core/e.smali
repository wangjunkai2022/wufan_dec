.class public Lcom/papa/controller/core/e;
.super Ljava/lang/Object;
.source "PaBluetoothSpp.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/papa/controller/component/bluetooth/spp/a;

.field private e:Lcom/papa/controller/core/PadInfo;

.field private f:Lcom/papa/controller/core/c;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa/controller/core/e;->h:Z

    .line 3
    iput-boolean v0, p0, Lcom/papa/controller/core/e;->i:Z

    .line 4
    iput-object p1, p0, Lcom/papa/controller/core/e;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/papa/controller/core/e;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-direct {v0, p1}, Lcom/papa/controller/component/bluetooth/spp/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 8
    new-instance p1, Lcom/papa/controller/core/PadInfo;

    invoke-direct {p1}, Lcom/papa/controller/core/PadInfo;-><init>()V

    iput-object p1, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 9
    invoke-virtual {p1, p3}, Lcom/papa/controller/core/PadInfo;->R(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {p1, p2}, Lcom/papa/controller/core/PadInfo;->O(Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/papa/controller/core/e;->D()V

    return-void
.end method

.method private A(Ljava/lang/String;Lcom/papa/controller/core/hardware/b;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/b;->k()[B

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-static {p1}, Lb2/a;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/papa/controller/core/PadInfo;->J(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private B(Ljava/lang/String;Lcom/papa/controller/core/hardware/c;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/a;->f()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit16 v0, v0, 0xff

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->n()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->o()[B

    move-result-object v2

    .line 7
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->m()[B

    move-result-object v3

    .line 8
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->k()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 9
    :goto_0
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->l()I

    move-result p2

    if-ne p2, v6, :cond_1

    const/4 v5, 0x1

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {p2, v1}, Lcom/papa/controller/core/PadInfo;->R(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {p2, v1}, Lcom/papa/controller/core/PadInfo;->V(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-static {v2}, Lb2/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/papa/controller/core/PadInfo;->b0(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-static {v3}, Lb2/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/papa/controller/core/PadInfo;->T(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {p2, v0}, Lcom/papa/controller/core/PadInfo;->d0(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {p2, p1}, Lcom/papa/controller/core/PadInfo;->O(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {p1, v4}, Lcom/papa/controller/core/PadInfo;->K(Z)V

    .line 17
    iget-object p1, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {p1, v5}, Lcom/papa/controller/core/PadInfo;->L(Z)V

    .line 18
    iput-boolean v6, p0, Lcom/papa/controller/core/e;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private C(Ljava/lang/String;Lcom/papa/controller/core/hardware/f;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/f;->k()I

    move-result p1

    .line 2
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/f;->l()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/f;->m()I

    move-result p2

    if-ne p2, v2, :cond_1

    const/4 v1, 0x1

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {p2, p1}, Lcom/papa/controller/core/PadInfo;->E(I)V

    .line 5
    iget-object p1, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {p1, v0}, Lcom/papa/controller/core/PadInfo;->W(Z)V

    .line 6
    iget-object p1, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {p1, v1}, Lcom/papa/controller/core/PadInfo;->f0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/papa/controller/core/e$a;

    invoke-direct {v1, p0}, Lcom/papa/controller/core/e$a;-><init>(Lcom/papa/controller/core/e;)V

    invoke-virtual {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->V(Lcom/papa/controller/component/bluetooth/spp/a$g;)V

    .line 3
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    new-instance v1, Lcom/papa/controller/core/e$b;

    invoke-direct {v1, p0}, Lcom/papa/controller/core/e$b;-><init>(Lcom/papa/controller/core/e;)V

    invoke-virtual {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->T(Lcom/papa/controller/component/bluetooth/spp/a$f;)V

    .line 4
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    new-instance v1, Lcom/papa/controller/core/e$c;

    invoke-direct {v1, p0}, Lcom/papa/controller/core/e$c;-><init>(Lcom/papa/controller/core/e;)V

    invoke-virtual {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->S(Lcom/papa/controller/component/bluetooth/spp/a$e;)V

    return-void
.end method

.method private J()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/papa/controller/core/e$d;

    invoke-direct {v3, p0, v0, v1}, Lcom/papa/controller/core/e$d;-><init>(Lcom/papa/controller/core/e;J)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/papa/controller/core/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/papa/controller/core/e;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/controller/core/e;->w(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic c(Lcom/papa/controller/core/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/core/e;->g:Z

    return p0
.end method

.method static synthetic d(Lcom/papa/controller/core/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/papa/controller/core/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/e;->t()V

    return-void
.end method

.method static synthetic f(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/e;->f:Lcom/papa/controller/core/c;

    return-object p0
.end method

.method static synthetic g(Lcom/papa/controller/core/e;)Lcom/papa/controller/component/bluetooth/spp/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    return-object p0
.end method

.method static synthetic h(Lcom/papa/controller/core/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/core/e;->h:Z

    return p0
.end method

.method static synthetic i(Lcom/papa/controller/core/e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/core/e;->i:Z

    return p1
.end method

.method static synthetic j(Lcom/papa/controller/core/e;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/e;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic k(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/e;->r()Lcom/papa/controller/core/b;

    move-result-object p0

    return-object p0
.end method

.method private m(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->L()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 6
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/controller/core/e;->I()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-virtual {v0, p1}, Lcom/papa/controller/component/bluetooth/spp/a;->B(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/papa/controller/core/e;->J()V

    :cond_4
    :goto_1
    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 3
    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->C()V

    :cond_2
    :goto_0
    return-void
.end method

.method private p(Ljava/lang/String;Lcom/papa/controller/core/hardware/d;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/papa/controller/core/e;->f:Lcom/papa/controller/core/c;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {v0, p1, p2}, Lcom/papa/controller/core/PadInfo;->a(Lcom/papa/controller/core/c;Lcom/papa/controller/core/hardware/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private r()Lcom/papa/controller/core/b;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->c:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/papa/controller/core/PadInfo;->h()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v0, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {v0}, Lcom/papa/controller/core/PadInfo;->q()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {v1}, Lcom/papa/controller/core/PadInfo;->y()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {v2}, Lcom/papa/controller/core/PadInfo;->k()Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v4, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {v4}, Lcom/papa/controller/core/PadInfo;->v()Ljava/lang/String;

    move-result-object v4

    .line 9
    iget-object v5, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {v5}, Lcom/papa/controller/core/PadInfo;->s()Ljava/lang/String;

    move-result-object v5

    .line 10
    iget-object v6, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    invoke-virtual {v6}, Lcom/papa/controller/core/PadInfo;->d()Ljava/lang/String;

    move-result-object v6

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v8, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    goto :goto_0

    :cond_0
    move-object v9, v0

    move-object v11, v1

    move-object v8, v3

    move-object v10, v8

    move-object v12, v10

    move-object v13, v12

    move-object v14, v13

    .line 11
    :goto_0
    new-instance v0, Lcom/papa/controller/core/b;

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lcom/papa/controller/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/papa/controller/core/hardware/c;

    invoke-direct {v1}, Lcom/papa/controller/core/hardware/c;-><init>()V

    invoke-virtual {v1}, Lcom/papa/controller/core/hardware/c;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    .line 3
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    new-instance v1, Lcom/papa/controller/core/hardware/f;

    invoke-direct {v1}, Lcom/papa/controller/core/hardware/f;-><init>()V

    invoke-virtual {v1}, Lcom/papa/controller/core/hardware/f;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    .line 4
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    new-instance v1, Lcom/papa/controller/core/hardware/b;

    invoke-direct {v1}, Lcom/papa/controller/core/hardware/b;-><init>()V

    invoke-virtual {v1}, Lcom/papa/controller/core/hardware/b;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    return-void
.end method

.method private w(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/controller/core/hardware/a;

    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/a;-><init>([B)V

    .line 2
    invoke-virtual {v0}, Lcom/papa/controller/core/hardware/a;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/papa/controller/core/hardware/c;

    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/c;-><init>([B)V

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/e;->B(Ljava/lang/String;Lcom/papa/controller/core/hardware/c;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/papa/controller/core/hardware/b;

    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/b;-><init>([B)V

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/e;->A(Ljava/lang/String;Lcom/papa/controller/core/hardware/b;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Lcom/papa/controller/core/hardware/f;

    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/f;-><init>([B)V

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/e;->C(Ljava/lang/String;Lcom/papa/controller/core/hardware/f;)V

    goto :goto_0

    .line 9
    :cond_3
    new-instance v0, Lcom/papa/controller/core/hardware/d;

    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/d;-><init>([B)V

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/e;->p(Ljava/lang/String;Lcom/papa/controller/core/hardware/d;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public E(Lcom/papa/controller/core/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/e;->f:Lcom/papa/controller/core/c;

    return-void
.end method

.method public F(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/e;->j:Landroid/os/Handler;

    return-void
.end method

.method public G(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/core/e;->g:Z

    return-void
.end method

.method public H(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->O()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    new-instance v1, Lcom/papa/controller/core/hardware/g;

    invoke-direct {v1}, Lcom/papa/controller/core/hardware/g;-><init>()V

    invoke-virtual {v1, p1, p2}, Lcom/papa/controller/core/hardware/g;->k(II)[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public I()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->M()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->O()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->W()V

    .line 5
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->startService(Z)V

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bluetooth is not enable!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->stopService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/papa/controller/core/e;->m(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/papa/controller/core/e;->o(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public s()Lcom/papa/controller/core/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->f:Lcom/papa/controller/core/c;

    return-object v0
.end method

.method public u()Lcom/papa/controller/component/bluetooth/spp/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    return-object v0
.end method

.method public v()Lcom/papa/controller/core/PadInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/core/e;->h:Z

    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/core/e;->i:Z

    return v0
.end method

.method public z(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/papa/controller/core/hardware/e;

    invoke-direct {v1}, Lcom/papa/controller/core/hardware/e;-><init>()V

    invoke-virtual {v1, p1}, Lcom/papa/controller/core/hardware/e;->k(I)[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    :cond_0
    return-void
.end method
