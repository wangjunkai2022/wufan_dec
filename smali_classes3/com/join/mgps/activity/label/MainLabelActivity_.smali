.class public final Lcom/join/mgps/activity/label/MainLabelActivity_;
.super Lcom/join/mgps/activity/label/MainLabelActivity;
.source "MainLabelActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/label/MainLabelActivity_$r;
    }
.end annotation


# static fields
.field public static final J:Ljava/lang/String; = "tag_id"

.field public static final K:Ljava/lang/String; = "tag_name"

.field public static final n0:Ljava/lang/String; = "fromType"

.field public static final o0:Ljava/lang/String; = "fid"

.field public static final p0:Ljava/lang/String; = "postingGroup"


# instance fields
.field private final H:Li3/c;

.field private final I:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity_;->H:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity_;->I:Ljava/util/Map;

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/label/MainLabelActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->S0()V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/label/MainLabelActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity;->X0(Z)V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/label/MainLabelActivity_;Lcom/join/mgps/dto/MainLabelBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity;->Y0(Lcom/join/mgps/dto/MainLabelBean;)V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/label/MainLabelActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->Q0()V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/label/MainLabelActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->U0()V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/label/MainLabelActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->T0()V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/activity/label/MainLabelActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->L0()V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/label/MainLabelActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/activity/label/MainLabelActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity;->F0(I)V

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/label/MainLabelActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->K0()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->b:Lcom/join/mgps/Util/b;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/label/MainLabelActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "tag_id"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->e:I

    :cond_0
    const-string v1, "tag_name"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->f:Ljava/lang/String;

    :cond_1
    const-string v1, "fromType"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->g:I

    :cond_2
    const-string v1, "fid"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->h:I

    :cond_3
    const-string v1, "postingGroup"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->i:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public static j1(Landroid/content/Context;)Lcom/join/mgps/activity/label/MainLabelActivity_$r;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/label/MainLabelActivity_$r;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static k1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/label/MainLabelActivity_$r;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/label/MainLabelActivity_$r;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method F0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/label/MainLabelActivity_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/label/MainLabelActivity_$g;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method K0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/label/MainLabelActivity_$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/label/MainLabelActivity_$h;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method L0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/label/MainLabelActivity_$e;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Q0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/label/MainLabelActivity_$b;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x190

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/label/MainLabelActivity_$p;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method T0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/label/MainLabelActivity_$d;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/label/MainLabelActivity_$c;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method X0(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity_$q;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Y0(Lcom/join/mgps/dto/MainLabelBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity_$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity_$a;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;Lcom/join/mgps/dto/MainLabelBean;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity_;->I:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity_;->H:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c004d

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 4

    const v0, 0x7f0909b0

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b5

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f09019f

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->j:Landroid/widget/Button;

    const v0, 0x7f0910c6

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f0901ab

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->l:Landroid/widget/Button;

    const v0, 0x7f090f19

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/SlidingTabLayout4;

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->m:Lcom/join/mgps/customview/SlidingTabLayout4;

    const v0, 0x7f090dcb

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/noties/scrollable/ScrollableLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->n:Lru/noties/scrollable/ScrollableLayout;

    const v0, 0x7f091280

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->o:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f090d67

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->p:Landroid/widget/RelativeLayout;

    const v0, 0x7f090d7d

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->q:Landroid/widget/RelativeLayout;

    const v0, 0x7f090d48

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->r:Landroid/widget/RelativeLayout;

    const v0, 0x7f0909e4

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MainLabelHeaderView;

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->s:Lcom/join/mgps/customview/MainLabelHeaderView;

    const v0, 0x7f0907ef

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->y:Landroid/widget/ImageView;

    const v0, 0x7f090943

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->E:Landroid/widget/LinearLayout;

    const v0, 0x7f09013e

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090d11

    .line 16
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090e21

    .line 17
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->j:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 19
    new-instance v3, Lcom/join/mgps/activity/label/MainLabelActivity_$i;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/label/MainLabelActivity_$i;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->k:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 21
    new-instance v3, Lcom/join/mgps/activity/label/MainLabelActivity_$j;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/label/MainLabelActivity_$j;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 22
    new-instance v2, Lcom/join/mgps/activity/label/MainLabelActivity_$k;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/label/MainLabelActivity_$k;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->r:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 24
    new-instance v2, Lcom/join/mgps/activity/label/MainLabelActivity_$l;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/label/MainLabelActivity_$l;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->l:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 26
    new-instance v2, Lcom/join/mgps/activity/label/MainLabelActivity_$m;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/label/MainLabelActivity_$m;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v1, :cond_5

    .line 27
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/label/MainLabelActivity_$n;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 28
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/label/MainLabelActivity_$o;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity_;->I:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity_;->H:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity_;->H:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity_;->H:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/label/MainLabelActivity_;->injectExtras_()V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity_$f;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
