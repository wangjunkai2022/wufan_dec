.class public final Lcom/join/mgps/activity/ClassifyGameActivity_;
.super Lcom/join/mgps/activity/ClassifyGameActivity;
.source "ClassifyGameActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ClassifyGameActivity_$n;
    }
.end annotation


# static fields
.field public static final q0:Ljava/lang/String; = "gameTypeId"

.field public static final r0:Ljava/lang/String; = "romTypeId"

.field public static final s0:Ljava/lang/String; = "title"

.field public static final t0:Ljava/lang/String; = "topTitle"


# instance fields
.field private final o0:Li3/c;

.field private final p0:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity_;->o0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity_;->p0:Ljava/util/Map;

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/ClassifyGameActivity_;Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ClassifyGameActivity;->V0(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/ClassifyGameActivity_;Lcom/join/mgps/dto/ClassifyGameTagBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ClassifyGameActivity;->O0(Lcom/join/mgps/dto/ClassifyGameTagBean;)V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/ClassifyGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->F0()V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/ClassifyGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->K0()V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/ClassifyGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->R0()V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/ClassifyGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->updateDownloadView()V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/ClassifyGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->J0()V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/ClassifyGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->getDownloadTaskInfo()V

    return-void
.end method

.method public static e1(Landroid/content/Context;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static f1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ClassifyGameActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "gameTypeId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->u:I

    :cond_0
    const-string v1, "romTypeId"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->v:I

    :cond_1
    const-string v1, "title"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->w:Ljava/lang/String;

    :cond_2
    const-string v1, "topTitle"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->x:Ljava/lang/String;

    :cond_3
    return-void
.end method


# virtual methods
.method F0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ClassifyGameActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ClassifyGameActivity_$l;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public J0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ClassifyGameActivity_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ClassifyGameActivity_$c;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method K0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ClassifyGameActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ClassifyGameActivity_$m;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O0(Lcom/join/mgps/dto/ClassifyGameTagBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ClassifyGameActivity_$k;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ClassifyGameActivity_$k;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity_;Lcom/join/mgps/dto/ClassifyGameTagBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method R0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ClassifyGameActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ClassifyGameActivity_$a;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method V0(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ClassifyGameActivity_$j;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ClassifyGameActivity_$j;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity_;Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V

    const-string p1, ""

    const-wide/16 v1, 0x1f4

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
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity_;->p0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ClassifyGameActivity_$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ClassifyGameActivity_$d;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
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
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity_;->o0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ClassifyGameActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0028

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ClassifyGameActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f090989

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f090d00

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    const v0, 0x7f0900f9

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->c:Lcom/google/android/material/appbar/AppBarLayout;

    const v0, 0x7f09104b

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->d:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f090f13

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->e:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    const v0, 0x7f090f14

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->f:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    const v0, 0x7f090f15

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->g:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    const v0, 0x7f09102e

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->h:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f091030

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->i:Landroid/widget/ImageView;

    const v0, 0x7f0909e9

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->j:Landroid/widget/FrameLayout;

    const v0, 0x7f091033

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f090e10

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f090e20

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09013e

    .line 14
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->t:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 16
    new-instance v2, Lcom/join/mgps/activity/ClassifyGameActivity_$e;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ClassifyGameActivity_$e;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 17
    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity_$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity_$f;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 19
    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity_$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity_$g;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->h:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz v0, :cond_3

    .line 21
    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity_$h;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity_$h;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 22
    new-instance v0, Lcom/join/mgps/activity/ClassifyGameActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ClassifyGameActivity_$i;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity_;->p0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity_;->o0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity_;->o0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity_;->o0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ClassifyGameActivity_;->injectExtras_()V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ClassifyGameActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ClassifyGameActivity_$b;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
