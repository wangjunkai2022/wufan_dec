.class public Lcom/papa/controller/core/f;
.super Ljava/lang/Object;
.source "PaBluetoothSppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/controller/core/f$e;
    }
.end annotation


# static fields
.field private static j:Lcom/papa/controller/core/f;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/papa/controller/core/c;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:I

.field g:Lcom/papa/controller/component/bluetooth/a;

.field h:Lcom/papa/controller/component/bluetooth/a$d;

.field i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/papa/controller/core/f$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/f;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/papa/controller/core/f;->e:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/papa/controller/core/f;->f:I

    .line 5
    iput-object p1, p0, Lcom/papa/controller/core/f;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/papa/controller/core/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/core/f;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/papa/controller/core/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/controller/core/f;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/papa/controller/core/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/controller/core/f;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/papa/controller/core/f;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/controller/core/f;->m(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic e(Lcom/papa/controller/core/f;Lcom/papa/controller/component/bluetooth/spp/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/controller/core/f;->z(Lcom/papa/controller/component/bluetooth/spp/a;)V

    return-void
.end method

.method static synthetic f(Lcom/papa/controller/core/f;)Lcom/papa/controller/core/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/f;->c:Lcom/papa/controller/core/c;

    return-object p0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    .line 3
    :cond_1
    new-instance v0, Lcom/papa/controller/core/f$e;

    invoke-direct {v0, p0}, Lcom/papa/controller/core/f$e;-><init>(Lcom/papa/controller/core/f;)V

    .line 4
    new-instance v1, Lcom/papa/controller/component/bluetooth/spp/a;

    iget-object v2, p0, Lcom/papa/controller/core/f;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/papa/controller/component/bluetooth/spp/a;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->W()V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/papa/controller/component/bluetooth/spp/a;->startService(Z)V

    .line 7
    iput-object v1, v0, Lcom/papa/controller/core/f$e;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 8
    new-instance v2, Lcom/papa/controller/core/PadInfo;

    invoke-direct {v2}, Lcom/papa/controller/core/PadInfo;-><init>()V

    iput-object v2, v0, Lcom/papa/controller/core/f$e;->b:Lcom/papa/controller/core/PadInfo;

    .line 9
    iget v3, p0, Lcom/papa/controller/core/f;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/papa/controller/core/f;->f:I

    .line 10
    invoke-virtual {v2, v3}, Lcom/papa/controller/core/PadInfo;->F(I)V

    .line 11
    iget-object v2, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->L()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 13
    :cond_2
    new-instance v0, Lcom/papa/controller/core/f$b;

    invoke-direct {v0, p0, p1}, Lcom/papa/controller/core/f$b;-><init>(Lcom/papa/controller/core/f;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/papa/controller/component/bluetooth/spp/a;->V(Lcom/papa/controller/component/bluetooth/spp/a$g;)V

    .line 14
    new-instance v0, Lcom/papa/controller/core/f$c;

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/papa/controller/core/f$c;-><init>(Lcom/papa/controller/core/f;Ljava/lang/String;Ljava/lang/String;Lcom/papa/controller/component/bluetooth/spp/a;)V

    invoke-virtual {v1, v0}, Lcom/papa/controller/component/bluetooth/spp/a;->T(Lcom/papa/controller/component/bluetooth/spp/a$f;)V

    .line 15
    new-instance v0, Lcom/papa/controller/core/f$d;

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/papa/controller/core/f$d;-><init>(Lcom/papa/controller/core/f;Ljava/lang/String;Ljava/lang/String;Lcom/papa/controller/component/bluetooth/spp/a;)V

    invoke-virtual {v1, v0}, Lcom/papa/controller/component/bluetooth/spp/a;->S(Lcom/papa/controller/component/bluetooth/spp/a$e;)V

    .line 16
    invoke-virtual {v1, p1}, Lcom/papa/controller/component/bluetooth/spp/a;->B(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa/controller/core/f$e;

    iget-object p1, p1, Lcom/papa/controller/core/f$e;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 5
    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->C()V

    :cond_2
    :goto_0
    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/controller/core/f$e;

    .line 3
    iget-object v1, v1, Lcom/papa/controller/core/f$e;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 4
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->C()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private j(Ljava/lang/String;Lcom/papa/controller/core/hardware/d;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->c:Lcom/papa/controller/core/c;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa/controller/core/f$e;

    .line 3
    iget-object p1, p1, Lcom/papa/controller/core/f$e;->b:Lcom/papa/controller/core/PadInfo;

    .line 4
    iget-object v0, p0, Lcom/papa/controller/core/f;->c:Lcom/papa/controller/core/c;

    invoke-virtual {p1, v0, p2}, Lcom/papa/controller/core/PadInfo;->a(Lcom/papa/controller/core/c;Lcom/papa/controller/core/hardware/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static l(Landroid/content/Context;)Lcom/papa/controller/core/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/controller/core/f;->j:Lcom/papa/controller/core/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa/controller/core/f;

    invoke-direct {v0, p0}, Lcom/papa/controller/core/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/papa/controller/core/f;->j:Lcom/papa/controller/core/f;

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private m(Ljava/lang/String;[B)V
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
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/f;->q(Ljava/lang/String;Lcom/papa/controller/core/hardware/c;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/papa/controller/core/hardware/b;

    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/b;-><init>([B)V

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/f;->p(Ljava/lang/String;Lcom/papa/controller/core/hardware/b;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Lcom/papa/controller/core/hardware/f;

    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/f;-><init>([B)V

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/f;->r(Ljava/lang/String;Lcom/papa/controller/core/hardware/f;)V

    goto :goto_0

    .line 9
    :cond_3
    new-instance v0, Lcom/papa/controller/core/hardware/d;

    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/d;-><init>([B)V

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/f;->j(Ljava/lang/String;Lcom/papa/controller/core/hardware/d;)V

    :goto_0
    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/f;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/papa/controller/component/bluetooth/a;

    invoke-direct {v1, v0}, Lcom/papa/controller/component/bluetooth/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/papa/controller/core/f;->g:Lcom/papa/controller/component/bluetooth/a;

    .line 3
    :try_start_0
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/a;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/papa/controller/core/f$a;

    invoke-direct {v0, p0}, Lcom/papa/controller/core/f$a;-><init>(Lcom/papa/controller/core/f;)V

    iput-object v0, p0, Lcom/papa/controller/core/f;->h:Lcom/papa/controller/component/bluetooth/a$d;

    .line 5
    iget-object v1, p0, Lcom/papa/controller/core/f;->g:Lcom/papa/controller/component/bluetooth/a;

    invoke-virtual {v1, v0}, Lcom/papa/controller/component/bluetooth/a;->u(Lcom/papa/controller/component/bluetooth/a$d;)V

    .line 6
    iget-object v0, p0, Lcom/papa/controller/core/f;->g:Lcom/papa/controller/component/bluetooth/a;

    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/a;->x()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private o()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    return-void
.end method

.method private p(Ljava/lang/String;Lcom/papa/controller/core/hardware/b;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa/controller/core/f$e;

    .line 2
    iget-object p1, p1, Lcom/papa/controller/core/f$e;->b:Lcom/papa/controller/core/PadInfo;

    .line 3
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/b;->k()[B

    move-result-object p2

    .line 4
    invoke-static {p2}, Lb2/a;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/controller/core/PadInfo;->J(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private q(Ljava/lang/String;Lcom/papa/controller/core/hardware/c;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa/controller/core/f$e;

    .line 2
    iget-object v0, v0, Lcom/papa/controller/core/f$e;->b:Lcom/papa/controller/core/PadInfo;

    .line 3
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/a;->f()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit16 v1, v1, 0xff

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->n()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->o()[B

    move-result-object v3

    .line 9
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->m()[B

    move-result-object v4

    .line 10
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->k()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 11
    :goto_0
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->l()I

    move-result p2

    if-ne p2, v7, :cond_1

    const/4 v6, 0x1

    .line 12
    :cond_1
    invoke-virtual {v0, v2}, Lcom/papa/controller/core/PadInfo;->R(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v2}, Lcom/papa/controller/core/PadInfo;->V(Ljava/lang/String;)V

    .line 14
    invoke-static {v3}, Lb2/a;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/papa/controller/core/PadInfo;->b0(Ljava/lang/String;)V

    .line 15
    invoke-static {v4}, Lb2/a;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/papa/controller/core/PadInfo;->T(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/papa/controller/core/PadInfo;->d0(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Lcom/papa/controller/core/PadInfo;->O(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v5}, Lcom/papa/controller/core/PadInfo;->K(Z)V

    .line 19
    invoke-virtual {v0, v6}, Lcom/papa/controller/core/PadInfo;->L(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private r(Ljava/lang/String;Lcom/papa/controller/core/hardware/f;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa/controller/core/f$e;

    .line 2
    iget-object p1, p1, Lcom/papa/controller/core/f$e;->b:Lcom/papa/controller/core/PadInfo;

    .line 3
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/f;->k()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/f;->l()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/f;->m()I

    move-result p2

    if-ne p2, v3, :cond_1

    const/4 v2, 0x1

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Lcom/papa/controller/core/PadInfo;->E(I)V

    .line 7
    invoke-virtual {p1, v1}, Lcom/papa/controller/core/PadInfo;->W(Z)V

    .line 8
    invoke-virtual {p1, v2}, Lcom/papa/controller/core/PadInfo;->f0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private w()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/controller/core/f$e;

    .line 3
    iget-object v1, v1, Lcom/papa/controller/core/f$e;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 4
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->M()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->O()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->W()V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Lcom/papa/controller/component/bluetooth/spp/a;->startService(Z)V

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bluetooth is not enable!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method private y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/controller/core/f$e;

    .line 3
    iget-object v1, v1, Lcom/papa/controller/core/f$e;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 4
    invoke-virtual {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->stopService()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private z(Lcom/papa/controller/component/bluetooth/spp/a;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/controller/core/hardware/e;

    invoke-direct {v0}, Lcom/papa/controller/core/hardware/e;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/papa/controller/core/hardware/e;->k(I)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    .line 2
    new-instance v0, Lcom/papa/controller/core/hardware/c;

    invoke-direct {v0}, Lcom/papa/controller/core/hardware/c;-><init>()V

    invoke-virtual {v0}, Lcom/papa/controller/core/hardware/c;->a()[B

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    .line 3
    new-instance v0, Lcom/papa/controller/core/hardware/f;

    invoke-direct {v0}, Lcom/papa/controller/core/hardware/f;-><init>()V

    invoke-virtual {v0}, Lcom/papa/controller/core/hardware/f;->a()[B

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    .line 4
    new-instance v0, Lcom/papa/controller/core/hardware/b;

    invoke-direct {v0}, Lcom/papa/controller/core/hardware/b;-><init>()V

    invoke-virtual {v0}, Lcom/papa/controller/core/hardware/b;->a()[B

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    return-void
.end method


# virtual methods
.method public k()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/controller/core/f$e;

    .line 4
    iget-object v2, v2, Lcom/papa/controller/core/f$e;->b:Lcom/papa/controller/core/PadInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2}, Lcom/papa/controller/core/PadInfo;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v2}, Lcom/papa/controller/core/PadInfo;->q()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v2}, Lcom/papa/controller/core/PadInfo;->y()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v2}, Lcom/papa/controller/core/PadInfo;->k()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {v2}, Lcom/papa/controller/core/PadInfo;->b()I

    .line 10
    invoke-virtual {v2}, Lcom/papa/controller/core/PadInfo;->d()Ljava/lang/String;

    move-result-object v11

    .line 11
    new-instance v2, Lcom/papa/controller/core/b;

    const-string v9, ""

    const-string v10, ""

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/papa/controller/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa/controller/core/f;->c:Lcom/papa/controller/core/c;

    .line 2
    iput-object v0, p0, Lcom/papa/controller/core/f;->d:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/papa/controller/core/f;->f:I

    .line 4
    invoke-virtual {p0}, Lcom/papa/controller/core/f;->x()V

    return-void
.end method

.method public t(Lcom/papa/controller/core/c;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/f;->c:Lcom/papa/controller/core/c;

    .line 2
    iput-object p2, p0, Lcom/papa/controller/core/f;->d:Landroid/os/Handler;

    .line 3
    invoke-virtual {p0}, Lcom/papa/controller/core/f;->v()V

    return-void
.end method

.method public u(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/f;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/controller/core/f$e;

    .line 2
    iget-object v1, v1, Lcom/papa/controller/core/f$e;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 3
    new-instance v2, Lcom/papa/controller/core/hardware/g;

    invoke-direct {v2}, Lcom/papa/controller/core/hardware/g;-><init>()V

    invoke-virtual {v2, p1, p2}, Lcom/papa/controller/core/hardware/g;->k(II)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/papa/controller/core/f;->o()V

    .line 2
    invoke-direct {p0}, Lcom/papa/controller/core/f;->n()V

    .line 3
    iget-boolean v0, p0, Lcom/papa/controller/core/f;->e:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/papa/controller/core/f;->w()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/f;->y()V

    .line 2
    iget-object v0, p0, Lcom/papa/controller/core/f;->g:Lcom/papa/controller/component/bluetooth/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/a;->y()V

    :cond_0
    return-void
.end method
