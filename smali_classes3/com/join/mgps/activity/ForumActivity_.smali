.class public final Lcom/join/mgps/activity/ForumActivity_;
.super Lcom/join/mgps/activity/ForumActivity;
.source "ForumActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumActivity_$q;
    }
.end annotation


# static fields
.field public static final G:Ljava/lang/String; = "fid"

.field public static final H:Ljava/lang/String; = "from"


# instance fields
.field private final E:Li3/c;

.field private final F:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity_;->E:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity_;->F:Ljava/util/Map;

    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/activity/ForumActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumActivity;->K0(Z)V

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/ForumActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumActivity;->M0()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "fid"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/ForumActivity;->o:I

    :cond_0
    const-string v1, "from"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->p:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic j1(Lcom/join/mgps/activity/ForumActivity_;Lcom/join/mgps/dto/ForumData$ForumGroupIndex;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumActivity;->e1(Lcom/join/mgps/dto/ForumData$ForumGroupIndex;)V

    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/ForumActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumActivity;->D0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/ForumActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumActivity;->L0(I)V

    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/activity/ForumActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumActivity;->Z0()V

    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/activity/ForumActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumActivity;->R0()V

    return-void
.end method

.method static synthetic o1(Lcom/join/mgps/activity/ForumActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumActivity;->b1()V

    return-void
.end method

.method static synthetic p1(Lcom/join/mgps/activity/ForumActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumActivity;->d1()V

    return-void
.end method

.method static synthetic q1(Lcom/join/mgps/activity/ForumActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumActivity;->Q0()V

    return-void
.end method

.method static synthetic r1(Lcom/join/mgps/activity/ForumActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumActivity;->W0()V

    return-void
.end method

.method public static s1(Landroid/content/Context;)Lcom/join/mgps/activity/ForumActivity_$q;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumActivity_$q;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static t1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ForumActivity_$q;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumActivity_$q;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method D0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumActivity_$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumActivity_$o;-><init>(Lcom/join/mgps/activity/ForumActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K0(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumActivity_$m;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumActivity_$m;-><init>(Lcom/join/mgps/activity/ForumActivity_;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumActivity_$p;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumActivity_$p;-><init>(Lcom/join/mgps/activity/ForumActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method M0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumActivity_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumActivity_$g;-><init>(Lcom/join/mgps/activity/ForumActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Q0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumActivity_$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumActivity_$e;-><init>(Lcom/join/mgps/activity/ForumActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method R0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumActivity_$b;-><init>(Lcom/join/mgps/activity/ForumActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumActivity_$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumActivity_$f;-><init>(Lcom/join/mgps/activity/ForumActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Z0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumActivity_$a;-><init>(Lcom/join/mgps/activity/ForumActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method b1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumActivity_$c;-><init>(Lcom/join/mgps/activity/ForumActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method d1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumActivity_$d;-><init>(Lcom/join/mgps/activity/ForumActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method e1(Lcom/join/mgps/dto/ForumData$ForumGroupIndex;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumActivity_$n;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumActivity_$n;-><init>(Lcom/join/mgps/activity/ForumActivity_;Lcom/join/mgps/dto/ForumData$ForumGroupIndex;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity_;->F:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity_;->E:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0407

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f09052c

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f090eb2

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f09050f

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->c:Landroid/widget/Button;

    const v0, 0x7f090169

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->d:Landroid/view/View;

    const v0, 0x7f090986

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f090dcb

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/noties/scrollable/ScrollableLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->f:Lru/noties/scrollable/ScrollableLayout;

    const v0, 0x7f090649

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumGroupHeaderView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->g:Lcom/join/mgps/customview/ForumGroupHeaderView;

    const v0, 0x7f090f19

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/SlidingTabLayout4;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->h:Lcom/join/mgps/customview/SlidingTabLayout4;

    const v0, 0x7f091280

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->i:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f090d48

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f0909e2

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->k:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f09013e

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901ab

    .line 13
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 15
    new-instance v2, Lcom/join/mgps/activity/ForumActivity_$h;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumActivity_$h;-><init>(Lcom/join/mgps/activity/ForumActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 16
    new-instance v1, Lcom/join/mgps/activity/ForumActivity_$i;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumActivity_$i;-><init>(Lcom/join/mgps/activity/ForumActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 18
    new-instance v1, Lcom/join/mgps/activity/ForumActivity_$j;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumActivity_$j;-><init>(Lcom/join/mgps/activity/ForumActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 19
    new-instance v0, Lcom/join/mgps/activity/ForumActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumActivity_$k;-><init>(Lcom/join/mgps/activity/ForumActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->c:Landroid/widget/Button;

    if-eqz p1, :cond_4

    .line 21
    new-instance v0, Lcom/join/mgps/activity/ForumActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumActivity_$l;-><init>(Lcom/join/mgps/activity/ForumActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity_;->F:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity_;->E:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity_;->E:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity_;->E:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumActivity_;->injectExtras_()V

    return-void
.end method
