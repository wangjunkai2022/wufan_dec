.class public Lcom/papa/controller/core/d;
.super Ljava/lang/Object;
.source "ControllerMonitor.java"


# static fields
.field private static q:Lcom/papa/controller/core/d;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/papa/controller/core/c;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Lcom/papa/controller/core/ControllerManager;

.field private j:Lcom/papa/controller/core/ControllerManager$d;

.field private k:Landroid/os/Handler;

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/papa/controller/core/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/papa/controller/core/d;->e:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/papa/controller/core/d;->f:Z

    .line 5
    iput-boolean v0, p0, Lcom/papa/controller/core/d;->g:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/papa/controller/core/d;->h:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/papa/controller/core/d;->i:Lcom/papa/controller/core/ControllerManager;

    .line 8
    iput-object v0, p0, Lcom/papa/controller/core/d;->j:Lcom/papa/controller/core/ControllerManager$d;

    .line 9
    iput-object v0, p0, Lcom/papa/controller/core/d;->k:Landroid/os/Handler;

    .line 10
    iput v1, p0, Lcom/papa/controller/core/d;->l:I

    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lcom/papa/controller/core/d;->m:I

    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lcom/papa/controller/core/d;->n:I

    const/4 v0, 0x4

    .line 13
    iput v0, p0, Lcom/papa/controller/core/d;->o:I

    .line 14
    iput-object p1, p0, Lcom/papa/controller/core/d;->b:Landroid/content/Context;

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d;->p:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/papa/controller/core/d;->p:Ljava/util/Map;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/d;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/papa/controller/core/d;->i:Lcom/papa/controller/core/ControllerManager;

    if-nez v1, :cond_2

    .line 4
    new-instance v1, Lcom/papa/controller/core/ControllerManager;

    invoke-direct {v1, v0}, Lcom/papa/controller/core/ControllerManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/papa/controller/core/d;->i:Lcom/papa/controller/core/ControllerManager;

    .line 5
    new-instance v0, Lcom/papa/controller/core/d$a;

    invoke-direct {v0, p0}, Lcom/papa/controller/core/d$a;-><init>(Lcom/papa/controller/core/d;)V

    iput-object v0, p0, Lcom/papa/controller/core/d;->k:Landroid/os/Handler;

    .line 6
    new-instance v0, Lcom/papa/controller/core/d$b;

    invoke-direct {v0, p0}, Lcom/papa/controller/core/d$b;-><init>(Lcom/papa/controller/core/d;)V

    .line 7
    iget-object v1, p0, Lcom/papa/controller/core/d;->i:Lcom/papa/controller/core/ControllerManager;

    invoke-virtual {v1, v0}, Lcom/papa/controller/core/ControllerManager;->c(Lcom/papa/controller/core/ControllerManager$d;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/papa/controller/core/d;->i:Lcom/papa/controller/core/ControllerManager;

    invoke-virtual {v0}, Lcom/papa/controller/core/ControllerManager;->u()V

    return-void
.end method

.method private C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d;->p:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
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

    check-cast v1, Lcom/papa/controller/core/e;

    .line 3
    invoke-virtual {v1}, Lcom/papa/controller/core/e;->y()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-direct {p0, v1}, Lcom/papa/controller/core/d;->D(Lcom/papa/controller/core/e;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v1}, Lcom/papa/controller/core/e;->x()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lcom/papa/controller/core/d;->D(Lcom/papa/controller/core/e;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private D(Lcom/papa/controller/core/e;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/papa/controller/core/d;->m(Lcom/papa/controller/core/e;)Z
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

.method private E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d;->i:Lcom/papa/controller/core/ControllerManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/controller/core/ControllerManager;->x()V

    :cond_0
    return-void
.end method

.method private G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d;->p:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
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

    check-cast v1, Lcom/papa/controller/core/e;

    .line 3
    invoke-direct {p0, v1}, Lcom/papa/controller/core/d;->H(Lcom/papa/controller/core/e;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private H(Lcom/papa/controller/core/e;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/papa/controller/core/e;->n()V

    .line 2
    invoke-virtual {p1}, Lcom/papa/controller/core/e;->K()V
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

.method static synthetic a(Lcom/papa/controller/core/d;)Lcom/papa/controller/core/ControllerManager$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/d;->j:Lcom/papa/controller/core/ControllerManager$d;

    return-object p0
.end method

.method static synthetic b(Lcom/papa/controller/core/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/core/d;->f:Z

    return p0
.end method

.method static synthetic c(Lcom/papa/controller/core/d;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/d;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/papa/controller/core/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/core/d;->g:Z

    return p0
.end method

.method static synthetic e(Lcom/papa/controller/core/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/core/d;->e:Z

    return p0
.end method

.method static synthetic f(Lcom/papa/controller/core/d;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/d;->p:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Lcom/papa/controller/core/d;Lcom/papa/controller/core/e;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/controller/core/d;->m(Lcom/papa/controller/core/e;)Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/papa/controller/core/d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/d;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/papa/controller/core/d;)Lcom/papa/controller/core/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/d;->c:Lcom/papa/controller/core/c;

    return-object p0
.end method

.method static synthetic j(Lcom/papa/controller/core/d;Lcom/papa/controller/core/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/controller/core/d;->D(Lcom/papa/controller/core/e;)V

    return-void
.end method

.method static synthetic k(Lcom/papa/controller/core/d;Lcom/papa/controller/core/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/controller/core/d;->H(Lcom/papa/controller/core/e;)V

    return-void
.end method

.method static synthetic l(Lcom/papa/controller/core/d;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/d;->k:Landroid/os/Handler;

    return-object p0
.end method

.method private m(Lcom/papa/controller/core/e;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/papa/controller/core/e;->u()Lcom/papa/controller/component/bluetooth/spp/a;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "mocute"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/papa/controller/core/e;->u()Lcom/papa/controller/component/bluetooth/spp/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->G()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 6
    aget-object v1, v1, v0

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    :cond_1
    :goto_0
    return v0
.end method

.method public static r(Landroid/content/Context;)Lcom/papa/controller/core/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/controller/core/d;->q:Lcom/papa/controller/core/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa/controller/core/d;

    invoke-direct {v0, p0}, Lcom/papa/controller/core/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/papa/controller/core/d;->q:Lcom/papa/controller/core/d;

    .line 3
    :cond_0
    sget-object p0, Lcom/papa/controller/core/d;->q:Lcom/papa/controller/core/d;

    return-object p0
.end method

.method private t(ILjava/lang/String;IFF)Lcom/papa/controller/core/PadMotionEvent;
    .locals 9

    .line 1
    :try_start_0
    new-instance v8, Lcom/papa/controller/core/PadMotionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object v0, v8

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/papa/controller/core/PadMotionEvent;-><init>(JILjava/lang/String;IFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v8, 0x0

    :goto_0
    return-object v8
.end method

.method private z(Ljava/lang/String;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/controller/core/d;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa/controller/core/e;

    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/papa/controller/core/e;->H(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public B()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/papa/controller/core/d;->e:Z

    .line 2
    invoke-direct {p0}, Lcom/papa/controller/core/d;->A()V

    .line 3
    invoke-direct {p0}, Lcom/papa/controller/core/d;->C()V

    return-void
.end method

.method public F()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa/controller/core/d;->e:Z

    .line 2
    invoke-direct {p0}, Lcom/papa/controller/core/d;->E()V

    .line 3
    invoke-direct {p0}, Lcom/papa/controller/core/d;->G()V

    return-void
.end method

.method public n(Landroid/view/MotionEvent;)Z
    .locals 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v8

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    .line 4
    invoke-virtual {v7, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v11

    const/4 v12, 0x1

    .line 5
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v13

    const/16 v0, 0xb

    .line 6
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v14

    const/16 v0, 0xe

    .line 7
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v15

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9
    iget-object v5, v6, Lcom/papa/controller/core/d;->c:Lcom/papa/controller/core/c;

    if-eqz v5, :cond_0

    const/16 v3, 0xc8

    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v10

    move v4, v11

    move-object v12, v5

    move v5, v13

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/papa/controller/core/d;->t(ILjava/lang/String;IFF)Lcom/papa/controller/core/PadMotionEvent;

    move-result-object v0

    invoke-interface {v12, v11, v13, v0}, Lcom/papa/controller/core/c;->F(FFLcom/papa/controller/core/PadMotionEvent;)V

    .line 11
    iget-object v11, v6, Lcom/papa/controller/core/d;->c:Lcom/papa/controller/core/c;

    const/16 v3, 0xc9

    move-object/from16 v0, p0

    move v4, v14

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/papa/controller/core/d;->t(ILjava/lang/String;IFF)Lcom/papa/controller/core/PadMotionEvent;

    move-result-object v0

    invoke-interface {v11, v14, v15, v0}, Lcom/papa/controller/core/c;->G(FFLcom/papa/controller/core/PadMotionEvent;)V

    :cond_0
    const/16 v0, 0x11

    .line 12
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    const/16 v0, 0x12

    .line 13
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 14
    invoke-virtual/range {p0 .. p1}, Lcom/papa/controller/core/d;->s(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v9, 0x1

    :cond_1
    return v9
.end method

.method public o(Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3
    iget v5, p0, Lcom/papa/controller/core/d;->h:I

    .line 4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    xor-int/lit8 v8, v0, 0x1

    if-eqz v0, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 6
    :goto_1
    new-instance v10, Lcom/papa/controller/core/PadKeyEvent;

    move-object v2, v10

    move v7, p1

    invoke-direct/range {v2 .. v9}, Lcom/papa/controller/core/PadKeyEvent;-><init>(JILjava/lang/String;IIF)V

    .line 7
    iget-object v2, p0, Lcom/papa/controller/core/d;->c:Lcom/papa/controller/core/c;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v2, p1, v10}, Lcom/papa/controller/core/c;->h(ILcom/papa/controller/core/PadKeyEvent;)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-interface {v2, p1, v10}, Lcom/papa/controller/core/c;->R(ILcom/papa/controller/core/PadKeyEvent;)V

    :cond_3
    :goto_2
    return v1
.end method

.method public p()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d;->i:Lcom/papa/controller/core/ControllerManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/controller/core/ControllerManager;->e()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d;->i:Lcom/papa/controller/core/ControllerManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/controller/core/ControllerManager;->f()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method s(Landroid/view/MotionEvent;)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    const/16 v0, 0xf

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0x10

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    const/16 v0, 0x15

    goto :goto_0

    :cond_0
    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/16 v0, 0x16

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    or-int/lit8 v0, v0, 0x13

    goto :goto_1

    :cond_2
    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    or-int/lit8 v0, v0, 0x14

    :cond_3
    :goto_1
    return v0
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa/controller/core/d;->c:Lcom/papa/controller/core/c;

    .line 2
    iput-object v0, p0, Lcom/papa/controller/core/d;->d:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/papa/controller/core/d;->h:I

    return-void
.end method

.method public v(Lcom/papa/controller/core/ControllerManager$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/d;->j:Lcom/papa/controller/core/ControllerManager$d;

    return-void
.end method

.method public w(Lcom/papa/controller/core/c;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/d;->c:Lcom/papa/controller/core/c;

    .line 2
    iput-object p2, p0, Lcom/papa/controller/core/d;->d:Landroid/os/Handler;

    return-void
.end method

.method public x(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/core/d;->g:Z

    return-void
.end method

.method public y(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d;->p:Ljava/util/Map;

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

    check-cast v1, Lcom/papa/controller/core/e;

    .line 2
    invoke-virtual {v1}, Lcom/papa/controller/core/e;->q()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/papa/controller/core/d;->z(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    return-void
.end method
