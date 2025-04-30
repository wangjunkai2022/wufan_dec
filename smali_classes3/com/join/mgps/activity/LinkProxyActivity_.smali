.class public final Lcom/join/mgps/activity/LinkProxyActivity_;
.super Lcom/join/mgps/activity/LinkProxyActivity;
.source "LinkProxyActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/LinkProxyActivity_$g;
    }
.end annotation


# instance fields
.field private final c:Li3/c;

.field private final d:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/LinkProxyActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/LinkProxyActivity_;->c:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/LinkProxyActivity_;->d:Ljava/util/Map;

    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/activity/LinkProxyActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity;->J0(Z)V

    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/activity/LinkProxyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/LinkProxyActivity;->F0()V

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/LinkProxyActivity_;Lcom/join/mgps/dto/GameVerByBg;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity;->E0(Lcom/join/mgps/dto/GameVerByBg;)V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/LinkProxyActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/activity/LinkProxyActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity;->D0(I)V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/LinkProxyActivity_;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/LinkProxyActivity;->I0(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static Q0(Landroid/content/Context;)Lcom/join/mgps/activity/LinkProxyActivity_$g;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/LinkProxyActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/LinkProxyActivity_$g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static R0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/LinkProxyActivity_$g;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/LinkProxyActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/LinkProxyActivity_$g;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
.method D0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/LinkProxyActivity_$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity_$e;-><init>(Lcom/join/mgps/activity/LinkProxyActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method E0(Lcom/join/mgps/dto/GameVerByBg;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/LinkProxyActivity_$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity_$c;-><init>(Lcom/join/mgps/activity/LinkProxyActivity_;Lcom/join/mgps/dto/GameVerByBg;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method F0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/LinkProxyActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/LinkProxyActivity_$b;-><init>(Lcom/join/mgps/activity/LinkProxyActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/LinkProxyActivity_$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/LinkProxyActivity_$f;-><init>(Lcom/join/mgps/activity/LinkProxyActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method J0(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/LinkProxyActivity_$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity_$a;-><init>(Lcom/join/mgps/activity/LinkProxyActivity_;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/LinkProxyActivity_;->d:Ljava/util/Map;

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
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/LinkProxyActivity_;->c:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c004b

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090986

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/ForumLoadingView;

    iput-object p1, p0, Lcom/join/mgps/activity/LinkProxyActivity;->a:Lcom/join/mgps/customview/ForumLoadingView;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/LinkProxyActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/LinkProxyActivity_;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/LinkProxyActivity_;->c:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/LinkProxyActivity_;->c:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/LinkProxyActivity_;->c:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/LinkProxyActivity_$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity_$d;-><init>(Lcom/join/mgps/activity/LinkProxyActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
