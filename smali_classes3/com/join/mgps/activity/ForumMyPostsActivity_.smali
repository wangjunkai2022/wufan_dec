.class public final Lcom/join/mgps/activity/ForumMyPostsActivity_;
.super Lcom/join/mgps/activity/ForumMyPostsActivity;
.source "ForumMyPostsActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumMyPostsActivity_$p;
    }
.end annotation


# instance fields
.field private final G:Li3/c;

.field private final H:Ljava/util/Map;
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

.field private final I:Landroid/content/IntentFilter;

.field private final J:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->G:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->H:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->I:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity_$g;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->J:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/ForumMyPostsActivity_;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->startDown(Lcom/join/mgps/dto/DetailResultBean;)V

    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->Q0()V

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumMyPostsActivity;->e1(Ljava/util/List;I)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    const v0, 0x7f110207

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->h:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->i:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->I:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->I:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->J:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->I:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic j1(Lcom/join/mgps/activity/ForumMyPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->M0(I)V

    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/ForumMyPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->W0(I)V

    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/ForumMyPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->I0(I)V

    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->d1()V

    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o1(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->S0()V

    return-void
.end method

.method static synthetic p1(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->c1()V

    return-void
.end method

.method static synthetic q1(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->b1()V

    return-void
.end method

.method static synthetic r1(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s1(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->L0(Ljava/lang/String;)V

    return-void
.end method

.method public static t1(Landroid/content/Context;)Lcom/join/mgps/activity/ForumMyPostsActivity_$p;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity_$p;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static u1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ForumMyPostsActivity_$p;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity_$p;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method I0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$k;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity_$k;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumMyPostsActivity_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumMyPostsActivity_$c;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method M0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumMyPostsActivity_$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumMyPostsActivity_$e;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Q0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumMyPostsActivity_$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumMyPostsActivity_$d;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method S0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity_$n;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumMyPostsActivity_$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumMyPostsActivity_$f;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method b1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity_$a;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method c1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity_$o;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method d1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity_$l;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method e1(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$j;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumMyPostsActivity_$j;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/util/List;I)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->H:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->G:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0037

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f09013e

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f0908a2

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f090986

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f0909e2

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f090a48

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/XListView2;

    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->e:Lcom/join/mgps/customview/XListView2;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity_$h;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->H:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->G:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->G:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_;->G:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity_$b;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$m;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity_$m;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method startDown(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity_$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity_$i;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Lcom/join/mgps/dto/DetailResultBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
