.class public Lcom/tbruyelle/rxpermissions2/c;
.super Ljava/lang/Object;
.source "RxPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tbruyelle/rxpermissions2/c$f;
    }
.end annotation


# static fields
.field static final b:Ljava/lang/String; = "c"

.field static final c:Ljava/lang/Object;


# instance fields
.field a:Lcom/tbruyelle/rxpermissions2/c$f;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tbruyelle/rxpermissions2/c$f<",
            "Lcom/tbruyelle/rxpermissions2/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tbruyelle/rxpermissions2/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions2/c;->h(Landroidx/fragment/app/FragmentManager;)Lcom/tbruyelle/rxpermissions2/c$f;

    move-result-object p1

    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/c;->a:Lcom/tbruyelle/rxpermissions2/c$f;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions2/c;->h(Landroidx/fragment/app/FragmentManager;)Lcom/tbruyelle/rxpermissions2/c$f;

    move-result-object p1

    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/c;->a:Lcom/tbruyelle/rxpermissions2/c$f;

    return-void
.end method

.method static synthetic a(Lcom/tbruyelle/rxpermissions2/c;Landroidx/fragment/app/FragmentManager;)Lcom/tbruyelle/rxpermissions2/d;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions2/c;->i(Landroidx/fragment/app/FragmentManager;)Lcom/tbruyelle/rxpermissions2/d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/tbruyelle/rxpermissions2/c;Lio/reactivex/z;[Ljava/lang/String;)Lio/reactivex/z;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tbruyelle/rxpermissions2/c;->p(Lio/reactivex/z;[Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/tbruyelle/rxpermissions2/c;[Ljava/lang/String;)Lio/reactivex/z;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions2/c;->t([Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method private g(Landroidx/fragment/app/FragmentManager;)Lcom/tbruyelle/rxpermissions2/d;
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/tbruyelle/rxpermissions2/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/tbruyelle/rxpermissions2/d;

    return-object p1
.end method

.method private h(Landroidx/fragment/app/FragmentManager;)Lcom/tbruyelle/rxpermissions2/c$f;
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            ")",
            "Lcom/tbruyelle/rxpermissions2/c$f<",
            "Lcom/tbruyelle/rxpermissions2/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tbruyelle/rxpermissions2/c$a;

    invoke-direct {v0, p0, p1}, Lcom/tbruyelle/rxpermissions2/c$a;-><init>(Lcom/tbruyelle/rxpermissions2/c;Landroidx/fragment/app/FragmentManager;)V

    return-object v0
.end method

.method private i(Landroidx/fragment/app/FragmentManager;)Lcom/tbruyelle/rxpermissions2/d;
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions2/c;->g(Landroidx/fragment/app/FragmentManager;)Lcom/tbruyelle/rxpermissions2/d;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    new-instance v0, Lcom/tbruyelle/rxpermissions2/d;

    invoke-direct {v0}, Lcom/tbruyelle/rxpermissions2/d;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget-object v1, Lcom/tbruyelle/rxpermissions2/c;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    :cond_1
    return-object v0
.end method

.method private n(Lio/reactivex/z;Lio/reactivex/z;)Lio/reactivex/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "*>;",
            "Lio/reactivex/z<",
            "*>;)",
            "Lio/reactivex/z<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/tbruyelle/rxpermissions2/c;->c:Ljava/lang/Object;

    invoke-static {p1}, Lio/reactivex/z;->j3(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lio/reactivex/z;->B3(Lio/reactivex/e0;Lio/reactivex/e0;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method private varargs o([Ljava/lang/String;)Lio/reactivex/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    iget-object v3, p0, Lcom/tbruyelle/rxpermissions2/c;->a:Lcom/tbruyelle/rxpermissions2/c$f;

    invoke-interface {v3}, Lcom/tbruyelle/rxpermissions2/c$f;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tbruyelle/rxpermissions2/d;

    invoke-virtual {v3, v2}, Lcom/tbruyelle/rxpermissions2/d;->M(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/z;->b2()Lio/reactivex/z;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/tbruyelle/rxpermissions2/c;->c:Ljava/lang/Object;

    invoke-static {p1}, Lio/reactivex/z;->j3(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method private varargs p(Lio/reactivex/z;[Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcom/tbruyelle/rxpermissions2/b;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcom/tbruyelle/rxpermissions2/c;->o([Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tbruyelle/rxpermissions2/c;->n(Lio/reactivex/z;Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcom/tbruyelle/rxpermissions2/c$e;

    invoke-direct {v0, p0, p2}, Lcom/tbruyelle/rxpermissions2/c$e;-><init>(Lcom/tbruyelle/rxpermissions2/c;[Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Lio/reactivex/z;->i2(Lw2/o;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "RxPermissions.request/requestEach requires at least one input permission"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private varargs t([Ljava/lang/String;)Lio/reactivex/z;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcom/tbruyelle/rxpermissions2/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    .line 4
    iget-object v6, p0, Lcom/tbruyelle/rxpermissions2/c;->a:Lcom/tbruyelle/rxpermissions2/c$f;

    invoke-interface {v6}, Lcom/tbruyelle/rxpermissions2/c$f;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tbruyelle/rxpermissions2/d;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requesting permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tbruyelle/rxpermissions2/d;->Q(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v5}, Lcom/tbruyelle/rxpermissions2/c;->j(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    new-instance v6, Lcom/tbruyelle/rxpermissions2/b;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7, v3}, Lcom/tbruyelle/rxpermissions2/b;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v6}, Lio/reactivex/z;->j3(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p0, v5}, Lcom/tbruyelle/rxpermissions2/c;->l(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    new-instance v6, Lcom/tbruyelle/rxpermissions2/b;

    invoke-direct {v6, v5, v3, v3}, Lcom/tbruyelle/rxpermissions2/b;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v6}, Lio/reactivex/z;->j3(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_1
    iget-object v6, p0, Lcom/tbruyelle/rxpermissions2/c;->a:Lcom/tbruyelle/rxpermissions2/c$f;

    invoke-interface {v6}, Lcom/tbruyelle/rxpermissions2/c$f;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tbruyelle/rxpermissions2/d;

    invoke-virtual {v6, v5}, Lcom/tbruyelle/rxpermissions2/d;->N(Ljava/lang/String;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v6

    if-nez v6, :cond_2

    .line 10
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->l8()Lio/reactivex/subjects/PublishSubject;

    move-result-object v6

    .line 12
    iget-object v7, p0, Lcom/tbruyelle/rxpermissions2/c;->a:Lcom/tbruyelle/rxpermissions2/c$f;

    invoke-interface {v7}, Lcom/tbruyelle/rxpermissions2/c$f;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tbruyelle/rxpermissions2/d;

    invoke-virtual {v7, v5, v6}, Lcom/tbruyelle/rxpermissions2/d;->T(Ljava/lang/String;Lio/reactivex/subjects/PublishSubject;)V

    .line 13
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 16
    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/c;->u([Ljava/lang/String;)V

    .line 17
    :cond_4
    invoke-static {v0}, Lio/reactivex/z;->M2(Ljava/lang/Iterable;)Lio/reactivex/z;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/z;->r0(Lio/reactivex/e0;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method private varargs x(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 2
    invoke-virtual {p0, v3}, Lcom/tbruyelle/rxpermissions2/c;->j(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public varargs d([Ljava/lang/String;)Lio/reactivex/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/f0<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tbruyelle/rxpermissions2/c$b;

    invoke-direct {v0, p0, p1}, Lcom/tbruyelle/rxpermissions2/c$b;-><init>(Lcom/tbruyelle/rxpermissions2/c;[Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs e([Ljava/lang/String;)Lio/reactivex/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/f0<",
            "TT;",
            "Lcom/tbruyelle/rxpermissions2/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tbruyelle/rxpermissions2/c$c;

    invoke-direct {v0, p0, p1}, Lcom/tbruyelle/rxpermissions2/c$c;-><init>(Lcom/tbruyelle/rxpermissions2/c;[Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs f([Ljava/lang/String;)Lio/reactivex/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/f0<",
            "TT;",
            "Lcom/tbruyelle/rxpermissions2/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tbruyelle/rxpermissions2/c$d;

    invoke-direct {v0, p0, p1}, Lcom/tbruyelle/rxpermissions2/c$d;-><init>(Lcom/tbruyelle/rxpermissions2/c;[Ljava/lang/String;)V

    return-object v0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions2/c;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/c;->a:Lcom/tbruyelle/rxpermissions2/c$f;

    invoke-interface {v0}, Lcom/tbruyelle/rxpermissions2/c$f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tbruyelle/rxpermissions2/d;

    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions2/d;->O(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method k()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions2/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/c;->a:Lcom/tbruyelle/rxpermissions2/c$f;

    invoke-interface {v0}, Lcom/tbruyelle/rxpermissions2/c$f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tbruyelle/rxpermissions2/d;

    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions2/d;->P(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method m([Ljava/lang/String;[I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/c;->a:Lcom/tbruyelle/rxpermissions2/c$f;

    invoke-interface {v0}, Lcom/tbruyelle/rxpermissions2/c$f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tbruyelle/rxpermissions2/d;

    array-length v1, p1

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/tbruyelle/rxpermissions2/d;->R([Ljava/lang/String;[I[Z)V

    return-void
.end method

.method public varargs q([Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/tbruyelle/rxpermissions2/c;->c:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/z;->j3(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/c;->d([Ljava/lang/String;)Lio/reactivex/f0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/z;->q0(Lio/reactivex/f0;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public varargs r([Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcom/tbruyelle/rxpermissions2/b;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/tbruyelle/rxpermissions2/c;->c:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/z;->j3(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/c;->e([Ljava/lang/String;)Lio/reactivex/f0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/z;->q0(Lio/reactivex/f0;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public varargs s([Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcom/tbruyelle/rxpermissions2/b;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/tbruyelle/rxpermissions2/c;->c:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/z;->j3(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/c;->f([Ljava/lang/String;)Lio/reactivex/f0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/z;->q0(Lio/reactivex/f0;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method u([Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/c;->a:Lcom/tbruyelle/rxpermissions2/c$f;

    invoke-interface {v0}, Lcom/tbruyelle/rxpermissions2/c$f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tbruyelle/rxpermissions2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPermissionsFromFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/d;->Q(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/c;->a:Lcom/tbruyelle/rxpermissions2/c$f;

    invoke-interface {v0}, Lcom/tbruyelle/rxpermissions2/c$f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tbruyelle/rxpermissions2/d;

    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions2/d;->requestPermissions([Ljava/lang/String;)V

    return-void
.end method

.method public v(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/c;->a:Lcom/tbruyelle/rxpermissions2/c$f;

    invoke-interface {v0}, Lcom/tbruyelle/rxpermissions2/c$f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tbruyelle/rxpermissions2/d;

    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions2/d;->S(Z)V

    return-void
.end method

.method public varargs w(Landroid/app/Activity;[Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions2/c;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lio/reactivex/z;->j3(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tbruyelle/rxpermissions2/c;->x(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/z;->j3(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method
