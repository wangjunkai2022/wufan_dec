.class public final Lcom/join/mgps/activity/PapaLookOtherActivity_;
.super Lcom/join/mgps/activity/PapaLookOtherActivity;
.source "PapaLookOtherActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/PapaLookOtherActivity_$q;
    }
.end annotation


# instance fields
.field private final u:Li3/c;

.field private final v:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_;->u:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_;->v:Ljava/util/Map;

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/PapaLookOtherActivity_;ILcom/join/mgps/dto/CollectionDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/PapaLookOtherActivity;->H0(ILcom/join/mgps/dto/CollectionDataBean;)V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->serverConnectionException()V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->G0()V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->showLoding()V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->I0()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->updateDownloadView()V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/PapaLookOtherActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/PapaLookOtherActivity;->J0(II)V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->E0()V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->getDownloadTaskInfo()V

    return-void
.end method

.method public static W0(Landroid/content/Context;)Lcom/join/mgps/activity/PapaLookOtherActivity_$q;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$q;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static X0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/PapaLookOtherActivity_$q;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$q;-><init>(Landroidx/fragment/app/Fragment;)V

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

    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->d:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method E0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/PapaLookOtherActivity_$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/PapaLookOtherActivity_$f;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method G0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$p;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method H0(ILcom/join/mgps/dto/CollectionDataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$n;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/PapaLookOtherActivity_$n;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;ILcom/join/mgps/dto/CollectionDataBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$c;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J0(II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/PapaLookOtherActivity_$e;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;II)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/PapaLookOtherActivity_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/PapaLookOtherActivity_$g;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_;->u:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaLookOtherActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0527

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaLookOtherActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f091033

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0909b5

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f090535

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->j:Landroid/widget/FrameLayout;

    const v0, 0x7f091030

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->k:Landroid/widget/ImageView;

    const v0, 0x7f09102e

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->l:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f0902a6

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->p:Landroid/widget/RelativeLayout;

    const v0, 0x7f09029e

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->q:Landroid/widget/ImageView;

    const v0, 0x7f090d9a

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f09013e

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090d11

    .line 11
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090e21

    .line 12
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 13
    new-instance v2, Lcom/join/mgps/activity/PapaLookOtherActivity_$h;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$h;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 14
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$i;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 15
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$j;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 17
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$k;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->l:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz p1, :cond_4

    .line 19
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$l;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->q:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 21
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$m;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->afterview()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_;->v:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method serverConnectionException()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$o;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_;->u:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_;->u:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_;->u:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$a;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$b;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$d;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
