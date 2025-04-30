.class public final Lcom/join/mgps/activity/ForumSearchHintActivity_;
.super Lcom/join/mgps/activity/ForumSearchHintActivity;
.source "ForumSearchHintActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumSearchHintActivity_$w;
    }
.end annotation


# static fields
.field public static final K0:Ljava/lang/String; = "keyword"

.field public static final L0:Ljava/lang/String; = "fid"


# instance fields
.field private final I0:Li3/c;

.field private final J0:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_;->I0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_;->J0:Ljava/util/Map;

    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/activity/ForumSearchHintActivity_;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumSearchHintActivity;->Y0(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic B1(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->serverConnectionException()V

    return-void
.end method

.method static synthetic C1(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->Z0()V

    return-void
.end method

.method static synthetic D1(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->o1()V

    return-void
.end method

.method static synthetic E1(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->h1()V

    return-void
.end method

.method static synthetic F1(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->m1()V

    return-void
.end method

.method static synthetic G1(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->P0()V

    return-void
.end method

.method static synthetic H1(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->p1()V

    return-void
.end method

.method static synthetic I1(Lcom/join/mgps/activity/ForumSearchHintActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public static J1(Landroid/content/Context;)Lcom/join/mgps/activity/ForumSearchHintActivity_$w;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$w;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static K1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ForumSearchHintActivity_$w;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$w;-><init>(Landroidx/fragment/app/Fragment;)V

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

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->s0:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->t0:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_;->injectExtras_()V

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

    const-string v1, "keyword"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->q0:Ljava/lang/String;

    :cond_0
    const-string v1, "fid"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->u0:I

    :cond_1
    return-void
.end method

.method static synthetic t1(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->O0()V

    return-void
.end method

.method static synthetic u1(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyUi()V

    return-void
.end method

.method static synthetic v1(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->s1()V

    return-void
.end method

.method static synthetic w1(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->V0()V

    return-void
.end method

.method static synthetic x1(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->K0()V

    return-void
.end method

.method static synthetic y1(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->X0()V

    return-void
.end method

.method static synthetic z1(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->W0()V

    return-void
.end method


# virtual methods
.method K0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumSearchHintActivity_$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumSearchHintActivity_$j;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method O0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$t;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$e;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method V0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumSearchHintActivity_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumSearchHintActivity_$i;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method W0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumSearchHintActivity_$m;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumSearchHintActivity_$m;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method X0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumSearchHintActivity_$l;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumSearchHintActivity_$l;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Y0(Ljava/lang/String;I)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/ForumSearchHintActivity_$n;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/ForumSearchHintActivity_$n;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Z0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$a;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_;->J0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$c;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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

.method m1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$d;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method notifyUi()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$h;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method o1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$b;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_;->I0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c01ef

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f090dd9

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f09074a

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->c:Landroid/widget/ImageView;

    const v0, 0x7f09073f

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->d:Landroid/widget/ImageView;

    const v0, 0x7f09027e

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f090dec

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f09061c

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->g:Landroid/widget/GridView;

    const v0, 0x7f0900be

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f09086e

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->i:Landroid/widget/RelativeLayout;

    const v0, 0x7f09086f

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f090870

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->k:Landroid/widget/RelativeLayout;

    const v0, 0x7f090871

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->l:Landroid/widget/RelativeLayout;

    const v0, 0x7f090872

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->m:Landroid/widget/RelativeLayout;

    const v0, 0x7f090873

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->n:Landroid/widget/RelativeLayout;

    const v0, 0x7f091089

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f09108a

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f09108b

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f09108c

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f09108d

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f09108e

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f090f42

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MarqueeTextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->u:Lcom/join/mgps/customview/MarqueeTextView;

    const v0, 0x7f090f43

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MarqueeTextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->v:Lcom/join/mgps/customview/MarqueeTextView;

    const v0, 0x7f090f44

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MarqueeTextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->w:Lcom/join/mgps/customview/MarqueeTextView;

    const v0, 0x7f090f45

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MarqueeTextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->x:Lcom/join/mgps/customview/MarqueeTextView;

    const v0, 0x7f090f46

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MarqueeTextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->y:Lcom/join/mgps/customview/MarqueeTextView;

    const v0, 0x7f090f47

    .line 25
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MarqueeTextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->z:Lcom/join/mgps/customview/MarqueeTextView;

    const v0, 0x7f090659

    .line 26
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/NoScrollListView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->A:Lcom/join/mgps/customview/NoScrollListView;

    const v0, 0x7f090122

    .line 27
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f090b14

    .line 28
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->C:Landroid/widget/TextView;

    const v0, 0x7f0909b5

    .line 29
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->D:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 30
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->E:Landroid/widget/LinearLayout;

    const v0, 0x7f090d11

    .line 31
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->F:Landroid/widget/ImageView;

    const v0, 0x7f09098f

    .line 32
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/LoadingImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->G:Lcom/join/mgps/customview/LoadingImageView;

    const v0, 0x7f090f6e

    .line 33
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->H:Landroid/widget/TextView;

    const v0, 0x7f090e21

    .line 34
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->I:Landroid/widget/Button;

    const v0, 0x7f090481

    .line 35
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->J:Landroid/widget/TextView;

    const v0, 0x7f090e25

    .line 36
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->K:Landroid/widget/TextView;

    const v0, 0x7f0909ac

    .line 37
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->n0:Landroid/widget/ImageView;

    const v0, 0x7f0912dd

    .line 38
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/WrapContentGridView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->o0:Lcom/join/mgps/customview/WrapContentGridView;

    const v0, 0x7f090245

    .line 39
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Lcom/join/mgps/activity/ForumSearchHintActivity_$k;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$k;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 43
    new-instance v1, Lcom/join/mgps/activity/ForumSearchHintActivity_$o;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$o;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 45
    new-instance v1, Lcom/join/mgps/activity/ForumSearchHintActivity_$p;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$p;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 46
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$q;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->A:Lcom/join/mgps/customview/NoScrollListView;

    if-eqz p1, :cond_4

    .line 48
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$r;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_5

    .line 50
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$s;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 51
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->afterViews()V

    return-void
.end method

.method p1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$f;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_;->J0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method s1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$u;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method serverConnectionException()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_$v;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;)V

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_;->I0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_;->I0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity_;->I0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity_;->injectExtras_()V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity_$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity_$g;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
