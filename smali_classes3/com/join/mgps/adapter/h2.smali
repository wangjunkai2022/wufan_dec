.class public final Lcom/join/mgps/adapter/h2;
.super Lcom/join/mgps/adapter/g2;
.source "GameTransferHistoryAdapter_.java"


# instance fields
.field private f:Landroid/content/Context;

.field private g:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/adapter/g2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/h2;->f:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/adapter/h2;->y()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/adapter/g2;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/join/mgps/adapter/h2;->f:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/h2;->g:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/adapter/h2;->y()V

    return-void
.end method

.method static synthetic l(Lcom/join/mgps/adapter/h2;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/adapter/a5;->b(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic m(Lcom/join/mgps/adapter/h2;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/adapter/a5;->b(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic n(Lcom/join/mgps/adapter/h2;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/a5;->g(I)V

    return-void
.end method

.method static synthetic o(Lcom/join/mgps/adapter/h2;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/a5;->g(I)V

    return-void
.end method

.method static synthetic p(Lcom/join/mgps/adapter/h2;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/a5;->f(I)V

    return-void
.end method

.method static synthetic q(Lcom/join/mgps/adapter/h2;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/a5;->f(I)V

    return-void
.end method

.method static synthetic r(Lcom/join/mgps/adapter/h2;Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/a5;->a(Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic s(Lcom/join/mgps/adapter/h2;Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/a5;->a(Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic t(Lcom/join/mgps/adapter/h2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/adapter/a5;->clear()V

    return-void
.end method

.method static synthetic u(Lcom/join/mgps/adapter/h2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/adapter/a5;->clear()V

    return-void
.end method

.method public static w(Landroid/content/Context;)Lcom/join/mgps/adapter/h2;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/h2;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/h2;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static x(Landroid/content/Context;Ljava/lang/Object;)Lcom/join/mgps/adapter/h2;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/h2;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/h2;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-object v0
.end method

.method private y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h2;->f:Landroid/content/Context;

    iput-object v0, p0, Lcom/join/mgps/adapter/g2;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/join/mgps/dto/GameTransferBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/join/mgps/adapter/h2;->r(Lcom/join/mgps/adapter/h2;Landroid/util/SparseArray;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/h2$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/h2$d;-><init>(Lcom/join/mgps/adapter/h2;Landroid/util/SparseArray;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/GameTransferBean;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/h2;->v(ILcom/join/mgps/dto/GameTransferBean;)V

    return-void
.end method

.method public clear()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/adapter/h2;->t(Lcom/join/mgps/adapter/h2;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/h2$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/h2$e;-><init>(Lcom/join/mgps/adapter/h2;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public f(I)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/join/mgps/adapter/h2;->p(Lcom/join/mgps/adapter/h2;I)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/h2$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/h2$c;-><init>(Lcom/join/mgps/adapter/h2;I)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public g(I)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/join/mgps/adapter/h2;->n(Lcom/join/mgps/adapter/h2;I)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/h2$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/h2$b;-><init>(Lcom/join/mgps/adapter/h2;I)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public v(ILcom/join/mgps/dto/GameTransferBean;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/join/mgps/adapter/h2;->l(Lcom/join/mgps/adapter/h2;ILjava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/h2$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/adapter/h2$a;-><init>(Lcom/join/mgps/adapter/h2;ILcom/join/mgps/dto/GameTransferBean;)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public z(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h2;->f:Landroid/content/Context;

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/adapter/h2;->y()V

    return-void
.end method
