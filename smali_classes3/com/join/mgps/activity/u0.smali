.class public final Lcom/join/mgps/activity/u0;
.super Lcom/join/mgps/activity/t0;
.source "MGFightFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/u0$f;
    }
.end annotation


# instance fields
.field private final A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Li3/c;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/t0;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/u0;->y:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/u0;->A:Ljava/util/Map;

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method static synthetic m0(Lcom/join/mgps/activity/u0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/t0;->h0()V

    return-void
.end method

.method static synthetic n0(Lcom/join/mgps/activity/u0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/t0;->i0()V

    return-void
.end method

.method static synthetic o0(Lcom/join/mgps/activity/u0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/t0;->a0()V

    return-void
.end method

.method static synthetic p0(Lcom/join/mgps/activity/u0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/t0;->b0()V

    return-void
.end method

.method static synthetic q0(Lcom/join/mgps/activity/u0;Lcom/join/mgps/dto/WarIndexDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/t0;->j0(Lcom/join/mgps/dto/WarIndexDataBean;)V

    return-void
.end method

.method public static r0()Lcom/join/mgps/activity/u0$f;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/u0$f;

    invoke-direct {v0}, Lcom/join/mgps/activity/u0$f;-><init>()V

    return-object v0
.end method


# virtual methods
.method a0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/u0$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/u0$c;-><init>(Lcom/join/mgps/activity/u0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method b0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/u0$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/u0$d;-><init>(Lcom/join/mgps/activity/u0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/u0;->A:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/u0$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/u0$a;-><init>(Lcom/join/mgps/activity/u0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method i0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/u0$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/u0$b;-><init>(Lcom/join/mgps/activity/u0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/u0;->z:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method j0(Lcom/join/mgps/dto/WarIndexDataBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/u0$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/u0$e;-><init>(Lcom/join/mgps/activity/u0;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/WarIndexDataBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/u0;->y:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/u0;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/basefragment/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/activity/u0;->z:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c03ef

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/u0;->z:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/u0;->z:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/u0;->z:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/t0;->d:Lcom/join/mgps/customview/XListView2;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/t0;->v:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f09049f

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->d:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f091064

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/t0;->v:Landroid/widget/RelativeLayout;

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/t0;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/u0;->y:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/u0;->A:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
