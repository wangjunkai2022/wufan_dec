.class public final Lcom/join/mgps/activity/ForumMyActivity_;
.super Lcom/join/mgps/activity/ForumMyActivity;
.source "ForumMyActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumMyActivity_$h;
    }
.end annotation


# instance fields
.field private final t:Li3/c;

.field private final u:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumMyActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity_;->t:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity_;->u:Ljava/util/Map;

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/ForumMyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumMyActivity;->K0()V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/ForumMyActivity_;Lcom/join/mgps/dto/ForumData$MyForumMain;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumMyActivity;->J0(Lcom/join/mgps/dto/ForumData$MyForumMain;I)V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/activity/ForumMyActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/ForumMyActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity;->D0(I)V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/ForumMyActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity;->G0(I)V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/ForumMyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumMyActivity;->L0()V

    return-void
.end method

.method public static S0(Landroid/content/Context;)Lcom/join/mgps/activity/ForumMyActivity_$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity_$h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static T0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ForumMyActivity_$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity_$h;-><init>(Landroidx/fragment/app/Fragment;)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity_$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumMyActivity_$e;-><init>(Lcom/join/mgps/activity/ForumMyActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method G0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumMyActivity_$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumMyActivity_$f;-><init>(Lcom/join/mgps/activity/ForumMyActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method J0(Lcom/join/mgps/dto/ForumData$MyForumMain;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity_$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumMyActivity_$c;-><init>(Lcom/join/mgps/activity/ForumMyActivity_;Lcom/join/mgps/dto/ForumData$MyForumMain;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity_$b;-><init>(Lcom/join/mgps/activity/ForumMyActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumMyActivity_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumMyActivity_$g;-><init>(Lcom/join/mgps/activity/ForumMyActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity_;->u:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity_;->t:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0036

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f09052c

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f090986

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->b:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f090dcb

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/noties/scrollable/ScrollableLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->c:Lru/noties/scrollable/ScrollableLayout;

    const v0, 0x7f090649

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumMyHeaderView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->d:Lcom/join/mgps/customview/ForumMyHeaderView;

    const v0, 0x7f0909e2

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f090452

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XExpandableListView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity;->f:Lcom/join/mgps/customview/XExpandableListView;

    const v0, 0x7f09013e

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity_$a;-><init>(Lcom/join/mgps/activity/ForumMyActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity_;->u:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity_;->t:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity_;->t:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity_;->t:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity_$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumMyActivity_$d;-><init>(Lcom/join/mgps/activity/ForumMyActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
