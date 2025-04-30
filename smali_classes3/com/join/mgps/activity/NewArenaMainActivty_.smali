.class public final Lcom/join/mgps/activity/NewArenaMainActivty_;
.super Lcom/join/mgps/activity/NewArenaMainActivty;
.source "NewArenaMainActivty_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/NewArenaMainActivty_$h;
    }
.end annotation


# instance fields
.field private final D0:Li3/c;

.field private final E0:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/NewArenaMainActivty;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty_;->D0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty_;->E0:Ljava/util/Map;

    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/activity/NewArenaMainActivty_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/NewArenaMainActivty;->updateDownloadingPoint(I)V

    return-void
.end method

.method static synthetic B1(Lcom/join/mgps/activity/NewArenaMainActivty_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/NewArenaMainActivty;->updateNoOpenPoint()V

    return-void
.end method

.method static synthetic C1(Lcom/join/mgps/activity/NewArenaMainActivty_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/NewArenaMainActivty;->updateHidePoint()V

    return-void
.end method

.method static synthetic D1(Lcom/join/mgps/activity/NewArenaMainActivty_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/NewArenaMainActivty;->updateLine(I)V

    return-void
.end method

.method static synthetic E1(Lcom/join/mgps/activity/NewArenaMainActivty_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/NewArenaMainActivty;->checkDownlodingNumber()V

    return-void
.end method

.method public static F1(Landroid/content/Context;)Lcom/join/mgps/activity/NewArenaMainActivty_$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/NewArenaMainActivty_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/NewArenaMainActivty_$h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static G1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/NewArenaMainActivty_$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/NewArenaMainActivty_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/NewArenaMainActivty_$h;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
.method checkDownlodingNumber()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/NewArenaMainActivty_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/NewArenaMainActivty_$g;-><init>(Lcom/join/mgps/activity/NewArenaMainActivty_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty_;->E0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty_;->D0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/NewArenaMainActivty_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/activity/NewArenaMainActivty;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c007d

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/NewArenaMainActivty_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f09089d

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->p0:Landroid/widget/RelativeLayout;

    const v0, 0x7f090a50

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->q0:Landroid/widget/FrameLayout;

    const v0, 0x7f090875

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lcom/join/mgps/activity/NewArenaMainActivty_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/NewArenaMainActivty_$a;-><init>(Lcom/join/mgps/activity/NewArenaMainActivty_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->p0:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    .line 6
    new-instance v0, Lcom/join/mgps/activity/NewArenaMainActivty_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/NewArenaMainActivty_$b;-><init>(Lcom/join/mgps/activity/NewArenaMainActivty_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/NewArenaMainActivty;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty_;->E0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/NewArenaMainActivty_;->D0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/NewArenaMainActivty_;->D0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/NewArenaMainActivty_;->D0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method updateDownloadingPoint(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/NewArenaMainActivty_$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/NewArenaMainActivty_$c;-><init>(Lcom/join/mgps/activity/NewArenaMainActivty_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateHidePoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/NewArenaMainActivty_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/NewArenaMainActivty_$e;-><init>(Lcom/join/mgps/activity/NewArenaMainActivty_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateLine(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/NewArenaMainActivty_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/NewArenaMainActivty_$f;-><init>(Lcom/join/mgps/activity/NewArenaMainActivty_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateNoOpenPoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/NewArenaMainActivty_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/NewArenaMainActivty_$d;-><init>(Lcom/join/mgps/activity/NewArenaMainActivty_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
