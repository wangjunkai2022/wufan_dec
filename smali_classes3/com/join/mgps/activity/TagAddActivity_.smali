.class public final Lcom/join/mgps/activity/TagAddActivity_;
.super Lcom/join/mgps/activity/TagAddActivity;
.source "TagAddActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/TagAddActivity_$t;
    }
.end annotation


# static fields
.field public static final C:Ljava/lang/String; = "title"

.field public static final D:Ljava/lang/String; = "gameId"


# instance fields
.field private final A:Landroid/content/IntentFilter;

.field private final B:Landroid/content/BroadcastReceiver;

.field private final y:Li3/c;

.field private final z:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/TagAddActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity_;->y:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity_;->z:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity_;->A:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagAddActivity_$k;-><init>(Lcom/join/mgps/activity/TagAddActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity_;->B:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/TagAddActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/TagAddActivity;->showLoding()V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/TagAddActivity_;Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/TagAddActivity;->J0(Lcom/join/mgps/dto/GameTagsBean;)V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/TagAddActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/TagAddActivity;->O0()V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/TagAddActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/TagAddActivity;->F0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/TagAddActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/TagAddActivity;->L0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/TagAddActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/TagAddActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/TagAddActivity_;Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/TagAddActivity;->T0(Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/TagAddActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/TagAddActivity;->G0()V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/TagAddActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/TagAddActivity;->S0()V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/activity/TagAddActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/TagAddActivity;->K0()V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/TagAddActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/TagAddActivity;->V0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/activity/TagAddActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/TagAddActivity;->M0()V

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/TagAddActivity_;Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/TagAddActivity;->I0(Lcom/join/mgps/dto/GameTagsBean;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    const v0, 0x7f110207

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->m:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->n:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/TagAddActivity_;->injectExtras_()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity_;->A:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity_;->B:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity_;->A:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

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

    const-string v1, "title"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->e:Ljava/lang/String;

    :cond_0
    const-string v1, "gameId"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->f:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static j1(Landroid/content/Context;)Lcom/join/mgps/activity/TagAddActivity_$t;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagAddActivity_$t;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static k1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/TagAddActivity_$t;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagAddActivity_$t;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method F0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/TagAddActivity_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/TagAddActivity_$i;-><init>(Lcom/join/mgps/activity/TagAddActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method G0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagAddActivity_$b;-><init>(Lcom/join/mgps/activity/TagAddActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I0(Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/TagAddActivity_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/TagAddActivity_$g;-><init>(Lcom/join/mgps/activity/TagAddActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/GameTagsBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method J0(Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/TagAddActivity_$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/TagAddActivity_$h;-><init>(Lcom/join/mgps/activity/TagAddActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/GameTagsBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method K0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagAddActivity_$d;-><init>(Lcom/join/mgps/activity/TagAddActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/TagAddActivity_$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/TagAddActivity_$j;-><init>(Lcom/join/mgps/activity/TagAddActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method M0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/TagAddActivity_$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/TagAddActivity_$f;-><init>(Lcom/join/mgps/activity/TagAddActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method O0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagAddActivity_$r;-><init>(Lcom/join/mgps/activity/TagAddActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagAddActivity_$c;-><init>(Lcom/join/mgps/activity/TagAddActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method T0(Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity_$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/TagAddActivity_$a;-><init>(Lcom/join/mgps/activity/TagAddActivity_;Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method V0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity_$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/TagAddActivity_$e;-><init>(Lcom/join/mgps/activity/TagAddActivity_;Ljava/util/List;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity_;->z:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity_;->y:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/TagAddActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0070

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/TagAddActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity_;->B:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 4

    const v0, 0x7f09013e

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f0909b5

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f091033

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0904d9

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/FlowLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->g:Lcom/join/mgps/customview/FlowLayout;

    const v0, 0x7f0904da

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/FlowLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->h:Lcom/join/mgps/customview/FlowLayout;

    const v0, 0x7f09118c

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f090b49

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->j:Landroidx/core/widget/NestedScrollView;

    const v0, 0x7f090433

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->k:Landroid/widget/EditText;

    const v0, 0x7f0909c8

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->l:Landroid/widget/ListView;

    const v0, 0x7f09116e

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090d11

    .line 12
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09090f

    .line 13
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090e21

    .line 14
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 15
    new-instance v3, Lcom/join/mgps/activity/TagAddActivity_$l;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/TagAddActivity_$l;-><init>(Lcom/join/mgps/activity/TagAddActivity_;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 16
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagAddActivity_$m;-><init>(Lcom/join/mgps/activity/TagAddActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 17
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagAddActivity_$n;-><init>(Lcom/join/mgps/activity/TagAddActivity_;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 19
    new-instance v1, Lcom/join/mgps/activity/TagAddActivity_$o;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/TagAddActivity_$o;-><init>(Lcom/join/mgps/activity/TagAddActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 20
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagAddActivity_$p;-><init>(Lcom/join/mgps/activity/TagAddActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity_;->z:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity_;->y:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity_;->y:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity_;->y:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/TagAddActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagAddActivity_$q;-><init>(Lcom/join/mgps/activity/TagAddActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagAddActivity_$s;-><init>(Lcom/join/mgps/activity/TagAddActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
