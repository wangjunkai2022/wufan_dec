.class public final Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;
.super Lcom/join/mgps/activity/GameDetialInformationMoreActivity;
.source "GameDetialInformationMoreActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$n;
    }
.end annotation


# static fields
.field public static final F:Ljava/lang/String; = "detialIntentBean"


# instance fields
.field private final D:Li3/c;

.field private final E:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;->D:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;->E:Ljava/util/Map;

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->I0()V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->showLoding()V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->O0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->R0()V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->M0()V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->J0()V

    return-void
.end method

.method public static Z0(Landroid/content/Context;)Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$n;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$n;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$n;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$n;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
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

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->p:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->q:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "detialIntentBean"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DetialIntentBean;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->s:Lcom/join/mgps/dto/DetialIntentBean;

    :cond_0
    return-void
.end method


# virtual methods
.method I0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$k;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$d;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method M0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$c;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendInfomationBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$a;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method R0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$b;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;->E:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;->D:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0140

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f0909e2

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f091033

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f090cb6

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909b5

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f090d11

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->i:Landroid/widget/ImageView;

    const v0, 0x7f09013e

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->j:Landroid/widget/ImageView;

    const v0, 0x7f090f18

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f090623

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f091030

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f09102e

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->n:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f090a4d

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e21

    .line 13
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 15
    new-instance v2, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$e;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$e;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->j:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 17
    new-instance v2, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$f;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$f;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 18
    new-instance v1, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$g;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 19
    new-instance v0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$h;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->m:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 21
    new-instance v0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$i;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->n:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz p1, :cond_5

    .line 23
    new-instance v0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$j;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;->E:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;->D:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;->D:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;->D:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$l;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity_$m;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
