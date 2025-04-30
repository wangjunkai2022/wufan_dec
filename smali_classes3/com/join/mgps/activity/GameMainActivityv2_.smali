.class public final Lcom/join/mgps/activity/GameMainActivityv2_;
.super Lcom/join/mgps/activity/GameMainActivityv2;
.source "GameMainActivityv2_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameMainActivityv2_$n;
    }
.end annotation


# static fields
.field public static final F:Ljava/lang/String; = "gameId"


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
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivityv2;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2_;->D:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2_;->E:Ljava/util/Map;

    return-void
.end method

.method static synthetic s(Lcom/join/mgps/activity/GameMainActivityv2_;Lcom/join/mgps/dto/GameMainDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainActivityv2;->r(Lcom/join/mgps/dto/GameMainDataBean;)V

    return-void
.end method

.method static synthetic t(Lcom/join/mgps/activity/GameMainActivityv2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->f()V

    return-void
.end method

.method static synthetic u(Lcom/join/mgps/activity/GameMainActivityv2_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainActivityv2;->o(I)V

    return-void
.end method

.method static synthetic v(Lcom/join/mgps/activity/GameMainActivityv2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->e()V

    return-void
.end method

.method private w(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->u:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivityv2_;->x()V

    return-void
.end method

.method private x()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->t:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static y(Landroid/content/Context;)Lcom/join/mgps/activity/GameMainActivityv2_$n;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivityv2_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$n;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static z(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/GameMainActivityv2_$n;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivityv2_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$n;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method e()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainActivityv2_$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainActivityv2_$d;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method f()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainActivityv2_$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainActivityv2_$b;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2_;->E:Ljava/util/Map;

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

.method o(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/GameMainActivityv2_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GameMainActivityv2_$c;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2_;->D:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameMainActivityv2_;->w(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainActivityv2;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0040

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameMainActivityv2_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 5

    const v0, 0x7f091023

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->a:Landroid/widget/TextView;

    const v0, 0x7f0907e0

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->b:Landroid/widget/ImageView;

    const v0, 0x7f09082d

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    const v0, 0x7f09080a

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->d:Landroid/widget/ImageView;

    const v0, 0x7f0907e7

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09110b

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->f:Landroid/widget/TextView;

    const v0, 0x7f09010d

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->g:Landroid/widget/TextView;

    const v0, 0x7f0907fb

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090068

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09100c

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f090946

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f09008f

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f090d4e

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->m:Landroid/widget/RelativeLayout;

    const v0, 0x7f09083f

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->n:Landroid/widget/RelativeLayout;

    const v0, 0x7f090d65

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->o:Landroid/widget/RelativeLayout;

    const v0, 0x7f091282

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ViewPagerWithADs;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->p:Lcom/join/mgps/customview/ViewPagerWithADs;

    const v0, 0x7f0904fd

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->q:Landroid/widget/LinearLayout;

    const v0, 0x7f0900ad

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->r:Landroid/widget/ViewFlipper;

    const v0, 0x7f091142

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->s:Landroid/widget/TextView;

    const v0, 0x7f09019d

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090d80

    .line 21
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09050f

    .line 22
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090d82

    .line 23
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 24
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->b:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 25
    new-instance v4, Lcom/join/mgps/activity/GameMainActivityv2_$e;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$e;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 26
    new-instance v3, Lcom/join/mgps/activity/GameMainActivityv2_$f;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$f;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 27
    new-instance v0, Lcom/join/mgps/activity/GameMainActivityv2_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$g;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v2, :cond_3

    .line 28
    new-instance v0, Lcom/join/mgps/activity/GameMainActivityv2_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$h;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 30
    new-instance v1, Lcom/join/mgps/activity/GameMainActivityv2_$i;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$i;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->k:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 32
    new-instance v1, Lcom/join/mgps/activity/GameMainActivityv2_$j;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$j;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->m:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    .line 34
    new-instance v1, Lcom/join/mgps/activity/GameMainActivityv2_$k;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$k;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 35
    new-instance v0, Lcom/join/mgps/activity/GameMainActivityv2_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$l;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    .line 37
    new-instance v0, Lcom/join/mgps/activity/GameMainActivityv2_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivityv2_$m;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->b()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2_;->E:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method r(Lcom/join/mgps/dto/GameMainDataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivityv2_$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameMainActivityv2_$a;-><init>(Lcom/join/mgps/activity/GameMainActivityv2_;Lcom/join/mgps/dto/GameMainDataBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2_;->D:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2_;->D:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2_;->D:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivityv2_;->x()V

    return-void
.end method
