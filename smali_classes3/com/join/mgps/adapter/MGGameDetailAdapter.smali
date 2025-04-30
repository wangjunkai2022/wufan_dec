.class public Lcom/join/mgps/adapter/MGGameDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "MGGameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$u1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$e1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$n1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$g1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field c:Ljava/lang/String;

.field private final d:Landroid/widget/RelativeLayout;

.field private e:Landroid/content/Context;

.field private f:Lcom/join/mgps/dto/DetailResultBeanV3;

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/os/Handler;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/widget/LinearLayout$LayoutParams;

.field private t:Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;

.field private u:Z

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field x:Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;

.field y:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/dto/DetailResultBeanV3;Landroid/os/Handler;Landroid/widget/RelativeLayout;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/join/mgps/dto/DetailResultBeanV3;",
            "Landroid/os/Handler;",
            "Landroid/widget/RelativeLayout;",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->g:Z

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->h:Ljava/util/List;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i:Z

    .line 6
    iput v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->j:I

    .line 7
    iput v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->k:I

    .line 8
    iput v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->l:I

    .line 9
    iput v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->m:I

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->q:Ljava/util/List;

    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->u:Z

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->x:Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->y:J

    .line 14
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 16
    iput-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->p:Landroid/os/Handler;

    .line 17
    iput-object p4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->d:Landroid/widget/RelativeLayout;

    .line 18
    iput-object p5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->r:Ljava/util/List;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f08044a

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->n:Landroid/graphics/drawable/Drawable;

    .line 20
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f08044c

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->o:Landroid/graphics/drawable/Drawable;

    .line 21
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p3

    iget-object p4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p4

    invoke-virtual {p1, v1, v1, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->o:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p3

    iget-object p4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p4

    invoke-virtual {p1, v1, v1, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBackground_color()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {p2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tpl_two_position()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    .line 25
    new-instance p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;

    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->t:Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;

    return-void
.end method

.method private A(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;

    .line 2
    iget-object p3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;->a:Lcom/join/mgps/dto/DetialIntentBean;

    const/16 v0, 0x8

    if-nez p2, :cond_1

    .line 3
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0460

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f091023

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;->b:Landroid/widget/TextView;

    const v2, 0x7f0909c1

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;->c:Landroid/widget/LinearLayout;

    const v2, 0x7f090133

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 8
    iget v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v2, :cond_0

    .line 9
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;->b:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f090a8e

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, -0xa1a1a2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0908c8

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;

    move-object v4, v1

    move-object v1, p2

    move-object p2, v4

    :goto_0
    if-nez p3, :cond_2

    .line 14
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;->c:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    :goto_1
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;->b:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;->c:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$t;

    invoke-direct {p2, p0, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$t;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/DetialIntentBean;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private B(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0463

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0907a0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0907a2

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->b:Landroid/view/View;

    const v1, 0x7f090a2f

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f090a8a

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->d:Landroid/widget/ImageView;

    const v1, 0x7f090133

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 8
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 9
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;

    move-object v6, v0

    move-object v0, p2

    move-object p2, v6

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$p;

    .line 12
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$p;->a:Ljava/util/List;

    const/16 v1, 0x8

    if-eqz p1, :cond_4

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 14
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->a:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->d:Landroid/widget/ImageView;

    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;

    invoke-direct {v4, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v2, :cond_1

    .line 18
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->b:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :cond_1
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 20
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x24

    .line 21
    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v2, 0x13

    .line 22
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 23
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_5

    .line 24
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GamePromptBean;

    if-eqz v2, :cond_3

    .line 25
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamePromptBean;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamePromptBean;->getId()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 28
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, p3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 29
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, p3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    const/16 v2, 0xa

    .line 30
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 31
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 32
    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v2, -0x7f7f80

    .line 33
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 35
    :cond_4
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 36
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    :cond_5
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 38
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->d:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_6

    .line 39
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6
    return-object v0
.end method

.method private C(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$n1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$n1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 3
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c0142

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0907a8

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$n1;->a:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$n1;

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    .line 7
    :goto_0
    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v0, :cond_1

    .line 8
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$n1;->a:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const-string v0, "1"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$n1;->a:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$n1;->a:Landroid/widget/TextView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_1
    return-object p3
.end method

.method private D(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/16 p3, 0x8

    if-nez p2, :cond_1

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0464

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090ce1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/customview/MyGridView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;->b:Lcom/join/mgps/customview/MyGridView;

    const v1, 0x7f090877

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;->a:Landroid/widget/LinearLayout;

    .line 5
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 6
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v1, :cond_0

    const v1, 0x7f0908c8

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;

    move-object v3, v0

    move-object v0, p2

    move-object p2, v3

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$q;

    .line 11
    iget v1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$q;->a:I

    if-nez v1, :cond_2

    .line 12
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 13
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    new-instance p3, Lcom/join/mgps/adapter/d1;

    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->q:Ljava/util/List;

    invoke-direct {p3, v1, v2}, Lcom/join/mgps/adapter/d1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 15
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;->b:Lcom/join/mgps/customview/MyGridView;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 16
    iget-object p2, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$q;->b:Ljava/util/List;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 17
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->q:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 18
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->q:Ljava/util/List;

    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$q;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    invoke-virtual {p3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 20
    :cond_3
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method private E(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0459

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090bd9

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0902bf

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0902c1

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->b:Landroid/view/View;

    const v0, 0x7f0902c0

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->c:Landroid/widget/TextView;

    const v0, 0x7f0902c2

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->d:Landroid/widget/TextView;

    const v0, 0x7f0908be

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->e:Landroid/view/View;

    const v0, 0x7f090169

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->f:Landroid/view/View;

    .line 11
    iget-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->g:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 12
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;

    .line 14
    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v0, :cond_1

    .line 15
    iget-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->b:Landroid/view/View;

    const v1, -0xcacacb

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 16
    iget-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    if-nez p1, :cond_2

    return-object p2

    .line 17
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->b:Lcom/join/mgps/dto/InformationCommentBean;

    if-nez v0, :cond_3

    return-object p2

    .line 18
    :cond_3
    iget-boolean v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->d:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_4

    .line 19
    iget-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 20
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :goto_1
    iget-boolean p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->g:Z

    if-nez p1, :cond_5

    .line 22
    iget-object p1, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object p1, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 24
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->e:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p1, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->f:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :goto_2
    iget-object p1, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method private F(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;

    .line 2
    iget-object p3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;->a:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0242

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    const v1, 0x7f090a26

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->a:Landroid/widget/TextView;

    const v1, 0x7f090a33

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->b:Landroid/widget/TextView;

    const v1, 0x7f090327

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->c:Landroid/widget/TextView;

    const v1, 0x7f090328

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->d:Landroid/widget/TextView;

    const v1, 0x7f090133

    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 10
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v1, :cond_0

    const v1, 0x7f0908be

    .line 11
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;

    .line 14
    :goto_0
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    const-string v2, "#3ca4fd"

    if-nez v1, :cond_2

    .line 15
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v2, v4}, Lcom/join/mgps/Util/h2;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->b:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :goto_1
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget v1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 20
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->b:Landroid/widget/TextView;

    const-string v2, "\u5f00\u670d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 21
    :cond_3
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->b:Landroid/widget/TextView;

    const-string v2, "\u5408\u670d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->a:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p3, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->c:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;->c:J

    invoke-static {v1, v2}, Lcom/join/mgps/Util/x;->k(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-wide v1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;->c:J

    invoke-static {v1, v2}, Lcom/join/mgps/Util/x;->h(J)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p3

    const-string v1, "\u4e0a\u5348"

    if-eqz p3, :cond_5

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string p3, "\u70b9"

    const/16 v2, 0xc

    if-le p1, v2, :cond_4

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0b\u5348"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 28
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    :cond_5
    :goto_3
    iget-object p1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private G(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string p3, ""

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;

    .line 2
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;->a:Lcom/join/mgps/dto/GameDetialStrategyItem;

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0241

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Landroid/view/View;)V

    const v1, 0x7f090c7b

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->c:Landroid/widget/TextView;

    const v1, 0x7f090c98

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->d:Landroid/widget/TextView;

    const v1, 0x7f09124b

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->e:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->e:Landroid/widget/TextView;

    const v1, 0x7f090517

    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    const v1, 0x7f09127d

    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 11
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v1, :cond_1

    .line 12
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->c:Landroid/widget/TextView;

    const v2, -0xa1a1a2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0908be

    .line 15
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;

    .line 17
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getCommit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getView()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p3, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getAdd_time()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/c;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p3, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->b:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->R(Landroid/widget/RelativeLayout;Lcom/join/mgps/dto/GameDetialStrategyItem;)V

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getId()I

    move-result p1

    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a0(Landroid/view/View;I)V

    .line 23
    iget-object p3, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a0(Landroid/view/View;I)V

    .line 24
    iget-object p3, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a0(Landroid/view/View;I)V

    .line 25
    iget-object p3, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a0(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private H(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$n;

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c01f1

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$e1;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$e1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Landroid/view/View;)V

    const v0, 0x7f090623

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    const v0, 0x7f0908be

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$e1;

    :goto_0
    if-nez p3, :cond_1

    return-object p2

    .line 7
    :cond_1
    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->m(Lcom/join/mgps/adapter/MGGameDetailAdapter$e1;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$n;)V

    return-object p2
.end method

.method private I(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/16 p3, 0x8

    if-nez p2, :cond_1

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0461

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090761

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f090764

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->c:Landroid/widget/TextView;

    const v1, 0x7f090c7b

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->d:Landroid/widget/TextView;

    const v1, 0x7f090a33

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    const v1, 0x7f09087d

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->a:Landroid/widget/LinearLayout;

    const v2, 0x7f090763

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->e:Landroid/widget/LinearLayout;

    const v2, 0x7f090886

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->f:Landroid/widget/LinearLayout;

    const v2, 0x7f0908c8

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->g:Landroid/view/View;

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 12
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v1, :cond_0

    .line 13
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->c:Landroid/widget/TextView;

    const v2, -0x717172

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->d:Landroid/widget/TextView;

    const v2, -0xa1a1a2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->g:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;

    move-object v7, v0

    move-object v0, p2

    move-object p2, v7

    .line 18
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;

    .line 19
    iget-object v1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;->a:Lcom/join/mgps/dto/GameDetialStrategyItem;

    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 21
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialBookTag;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetialBookTag;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetialBookTag;->getColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "#8dbbec"

    .line 25
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/GameDetialBookTag;->setColor(Ljava/lang/String;)V

    .line 26
    :cond_2
    iget v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v2, :cond_3

    .line 27
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/GameDetialBookTag;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDetialBookTag;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/join/mgps/Util/h2;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialBookTag;->getColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 29
    :cond_3
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDetialBookTag;->getColor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    :cond_4
    :goto_1
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 31
    :cond_5
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    :cond_6
    :goto_2
    iget-boolean p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;->b:Z

    if-eqz p1, :cond_7

    .line 33
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 34
    :cond_7
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    :goto_3
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getAdd_time()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/c;->b(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getSubject()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->a:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z;

    invoke-direct {p2, p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$z;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/GameDetialStrategyItem;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private K(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c0467

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0900d9

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0900e1

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->b:Landroid/widget/TextView;

    const v0, 0x7f09100c

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0900d8

    .line 6
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->d:Landroid/widget/TextView;

    const v0, 0x7f0900d5

    .line 7
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->f:Landroid/widget/TextView;

    const v0, 0x7f0900ea

    .line 8
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->e:Landroid/widget/TextView;

    const v0, 0x7f090560

    .line 9
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09101d

    .line 10
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f09101f

    .line 11
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f09101c

    .line 12
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->h:Landroid/widget/Button;

    const v0, 0x7f090551

    .line 13
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    const v0, 0x7f091036

    .line 14
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f090f4f

    .line 15
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->m:Landroid/widget/TextView;

    const v0, 0x7f090dc6

    .line 16
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->n:Landroid/widget/HorizontalScrollView;

    .line 17
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;

    move-object v11, p3

    move-object p3, p2

    move-object p2, v11

    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;

    .line 20
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$e0;

    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$e0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->h:Landroid/widget/Button;

    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f0;

    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$f0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->l:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    .line 23
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 24
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->h:Ljava/util/List;

    iget-object v5, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->g:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v0, v5, v6}, Lcom/join/mgps/Util/UtilsMy;->s(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 25
    :cond_1
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 26
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->l:Landroid/widget/LinearLayout;

    const v5, 0xffffff

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 27
    :cond_2
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 29
    :goto_1
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    const v5, 0x7f080a62

    .line 30
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 31
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    iget-object v5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 32
    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    const-string v5, ""

    const v6, 0x7f080355

    const v7, 0x7f0800d6

    if-nez v0, :cond_4

    .line 33
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v8, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->i:Ljava/lang/String;

    invoke-static {v0, v7, v8}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 36
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 38
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 39
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 40
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 41
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 42
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->n:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto/16 :goto_2

    .line 43
    :cond_3
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->n:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_2

    .line 44
    :cond_4
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 47
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->l:I

    if-ne v0, v2, :cond_5

    .line 48
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 50
    iget-object v8, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v8}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v8

    iget-object v9, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/join/android/app/common/utils/j;->h(Landroid/content/Context;)F

    move-result v8

    const/high16 v9, 0x437d0000    # 253.0f

    mul-float v8, v8, v9

    float-to-int v8, v8

    .line 51
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "sssss"

    invoke-static {v10, v9}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 53
    iget-object v8, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 56
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 57
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 58
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 59
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->i:Ljava/lang/String;

    invoke-static {v0, v7, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    goto :goto_2

    .line 60
    :cond_5
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 61
    :goto_2
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->j:I

    if-ne v0, v2, :cond_6

    .line 62
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    const-string v3, "\u5df2\u6536\u85cf"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 63
    :cond_6
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    const-string v3, "\u6536\u85cf"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :goto_3
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->k:I

    if-ne v0, v2, :cond_7

    .line 65
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->h:Landroid/widget/Button;

    const-string v3, "\u5df2\u9884\u7ea6"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->h:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 67
    :cond_7
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->h:Landroid/widget/Button;

    const-string v3, "\u9884\u7ea6"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_4
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 69
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->b:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 70
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getScore()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_count()I

    move-result v4

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSize()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v6

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTag_info()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->c:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static/range {v3 .. v9}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 72
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->d:I

    if-lez v0, :cond_9

    goto :goto_5

    .line 73
    :cond_9
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->e:I

    .line 74
    :goto_5
    iget v3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->l:I

    if-ne v3, v2, :cond_b

    .line 75
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_count()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 77
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->d:Landroid/widget/TextView;

    const-string v1, "0\u4eba\u9884\u7ea6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 78
    :cond_a
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u4eba\u9884\u7ea6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 79
    :cond_b
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->c:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x186a0

    const/16 v2, 0x2710

    if-lt v0, v1, :cond_c

    .line 80
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e07\u70ed\u5ea6"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_c
    const-string v1, "\u70ed\u5ea6"

    if-lt v0, v2, :cond_d

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v3, v0

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "\u4e07"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 83
    :cond_d
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_6
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->f:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->g:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 86
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->e:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "M"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    return-object p3
.end method

.method private L(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c0468

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0905fc

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0905fd

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->b:Landroid/widget/TextView;

    const v0, 0x7f090111

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->c:Landroid/widget/ImageView;

    const v0, 0x7f0908c4

    .line 6
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->d:Landroid/view/View;

    .line 7
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$t;

    .line 10
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$t;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 11
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->b:Landroid/widget/TextView;

    const-string v1, "\u66f4\u65b0\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->a:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$t;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->a:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-object p3
.end method

.method private M(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c0469

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090dc1

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;->a:Lit/sephiroth/android/library/widget/HListView;

    const v0, 0x7f090133

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 5
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 6
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 10
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 11
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 12
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->h:Ljava/util/List;

    iget-object v3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i:Z

    goto :goto_1

    .line 15
    :cond_2
    iput-boolean v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i:Z

    .line 16
    :goto_1
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 17
    :goto_2
    iget-object v3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 18
    iget-object v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->h:Ljava/util/List;

    iget-object v4, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 20
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 21
    :cond_4
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 22
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->c:I

    .line 23
    new-instance v1, Lcom/join/mgps/adapter/w0;

    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->h:Ljava/util/List;

    iget-boolean v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i:Z

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/join/mgps/adapter/w0;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 24
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$d0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$d0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;)V

    invoke-virtual {p2, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    :cond_5
    :goto_3
    return-object p3
.end method

.method private N(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c039f

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$v;

    .line 6
    iget-boolean v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$v;->a:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$v;->b:Lcom/join/mgps/dto/GameVoucherBean;

    invoke-virtual {p3, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->a(Lcom/join/mgps/dto/GameVoucherBean;)V

    .line 8
    iget-object p1, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->e:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->e:Landroid/widget/LinearLayout;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-object p2
.end method

.method private O(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/16 p3, 0x8

    if-nez p2, :cond_1

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c046a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090679

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->a:Landroid/widget/TextView;

    const v1, 0x7f09067a

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->b:Landroid/widget/TextView;

    const v1, 0x7f09067b

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->d:Landroid/widget/TextView;

    const v1, 0x7f090f4d

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->c:Landroid/widget/TextView;

    const v1, 0x7f090133

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 8
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 9
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v1, :cond_0

    const v1, 0x7f0908c6

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$w;

    .line 14
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->a:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$w;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$w;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 16
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->b:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$w;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->d:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$w;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->d:Landroid/widget/TextView;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 22
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->b:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->v:Landroid/widget/TextView;

    .line 23
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->d:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->w:Landroid/widget/TextView;

    :cond_2
    return-object v0
.end method

.method private Q(Landroid/view/View;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;ZI)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 1
    iget-object v10, v9, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->a:Ljava/lang/String;

    .line 2
    iget v11, v9, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->e:I

    .line 3
    iget-boolean v12, v9, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->f:Z

    .line 4
    iget-object v13, v9, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->b:Lcom/join/mgps/dto/InformationCommentBean;

    .line 5
    invoke-virtual {v13}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    move-result-object v14

    .line 6
    move-object/from16 v15, p1

    check-cast v15, Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v0, v7, 0x1

    if-ge v5, v0, :cond_7

    const/4 v0, 0x3

    if-le v5, v0, :cond_0

    if-eqz p3, :cond_0

    move/from16 v16, v11

    move/from16 v17, v12

    const/4 v4, 0x0

    move v11, v5

    move v12, v7

    goto/16 :goto_4

    .line 8
    :cond_0
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0107

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 9
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0902c0

    .line 11
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0902c2

    .line 12
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    if-ne v5, v7, :cond_1

    if-gt v7, v0, :cond_2

    :cond_1
    if-lez v11, :cond_3

    if-eqz v12, :cond_3

    if-ne v5, v7, :cond_3

    .line 13
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u6536\u8d77"

    .line 15
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;

    move-object v1, v0

    move-object/from16 v2, p0

    move v3, v11

    move-object v9, v4

    move/from16 v4, p4

    move/from16 v16, v11

    move v11, v5

    move-object v5, v10

    move/from16 v17, v12

    const/4 v12, 0x0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;IILjava/lang/String;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v12, v7

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_3
    move-object v9, v4

    move/from16 v16, v11

    move/from16 v17, v12

    const/4 v12, 0x0

    move v11, v5

    if-ne v11, v0, :cond_4

    if-eqz p3, :cond_4

    if-le v7, v0, :cond_4

    .line 17
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110091

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, v7, -0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$m0;

    move-object v1, v0

    move-object/from16 v2, p0

    move v3, v7

    move-object v4, v13

    move-object v5, v10

    move-object/from16 v6, p2

    move v12, v7

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/MGGameDetailAdapter$m0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;ILcom/join/mgps/dto/InformationCommentBean;Ljava/lang/String;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;I)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    move v12, v7

    if-ge v11, v12, :cond_6

    if-lt v11, v0, :cond_5

    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/InformationCommentBean$Sub;

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getComment_id()Ljava/lang/String;

    .line 26
    :try_start_0
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-direct {v8, v9, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->Z(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    :goto_2
    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v4, 0x0

    :goto_4
    add-int/lit8 v5, v11, 0x1

    move-object/from16 v9, p2

    move v7, v12

    move/from16 v11, v16

    move/from16 v12, v17

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private R(Landroid/widget/RelativeLayout;Lcom/join/mgps/dto/GameDetialStrategyItem;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getPic_list()[Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->s:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->J()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->s:Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getPic_list()[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x3

    new-array v8, v7, [I

    .line 5
    fill-array-data v8, :array_0

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_2

    .line 6
    aget v1, v8, v9

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getPic_list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v9, v1, :cond_1

    const/16 v1, 0x8

    .line 8
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getPic_list()[Ljava/lang/String;

    move-result-object v1

    aget-object v4, v1, v9

    add-int/lit8 v5, v9, 0x0

    move-object v1, p0

    move v3, v9

    move-object v6, v0

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->W(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;I[Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x7f090745
        0x7f090746
        0x7f090747
    .end array-data
.end method

.method private X(Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v0, :cond_0

    const/high16 v0, 0x4c000000    # 3.3554432E7f

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private Z(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$j0;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$j0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Lcom/join/mgps/dto/DetailResultBeanV3;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    return-object p0
.end method

.method private b0(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$w;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->r:Ljava/util/List;

    return-object p0
.end method

.method private c0(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$i0;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$i0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/InformationCommentBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic d(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->p:Landroid/os/Handler;

    return-object p0
.end method

.method private d0(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 2
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->t:Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;

    return-object p0
.end method

.method private e0(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$k0;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$k0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic f(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->u:Z

    return p0
.end method

.method static synthetic g(Lcom/join/mgps/adapter/MGGameDetailAdapter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->u:Z

    return p1
.end method

.method static synthetic h(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method private m(Lcom/join/mgps/adapter/MGGameDetailAdapter$e1;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$n;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$e1;->a:Landroid/widget/LinearLayout;

    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$n;->a:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->S(Landroid/view/ViewGroup;Ljava/util/List;)V

    return-void
.end method

.method private n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_1

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c0465

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090e51

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;->b:Landroid/widget/TextView;

    const v0, 0x7f0902a2

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;->a:Landroid/widget/RelativeLayout;

    .line 5
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 6
    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;->b:Landroid/widget/TextView;

    const v1, 0x7f080330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 8
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;->b:Landroid/widget/TextView;

    const v1, -0x575758

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$b;

    .line 12
    iget-boolean v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$b;->a:Z

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 15
    :goto_1
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u67e5\u770b\u5168\u90e8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$b;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u6761\u8bc4\u8bba"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;->b:Landroid/widget/TextView;

    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$u;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$u;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method

.method private o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_1

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c0466

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0902c6

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->c:Landroid/widget/TextView;

    const v0, 0x7f0902c5

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->d:Landroid/widget/TextView;

    const v0, 0x7f090876

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0902a3

    .line 6
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->b:Landroid/widget/RelativeLayout;

    .line 7
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 8
    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v0, :cond_0

    const v0, 0x7f0902cb

    .line 9
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->d:Landroid/widget/TextView;

    const v1, -0x8b8b8c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->c:Landroid/widget/TextView;

    const v1, -0x575758

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->c:Landroid/widget/TextView;

    const v1, 0x7f080330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 13
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;

    .line 16
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;->a:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;->b:I

    if-nez v0, :cond_2

    .line 17
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 18
    :cond_2
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    :goto_1
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;->c:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 20
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 21
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->c:Landroid/widget/TextView;

    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 23
    :cond_3
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    return-object p3
.end method

.method private p(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->E(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_1

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c0234

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0909eb

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f091245

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090bdf

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->c:Landroid/widget/ImageView;

    const v0, 0x7f091248

    .line 6
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->d:Landroid/widget/TextView;

    const v0, 0x7f090ff4

    .line 7
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->e:Landroid/widget/TextView;

    const v0, 0x7f0902eb

    .line 8
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->f:Landroid/widget/TextView;

    const v0, 0x7f090be0

    .line 9
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->g:Landroid/widget/TextView;

    const v0, 0x7f0908b8

    .line 10
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/VipView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->h:Lcom/join/mgps/customview/VipView;

    const v0, 0x7f0908be

    .line 11
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->i:Landroid/view/View;

    .line 12
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 13
    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->i:Landroid/view/View;

    const v1, -0xcacacb

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->f:Landroid/widget/TextView;

    const v1, -0x9e9e9f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->d:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->e:Landroid/widget/TextView;

    const v1, -0x565657

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->g:Landroid/widget/TextView;

    const v1, -0x5f5f60

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    .line 21
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;

    .line 22
    iget-boolean v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->b:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 23
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->i:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 24
    :cond_2
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->i:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :goto_1
    iget-boolean v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->a:Z

    if-eqz v1, :cond_5

    .line 26
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 27
    iget-object v0, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->d:Lcom/join/mgps/dto/CommentBaseBean;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getAdd_times()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 29
    iget-object v4, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->e:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 33
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->c:Landroid/widget/ImageView;

    const v4, 0x7f08075e

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 34
    :cond_3
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->c:Landroid/widget/ImageView;

    const v4, 0x7f080c9c

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    :goto_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getHead_portrait()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getHead_portrait()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v1, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->E2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 37
    :cond_4
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e0(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 38
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->c:Landroid/widget/ImageView;

    iget-object v4, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->g:Landroid/widget/TextView;

    invoke-direct {p0, v1, v4, v0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->d0(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 39
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->f:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b0(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 40
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getUser_name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->h:Lcom/join/mgps/customview/VipView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    move-result v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/view/View;

    .line 42
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v0, p1, v3

    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->d:Landroid/widget/TextView;

    aput-object v0, p1, v2

    const/4 v0, 0x2

    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->e:Landroid/widget/TextView;

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/join/mgps/Util/i0;->S0([Landroid/view/View;)V

    new-array p1, v2, [Landroid/view/View;

    .line 43
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->h:Lcom/join/mgps/customview/VipView;

    aput-object p2, p1, v3

    invoke-static {p1}, Lcom/join/mgps/Util/i0;->U0([Landroid/view/View;)V

    goto :goto_3

    .line 44
    :cond_5
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_3
    return-object p3
.end method

.method private r(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$d;

    .line 2
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$d;->a:Ljava/util/List;

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0288

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4
    new-instance p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Landroid/view/View;)V

    const v0, 0x7f091060

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    .line 8
    :goto_0
    invoke-virtual {p3, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->c(Ljava/util/List;)V

    return-object p2
.end method

.method private s(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;

    .line 2
    iget-object v2, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFast_entry_switch()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3
    iput-object v3, v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;->e:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v2, v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;->e:Ljava/util/List;

    .line 5
    iget-wide v4, v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;->b:J

    .line 6
    iget-object v6, v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;->c:Ljava/lang/String;

    .line 7
    iget-object v1, v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;->d:Ljava/lang/String;

    const/4 v7, 0x0

    if-nez p2, :cond_2

    .line 8
    iget-object v8, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0c01d7

    invoke-virtual {v8, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 9
    new-instance v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;

    invoke-direct {v8, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    const v9, 0x7f090121

    .line 10
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->a:Landroid/widget/LinearLayout;

    const v9, 0x7f0904f9

    .line 11
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v9, 0x7f090c9e

    .line 12
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v9, 0x7f0912cf

    .line 13
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v9, 0x7f0912d1

    .line 14
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->b:Landroid/widget/LinearLayout;

    const v9, 0x7f090c9f

    .line 15
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    const v9, 0x7f09050b

    .line 16
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->d:Landroid/widget/LinearLayout;

    const v9, 0x7f09016c

    .line 17
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->h:Landroid/widget/LinearLayout;

    const v9, 0x7f091041

    .line 18
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->e:Landroid/widget/TextView;

    const v9, 0x7f090500

    .line 19
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->l:Landroid/widget/TextView;

    const v9, 0x7f090ca0

    .line 20
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->m:Landroid/widget/TextView;

    const v9, 0x7f0912d0

    .line 21
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->n:Landroid/widget/TextView;

    const v9, 0x7f090483

    .line 22
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->f:Landroid/widget/TextView;

    const v9, 0x7f090482

    .line 23
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 24
    iget v9, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v9, :cond_1

    .line 25
    iget-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->b:Landroid/widget/LinearLayout;

    const v10, 0x7f080328

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 26
    iget-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 27
    iget-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 28
    iget-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v9, 0x7f09100f

    .line 29
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f0909f8

    .line 30
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 31
    :cond_1
    invoke-virtual {v3, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;

    move-object/from16 v3, p2

    :goto_0
    const-wide/16 v9, 0x0

    const-string v11, "\u73a9\u5bb6\u8ba8\u8bba\u533a"

    const v12, 0x7f080353

    const-string v13, ""

    const/4 v14, 0x4

    const/16 v15, 0x8

    cmp-long v16, v4, v9

    if-eqz v16, :cond_9

    .line 33
    iget-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->e:Landroid/widget/TextView;

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->d:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/join/mgps/adapter/MGGameDetailAdapter$r0;

    invoke-direct {v10, v0, v4, v5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$r0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;J)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 36
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$s0;

    invoke-direct {v5, v0, v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter$s0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 38
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->b:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$t0;

    invoke-direct {v5, v0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$t0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v2, :cond_3

    .line 39
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 40
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 41
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 43
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->a:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$a;

    invoke-direct {v4, v0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$a;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 44
    :cond_3
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 45
    :cond_4
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v2, :cond_5

    .line 46
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 47
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 48
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 50
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->b:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$b;

    invoke-direct {v4, v0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$b;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 51
    :cond_5
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 53
    :cond_6
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 55
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$c;

    invoke-direct {v5, v0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v1, v12, v13}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 57
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_7

    .line 58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 59
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 60
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 62
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->b:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$d;

    invoke-direct {v4, v0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$d;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 63
    :cond_7
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 64
    :cond_8
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v2, :cond_10

    .line 65
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 66
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 67
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 69
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$e;

    invoke-direct {v4, v0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$e;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 70
    :cond_9
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 73
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->d:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$f;

    invoke-direct {v5, v0, v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter$f;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v5, 0x7f080342

    invoke-static {v4, v5, v13}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 75
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->l:Landroid/widget/TextView;

    const-string v5, "\u5b98\u65b9\u5ba2\u670d"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 77
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$g;

    invoke-direct {v5, v0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$g;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v1, v12, v13}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 79
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_a

    .line 80
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 81
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 82
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 84
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->b:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$h;

    invoke-direct {v4, v0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$h;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 85
    :cond_a
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 86
    :cond_b
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v2, :cond_c

    .line 87
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 88
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 89
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 91
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$i;

    invoke-direct {v4, v0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$i;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 92
    :cond_c
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 93
    :cond_d
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 95
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->d:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$j;

    invoke-direct {v5, v0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$j;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v1, v12, v13}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 97
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_e

    .line 98
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 99
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 100
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 102
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$l;

    invoke-direct {v4, v0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$l;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 103
    :cond_e
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 104
    :cond_f
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v2, :cond_10

    .line 105
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 106
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 107
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 109
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->d:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$m;

    invoke-direct {v4, v0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$m;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    :goto_1
    return-object v3
.end method

.method private t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c045d

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0905fc

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0905fd

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->c:Landroid/widget/TextView;

    const v0, 0x7f0905fb

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090111

    .line 6
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->d:Landroid/widget/ImageView;

    .line 7
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 8
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$f;

    .line 11
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$f;->b:Ljava/util/List;

    .line 12
    iget p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$f;->a:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 13
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 15
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->c:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/RecommendAdInfoData;

    invoke-virtual {v2}, Lcom/join/mgps/dto/RecommendAdInfoData;->getMain()Lcom/join/mgps/dto/RecommendAdInfoMainBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/RecommendAdInfoMainBean;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecommendAdInfoData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoData;->getMain()Lcom/join/mgps/dto/RecommendAdInfoMainBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecommendAdInfoData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoData;->getMain()Lcom/join/mgps/dto/RecommendAdInfoMainBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoMainBean;->getPic_remote()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 19
    :goto_1
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v1, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 20
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->a:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b0;

    invoke-direct {p2, p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$b0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 21
    :cond_3
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->a:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    return-object p3
.end method

.method private u(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$g1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$g1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c045e

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090876

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$g1;->a:Landroid/widget/LinearLayout;

    .line 4
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 5
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$g1;

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$g;

    .line 8
    iget-boolean p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$g;->a:Z

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$g1;->a:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$g1;->a:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-object p3
.end method

.method private v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c045f

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090877

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0905e5

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0905eb

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->c:Landroid/widget/TextView;

    const v0, 0x7f0905f3

    .line 6
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->d:Landroid/widget/TextView;

    const v0, 0x7f0905e2

    .line 7
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->e:Landroid/widget/TextView;

    const v0, 0x7f0905e1

    .line 8
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->f:Landroid/widget/TextView;

    const v0, 0x7f0905d9

    .line 9
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->h:Landroid/widget/TextView;

    const v0, 0x7f0905f4

    .line 10
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->i:Landroid/widget/TextView;

    const v0, 0x7f090d37

    .line 11
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->g:Landroid/widget/RelativeLayout;

    .line 12
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$h;

    .line 16
    iget-boolean v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$h;->a:Z

    if-eqz v0, :cond_2

    .line 17
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$h;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 18
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$r;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$r;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 21
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u793c\u5305\u5185\u5bb9:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_content()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_count()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    move-result v0

    const-string v1, "\uff09"

    const-string v2, "/"

    const-string v3, "\uff08\u5269\u4f59:"

    if-nez v0, :cond_1

    .line 25
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->h:Landroid/widget/TextView;

    const-string v4, "\u9886\u53d6"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->i:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_surplus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_count()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 27
    :cond_1
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->d:Landroid/widget/TextView;

    const-string v4, "\u8be5\u793c\u5305\u5df2\u9886\u53d6"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->h:Landroid/widget/TextView;

    const-string v4, "\u67e5\u770b"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    :goto_1
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->i:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_surplus()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_count()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->g:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$s;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$s;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 31
    :cond_2
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->a:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-object p3
.end method

.method private w(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    new-instance p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;

    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c045d

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0905fc

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->a:Landroid/widget/RelativeLayout;

    const p3, 0x7f0905fd

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->c:Landroid/widget/TextView;

    const p3, 0x7f0905fb

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p3, 0x7f090111

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->d:Landroid/widget/ImageView;

    .line 7
    iget-object p3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;

    .line 10
    :goto_0
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->a:Landroid/widget/RelativeLayout;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-object p2
.end method

.method private x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 3
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c013b

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090762

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0905e8

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0908be

    .line 6
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->c:Landroid/widget/TextView;

    const v0, 0x7f0909c1

    .line 7
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0909c2

    .line 8
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0905e5

    .line 9
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0905d8

    .line 10
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->g:Landroid/widget/TextView;

    const v0, 0x7f0905e9

    .line 11
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->h:Landroid/widget/TextView;

    const v0, 0x7f090a34

    .line 12
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->i:Landroid/widget/TextView;

    const v0, 0x7f090a35

    .line 13
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->j:Landroid/widget/TextView;

    const v0, 0x7f090ff5

    .line 14
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->k:Landroid/widget/TextView;

    const v0, 0x7f090ff6

    .line 15
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->l:Landroid/widget/TextView;

    const v0, 0x7f090a27

    .line 16
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->m:Landroid/widget/TextView;

    const v0, 0x7f090a28

    .line 17
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->n:Landroid/widget/TextView;

    const v0, 0x7f090135

    .line 18
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f090136

    .line 19
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->p:Landroid/widget/LinearLayout;

    const v0, 0x7f090134

    .line 20
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->q:Landroid/widget/LinearLayout;

    .line 21
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;

    move-object v9, p3

    move-object p3, p2

    move-object p2, v9

    .line 23
    :goto_0
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;->a:Ljava/util/List;

    .line 24
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;->b:Ljava/util/List;

    .line 25
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->d:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k;

    invoke-direct {v2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$k;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->e:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v;

    invoke-direct {v2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$v;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->q:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$g0;

    invoke-direct {v2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$g0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->o:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$o0;

    invoke-direct {v2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$o0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->p:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$p0;

    invoke-direct {v2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$p0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 31
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 32
    iget-object v4, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 33
    iget-object v4, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->h:Landroid/widget/TextView;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {v3}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    move-result v0

    if-nez v0, :cond_2

    .line 35
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->g:Landroid/widget/TextView;

    const-string v4, "\u9886\u53d6"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 36
    :cond_2
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->g:Landroid/widget/TextView;

    const-string v4, "\u67e5\u770b"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :goto_1
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->g:Landroid/widget/TextView;

    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$q0;

    invoke-direct {v4, p0, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$q0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 38
    :cond_3
    :goto_2
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 39
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    if-eqz p1, :cond_9

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_8

    .line 41
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ServiceState;

    .line 42
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    const/4 v3, 0x2

    const-string v4, "#3ca4fd"

    if-nez v1, :cond_5

    .line 43
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->i:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v5, v4, v3}, Lcom/join/mgps/Util/h2;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->i:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 45
    :cond_5
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->i:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    :goto_4
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getAdd_time()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/c;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getType()I

    move-result v0

    const-string v1, "\u5f00\u670d"

    const-string v5, "\u5408\u670d"

    const/4 v6, 0x1

    if-ne v0, v6, :cond_6

    .line 50
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 51
    :cond_6
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_5
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->i:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v7, v4, v3}, Lcom/join/mgps/Util/h2;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_a

    .line 54
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ServiceState;

    .line 55
    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v0, :cond_7

    .line 56
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->j:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v7, v4, v3}, Lcom/join/mgps/Util/h2;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->j:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 58
    :cond_7
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->j:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :goto_6
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ServiceState;->getAdd_time()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/android/app/common/utils/c;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ServiceState;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p1}, Lcom/join/mgps/dto/ServiceState;->getType()I

    move-result p1

    if-ne p1, v6, :cond_8

    .line 63
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 64
    :cond_8
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :goto_7
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->j:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {p2, v4, v3}, Lcom/join/mgps/Util/h2;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 66
    :cond_9
    :goto_8
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    :goto_9
    return-object p3
.end method

.method private y(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/16 p3, 0x8

    if-nez p2, :cond_1

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0461

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090761

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f090764

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->c:Landroid/widget/TextView;

    const v1, 0x7f090a33

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    const v1, 0x7f090c7b

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->d:Landroid/widget/TextView;

    const v1, 0x7f09087d

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f090763

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f090886

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f0908c8

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->g:Landroid/view/View;

    .line 11
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 12
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v1, :cond_0

    .line 13
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->g:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->c:Landroid/widget/TextView;

    const v2, -0x717172

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->d:Landroid/widget/TextView;

    const v2, -0xa1a1a2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->g:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;

    .line 20
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;->a:Lcom/join/mgps/dto/RecommendInfomationBean;

    .line 21
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    iget p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez p3, :cond_2

    .line 24
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/join/mgps/Util/h2;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 26
    :cond_2
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :goto_1
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 28
    :cond_3
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    :goto_2
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getTimes()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/c;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->a:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y;

    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/RecommendInfomationBean;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private z(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/16 p3, 0x8

    if-nez p2, :cond_1

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0462

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090761

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f09087d

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f090c7b

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->a:Landroid/widget/TextView;

    const v1, 0x7f090a33

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->g:Landroid/widget/TextView;

    const v1, 0x7f090764

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->e:Landroid/widget/TextView;

    const v1, 0x7f090c98

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->b:Landroid/widget/TextView;

    const v1, 0x7f09124b

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->c:Landroid/widget/TextView;

    .line 10
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->d:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 11
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v1, :cond_0

    .line 12
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->e:Landroid/widget/TextView;

    const v2, -0x717172

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->a:Landroid/widget/TextView;

    const v2, -0xa1a1a2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0908be

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;

    move-object v7, v0

    move-object v0, p2

    move-object p2, v7

    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;

    .line 20
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;->a:Lcom/join/mgps/dto/RecommendInfomationBean;

    .line 21
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getPic_list()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 22
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getCommit()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getView()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getTimes()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/c;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 28
    iget p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez p3, :cond_3

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "#8dbbec"

    .line 30
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/RecommendInfomationBean;->setType_color(Ljava/lang/String;)V

    .line 31
    :cond_2
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/join/mgps/Util/h2;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 33
    :cond_3
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    :goto_1
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->g:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 35
    :cond_4
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->g:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    :goto_2
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->d:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$q;

    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$q;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/RecommendInfomationBean;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method J()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070862

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 5
    div-int/lit8 v0, v0, 0x3

    .line 6
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method public P()Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->x:Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;

    return-object v0
.end method

.method public S(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialStrategyTag;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    if-eqz p2, :cond_5

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 4
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameDetialStrategyTag;

    .line 5
    rem-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_2

    .line 6
    iget-object v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f0c01f2

    invoke-virtual {v3, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f091089

    .line 7
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f09108a

    .line 8
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f09108b

    .line 9
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f09108c

    .line 10
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x4

    new-array v10, v10, [Landroid/widget/TextView;

    aput-object v6, v10, v1

    const/4 v6, 0x1

    aput-object v7, v10, v6

    const/4 v6, 0x2

    aput-object v8, v10, v6

    const/4 v6, 0x3

    aput-object v9, v10, v6

    .line 11
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v3, v10

    .line 12
    :cond_2
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyTag;->getTag_name()Ljava/lang/String;

    move-result-object v6

    .line 13
    iget-object v7, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060128

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 14
    aget-object v5, v3, v5

    .line 15
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget v6, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    if-nez v6, :cond_4

    const v6, 0x7f080326

    .line 19
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    if-nez v2, :cond_3

    const v6, 0x7f080348

    .line 20
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v6, -0x1

    .line 21
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    const-string v6, "#7b410b"

    .line 22
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    :cond_4
    :goto_1
    new-instance v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;

    invoke-direct {v6, p0, v4, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/GameDetialStrategyTag;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public T(II)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;

    .line 2
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->d:Lcom/join/mgps/dto/CommentBaseBean;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    move-result v2

    const-string v3, ""

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-gez p2, :cond_0

    const-string p2, "0"

    .line 6
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eq p2, v6, :cond_2

    .line 8
    invoke-virtual {p1, v6}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    add-long/2addr v0, v4

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public U(II)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;

    .line 2
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->d:Lcom/join/mgps/dto/CommentBaseBean;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    move-result v2

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    sub-long/2addr v0, v3

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    .line 6
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    goto :goto_0

    :cond_1
    if-eq p2, v5, :cond_2

    .line 8
    invoke-virtual {p1, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    add-long/2addr v0, v3

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method V(Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;

    .line 2
    iput-boolean p2, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method W(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;I[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->s:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->J()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->s:Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 5
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->s:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    if-lez p2, :cond_1

    .line 6
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 8
    :goto_0
    invoke-static {p3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 9
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 12
    sget-object p2, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {p1, p3, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 13
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$n;

    invoke-direct {p2, p0, p4, p5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$n;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;I[Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public Y(Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->x:Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;

    return-void
.end method

.method public a0(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$o;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$o;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:I

    return-void
.end method

.method public g0(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;

    .line 2
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->d:Lcom/join/mgps/dto/CommentBaseBean;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 5
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;->b()Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->K(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->VIEWPAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->M(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->UPDATE_RECORD:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->L(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->WEB:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->O(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 10
    :cond_3
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_GIFTS:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->w(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 12
    :cond_4
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAMEAD:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 14
    :cond_5
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->MESSAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->B(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 16
    :cond_6
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->RECOMMEND:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->D(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 18
    :cond_7
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->INFORMATION:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->y(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 20
    :cond_8
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT_HEADER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 22
    :cond_9
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 24
    :cond_a
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT_REPLY:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->p(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 26
    :cond_b
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT_FOOTER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 28
    :cond_c
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_ITEM_TOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->A(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 30
    :cond_d
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_GIFTS_ITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 32
    :cond_e
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_GIFTS_BOTTOM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->u(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 34
    :cond_f
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->VOUCHER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->N(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 36
    :cond_10
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->DETIAL_ADGROUP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->r(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 38
    :cond_11
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->INFORMATIONTOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->z(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 40
    :cond_12
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->SERVICEITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_13

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->F(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 42
    :cond_13
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYTABLE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_14

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->H(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 44
    :cond_14
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYITEM_IMAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->G(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 46
    :cond_15
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYITEM_NOIMAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->I(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 48
    :cond_16
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_FAST_ENTRY:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->s(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 50
    :cond_17
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GIFT_AND_SERVICE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_18

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 52
    :cond_18
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->NULLITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->C(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_19
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->values()[Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public k(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;

    .line 2
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->d:Lcom/join/mgps/dto/CommentBaseBean;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method l(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT_REPLY:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    return-object v0
.end method
