.class public Lcom/join/mgps/adapter/ForumBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "ForumBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumBaseAdapter$h0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$j0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$r0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$y0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$k0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$s0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$g0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$o0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$m1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$m0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$l1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$i0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$l0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$q0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$p0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$x0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$u0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$w0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$v0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$z0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$d1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$c1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$k1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$a1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$g1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$b1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$h1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$i1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$e1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$j1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$f1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$t0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$o1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;
    }
.end annotation


# instance fields
.field a:Lcom/join/android/app/component/optimizetext/b;

.field b:Lcom/danikula/videocache/i;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumBaseAdapter$n1;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/join/android/app/component/video/c;

.field f:Ljava/lang/String;

.field private g:Lcom/join/mgps/listener/f;

.field h:Landroid/widget/LinearLayout$LayoutParams;

.field i:I

.field j:Landroid/widget/LinearLayout$LayoutParams;

.field private k:Lcom/join/mgps/adapter/ForumBaseAdapter$r0;

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field private r:Lcom/join/android/app/component/video/MyVideoView;

.field private s:Lcom/join/android/app/component/video/MediaController;

.field private t:I

.field private u:Ljava/lang/String;

.field private v:I

.field private w:Z

.field private x:Z

.field y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "ForumBaseAdapter"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->i:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->k:Lcom/join/mgps/adapter/ForumBaseAdapter$r0;

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:I

    .line 6
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->m:I

    .line 7
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->n:I

    .line 8
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->o:I

    .line 9
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->p:I

    .line 10
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->q:I

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->t:I

    const-string v2, ""

    .line 12
    iput-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->u:Ljava/lang/String;

    .line 13
    iput v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->v:I

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->w:Z

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->x:Z

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->y:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Lcom/join/android/app/component/video/c;

    .line 19
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Ljava/util/List;

    .line 20
    new-instance p2, Lcom/join/android/app/component/optimizetext/b;

    invoke-direct {p2, p1}, Lcom/join/android/app/component/optimizetext/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    .line 21
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->T(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->b:Lcom/danikula/videocache/i;

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->g()V

    .line 23
    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->Y()V

    return-void
.end method

.method private A(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const-string p3, ""

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c044c

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090a46

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->b:Landroid/view/View;

    const v2, 0x7f09050a

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->b:Landroid/view/View;

    const v2, 0x7f09050d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->d:Landroid/widget/TextView;

    .line 7
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->b:Landroid/view/View;

    const v2, 0x7f090506

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->j:Landroid/widget/TextView;

    .line 8
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->b:Landroid/view/View;

    const v2, 0x7f090507

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->h:Landroid/widget/Button;

    .line 9
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->b:Landroid/view/View;

    const v2, 0x7f090508

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->g:Landroid/widget/LinearLayout;

    .line 10
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->b:Landroid/view/View;

    const v2, 0x7f09052d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->i:Landroid/widget/TextView;

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$l;

    if-nez p1, :cond_1

    return-object p2

    .line 13
    :cond_1
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$l;->a:Lcom/join/mgps/dto/ForumBean;

    .line 14
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean;->getIcon_src()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/android/app/common/utils/MyImageLoader;->A(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 15
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->b:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->B0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V

    .line 18
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 19
    iget-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->i:Landroid/widget/TextView;

    const v4, 0x7f1100fd

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean;->getToday_posts()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v6, 0x0

    aput-object p3, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "\u4eca\u65e5 0"

    invoke-static {v3, p3, v2}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$l;->b:Z

    const/16 v2, 0x8

    if-eqz p3, :cond_3

    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean;->is_follow()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 22
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 23
    :cond_2
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 24
    :cond_3
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    :goto_1
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w0;->h:Landroid/widget/Button;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$l;->a:Lcom/join/mgps/dto/ForumBean;

    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->z0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method private B(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$x0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/join/mgps/adapter/ForumBaseAdapter$x0;

    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$x0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0450

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090530

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$x0;->b:Landroid/view/View;

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    :try_start_0
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$x0;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->C0(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object p2
.end method

.method private C(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const-string p3, ""

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;

    goto/16 :goto_0

    .line 3
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c03ea

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090126

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f09075b

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->g:Landroid/view/View;

    const v1, 0x7f090625

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->b:Landroid/widget/TextView;

    const v1, 0x7f090672

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->c:Landroid/widget/TextView;

    const v1, 0x7f0908bc

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->d:Landroid/widget/TextView;

    const v1, 0x7f0902a0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->e:Landroid/widget/TextView;

    const v1, 0x7f090524

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->h:Landroid/widget/TextView;

    const v1, 0x7f09051e

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->i:Landroid/widget/ImageView;

    const v1, 0x7f09038e

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->f:Landroid/view/View;

    .line 14
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    .line 15
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;

    if-eqz p1, :cond_6

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 16
    :cond_2
    iget-boolean v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;->b:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    .line 17
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 18
    :cond_3
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :goto_1
    iget v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;->a:I

    if-nez v1, :cond_4

    .line 20
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 22
    :cond_4
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 23
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->g:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->b:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->c:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;->e:I

    invoke-static {v3}, Lcom/join/mgps/Util/i0;->R(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;->f:I

    invoke-static {v3}, Lcom/join/mgps/Util/i0;->R(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;->i:I

    invoke-static {v3}, Lcom/join/mgps/Util/i0;->R(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;->k:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 30
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$b0;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$b0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;->g:I

    invoke-virtual {p0, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->E0(Landroid/view/View;I)V

    .line 32
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;->j:Z

    iget v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;->e:I

    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;->g:I

    invoke-direct {p0, v0, p3, v1, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e0(Lcom/join/mgps/adapter/ForumBaseAdapter$z0;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_6
    :goto_3
    return-object p2

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-object p2
.end method

.method private D(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    move-object/from16 v7, p0

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;

    :cond_0
    move-object/from16 v8, p2

    goto :goto_0

    .line 3
    :cond_1
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;

    invoke-direct {v1, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 4
    iget-object v2, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c03eb

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const v0, 0x7f090e9a

    .line 5
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;->b:Landroid/view/View;

    const v0, 0x7f090753

    .line 6
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;->c:Landroid/view/View;

    const v0, 0x7f090745

    .line 7
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090746

    .line 8
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090747

    .line 9
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090708

    .line 10
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;->g:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    move-object v8, v2

    .line 12
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$n;

    if-eqz v9, :cond_d

    if-nez v0, :cond_2

    goto/16 :goto_6

    .line 13
    :cond_2
    iget-object v1, v9, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$n;->a:Ljava/util/List;

    const/16 v10, 0x8

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_5

    :cond_3
    const/4 v11, 0x0

    .line 14
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v12, v9, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$n;->b:Ljava/util/List;

    .line 16
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;->g:Landroid/widget/TextView;

    if-eqz v12, :cond_4

    .line 17
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    move v13, v2

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    :goto_1
    const/4 v14, 0x3

    if-le v13, v14, :cond_5

    .line 18
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5171"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u5f20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 20
    :cond_5
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    :goto_2
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_6

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->W()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    iput-object v1, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    :cond_6
    new-array v15, v14, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 23
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v1, v15, v11

    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v6, 0x1

    aput-object v1, v15, v6

    const/4 v1, 0x2

    iget-object v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v0, v15, v1

    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v0, v14, :cond_b

    .line 24
    aget-object v2, v15, v0

    .line 25
    iget-object v1, v9, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$n;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_7

    .line 26
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v17, 0x1

    goto/16 :goto_4

    .line 27
    :cond_7
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    iget-object v1, v9, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$n;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 30
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-static {v4}, Lcom/join/mgps/Util/i0;->i0(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_8

    if-ne v13, v6, :cond_8

    if-eqz v1, :cond_8

    .line 32
    aget-object v3, v1, v11

    .line 33
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_8

    aget-object v1, v1, v6

    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_8

    sub-int v5, v0, v16

    move-object/from16 v1, p0

    move v3, v0

    const/16 v17, 0x1

    move-object v6, v12

    .line 35
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r0(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V

    goto :goto_4

    :cond_8
    const/16 v17, 0x1

    sub-int v5, v0, v16

    move-object/from16 v1, p0

    move v3, v0

    move-object v6, v12

    .line 36
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumBaseAdapter;->s0(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V

    goto :goto_4

    :cond_9
    const/16 v17, 0x1

    .line 37
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    add-int/lit8 v16, v16, 0x1

    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v2, v0, v3, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->R0(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x1

    goto :goto_3

    .line 39
    :cond_b
    iget v0, v9, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$n;->c:I

    invoke-virtual {v7, v8, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->E0(Landroid/view/View;I)V

    goto :goto_8

    .line 40
    :cond_c
    :goto_5
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_d
    :goto_6
    return-object v8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v8, v2

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v8, p2

    .line 41
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-object v8
.end method

.method private D0(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$w;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private E(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const-string p3, ""

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;

    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c03ec

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090a98

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    const v0, 0x7f09038e

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;->c:Landroid/view/View;

    const v0, 0x7f090e9a

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;->d:Landroid/view/View;

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;

    if-eqz p1, :cond_5

    if-nez v0, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object v1

    if-nez v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    invoke-virtual {v1, p1}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 12
    :cond_3
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->setLayout(Landroid/text/Layout;)V

    .line 13
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    invoke-static {p3}, Lcom/join/mgps/Util/i0;->X0(Landroid/view/View;)V

    .line 14
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->a:Z

    if-eqz p3, :cond_4

    .line 15
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;->d:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;->d:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :goto_1
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->e:I

    .line 20
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->E0(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_5
    :goto_2
    return-object p2

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method private F(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c03ee

    invoke-virtual {v1, v2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f091263

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->b:Landroid/widget/FrameLayout;

    const p3, 0x7f09014c

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p3, v0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$q;

    if-eqz v0, :cond_6

    if-nez p3, :cond_2

    goto/16 :goto_2

    .line 9
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$q;->b:Ljava/lang/String;

    .line 10
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$q;->a:Ljava/lang/String;

    .line 11
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->b:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_7

    .line 12
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->q:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f080cc9

    invoke-static {v2, v3, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    add-int/lit8 v2, p1, 0x1

    .line 15
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Lcom/join/android/app/component/video/c;

    invoke-virtual {v3}, Lcom/join/android/app/component/video/c;->u()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ForumGroupPostsFragment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Lcom/join/android/app/component/video/c;

    invoke-virtual {v3}, Lcom/join/android/app/component/video/c;->u()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ForumGroupMemberActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Lcom/join/android/app/component/video/c;

    invoke-virtual {v3}, Lcom/join/android/app/component/video/c;->u()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LabelFragment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Lcom/join/android/app/component/video/c;

    invoke-virtual {v3}, Lcom/join/android/app/component/video/c;->u()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ForumPostsFragment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move p1, v2

    .line 16
    :cond_4
    :goto_1
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 17
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 18
    new-instance v2, Lcom/join/android/app/component/video/c$k;

    invoke-direct {v2, p1, v1, v0}, Lcom/join/android/app/component/video/c$k;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Lcom/join/android/app/component/video/c;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, v2, v1}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$k;[Z)V

    .line 20
    :cond_5
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_6
    :goto_2
    return-object p2

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    return-object p2
.end method

.method private H0(Landroid/view/View;Lcom/join/mgps/dto/RecommendLabelTag;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$u;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$u;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/dto/RecommendLabelTag;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private I(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const-string p3, "0"

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;

    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0c0451

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f09050d

    .line 4
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->b:Landroid/widget/TextView;

    const v2, 0x7f090524

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->c:Landroid/widget/TextView;

    const v2, 0x7f090513

    .line 6
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->d:Landroid/widget/TextView;

    const v2, 0x7f09051d

    .line 7
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->e:Landroid/widget/TextView;

    const v2, 0x7f09051e

    .line 8
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->h:Landroid/widget/ImageView;

    const v2, 0x7f090c3a

    .line 9
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->f:Landroid/view/View;

    const v2, 0x7f09050e

    .line 10
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->g:Landroid/view/View;

    .line 11
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$r;

    if-nez p1, :cond_1

    return-object p2

    .line 13
    :cond_1
    iget-boolean v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$r;->h:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_2

    .line 14
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->f:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->f:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :goto_1
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->b:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$r;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$r;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->g:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 19
    :cond_3
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->g:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :goto_2
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$r;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$r;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$r;->g:Z

    iget v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$r;->e:I

    invoke-direct {p0, v1, p3, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f0(Lcom/join/mgps/adapter/ForumBaseAdapter$d1;ZI)V

    .line 23
    iget p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$r;->a:I

    .line 24
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$a0;

    invoke-direct {v2, p0, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter$a0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {p0, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->E0(Landroid/view/View;I)V

    .line 26
    iget v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$r;->f:I

    .line 27
    new-instance v2, Lcom/join/mgps/dto/ForumBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 28
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 29
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->B0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V

    .line 30
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$r;->g:Z

    .line 31
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$r;->e:I

    .line 32
    iget-object v1, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, p3, v0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->G0(Landroid/view/View;IZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method private J(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;

    goto/16 :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c041c

    invoke-virtual {v1, v2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090a39

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p3, 0x7f090a37

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->c:Landroid/widget/TextView;

    const p3, 0x7f090a3a

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    const p3, 0x7f090a3b

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->e:Landroid/widget/TextView;

    const p3, 0x7f090a38

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->f:Landroid/widget/TextView;

    const p3, 0x7f0908cd

    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->g:Landroid/widget/LinearLayout;

    const p3, 0x7f09100c

    .line 11
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->h:Landroid/widget/LinearLayout;

    const p3, 0x7f0900ea

    .line 12
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->i:Landroid/widget/TextView;

    const p3, 0x7f0909b2

    .line 13
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->j:Landroid/widget/TextView;

    const p3, 0x7f090c59

    .line 14
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ProgressBar;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->k:Landroid/widget/ProgressBar;

    const p3, 0x7f090c60

    .line 15
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ProgressBar;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->l:Landroid/widget/ProgressBar;

    const p3, 0x7f0908be

    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->m:Landroid/view/View;

    const p3, 0x7f090d07

    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->n:Landroid/view/View;

    const p3, 0x7f09038e

    .line 18
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->o:Landroid/view/View;

    .line 19
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p3, v0

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;

    if-eqz p1, :cond_5

    if-nez p3, :cond_2

    goto/16 :goto_2

    .line 21
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;->c:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 23
    iget-boolean v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;->a:Z

    if-eqz v1, :cond_3

    .line 24
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 25
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->o:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 26
    :cond_3
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    .line 27
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->o:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_4
    :goto_1
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    const v2, 0x7f08032f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 29
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b2a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 30
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 31
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 32
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    const-string v2, "\u6253\u5f00"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_ico_remote()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/MyImageLoader;->z(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 36
    new-instance v0, Lcom/join/mgps/adapter/v;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/v;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;)V

    .line 37
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->n:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_5
    :goto_2
    return-object p2

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method private K(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21

    move-object/from16 v7, p0

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;

    :cond_0
    move-object/from16 v8, p2

    goto/16 :goto_0

    .line 3
    :cond_1
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;

    invoke-direct {v1, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 4
    iget-object v2, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c041b

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const v0, 0x7f090a39

    .line 5
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090a37

    .line 6
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->c:Landroid/widget/TextView;

    const v0, 0x7f090a3a

    .line 7
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    const v0, 0x7f090a3b

    .line 8
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->e:Landroid/widget/TextView;

    const v0, 0x7f090a38

    .line 9
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->f:Landroid/widget/TextView;

    const v0, 0x7f0908cd

    .line 10
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f09100c

    .line 11
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0900ea

    .line 12
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->i:Landroid/widget/TextView;

    const v0, 0x7f0909b2

    .line 13
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->j:Landroid/widget/TextView;

    const v0, 0x7f090c59

    .line 14
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->k:Landroid/widget/ProgressBar;

    const v0, 0x7f090c60

    .line 15
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->l:Landroid/widget/ProgressBar;

    const v0, 0x7f0908be

    .line 16
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->m:Landroid/view/View;

    const v0, 0x7f090d07

    .line 17
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->n:Landroid/view/View;

    const v0, 0x7f09038e

    .line 18
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->o:Landroid/view/View;

    .line 19
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    move-object v8, v2

    .line 20
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;

    if-eqz v1, :cond_9

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 21
    :cond_2
    iget-object v9, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;->c:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 22
    iget-object v10, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v11

    .line 24
    iget-boolean v1, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;->a:Z

    const/4 v12, 0x0

    const/16 v13, 0x8

    if-eqz v1, :cond_3

    .line 25
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 26
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->o:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 27
    :cond_3
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v13, :cond_4

    .line 28
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->o:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    const v2, 0x7f08032f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 30
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b2a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 31
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 32
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 33
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->c:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->f:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_desc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_size()Ljava/lang/String;

    move-result-object v16

    .line 37
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_ico_remote()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/MyImageLoader;->z(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 38
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_tag_info()Ljava/util/List;

    move-result-object v14

    .line 39
    invoke-direct {v7, v0, v12}, Lcom/join/mgps/adapter/ForumBaseAdapter;->S0(Lcom/join/mgps/adapter/ForumBaseAdapter$e1;I)V

    .line 40
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 41
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 42
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 43
    :cond_5
    invoke-virtual {v7, v0, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter;->o0(Lcom/join/mgps/adapter/ForumBaseAdapter$e1;Ljava/lang/Object;)V

    goto :goto_3

    .line 44
    :cond_6
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7

    .line 45
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->n0(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 46
    :cond_7
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDown_status()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->m0(Landroid/view/View;I)V

    .line 47
    :goto_2
    iget-object v15, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    new-instance v6, Lcom/join/mgps/adapter/ForumBaseAdapter$e0;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v5, v10

    move-object v12, v6

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$e0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/dto/ForumBean$GameInfo;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 49
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    const v2, 0x7f080a62

    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 52
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    const-string v2, "\u5f00\u59cb"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    iget-object v2, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_4

    .line 54
    :cond_8
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->h:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 55
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->h:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v14, v1, v2}, Lcom/join/mgps/Util/i0;->c(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 56
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getScore()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDown_count()I

    move-result v15

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v17

    const/16 v18, 0x0

    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->h:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-static/range {v14 .. v20}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 57
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-static {v1, v8, v2}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 58
    :goto_4
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->n:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$f0;

    invoke-direct {v1, v7, v10, v11, v9}, Lcom/join/mgps/adapter/ForumBaseAdapter$f0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :cond_9
    :goto_5
    return-object v8

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v8, v2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v8, p2

    .line 59
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-object v8
.end method

.method private L(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0452

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090514

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->f:Landroid/view/View;

    const v0, 0x7f090511

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09051b

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->c:Landroid/widget/TextView;

    const v0, 0x7f090510

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->d:Landroid/widget/TextView;

    const v0, 0x7f090521

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->e:Landroid/widget/TextView;

    const v0, 0x7f0904f6

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->g:Landroid/widget/RelativeLayout;

    const v0, 0x7f09051a

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->h:Landroid/widget/ImageView;

    const v0, 0x7f090b5a

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->i:Landroid/widget/ImageView;

    const v0, 0x7f091298

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/VipView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->j:Lcom/join/mgps/customview/VipView;

    const v0, 0x7f090300

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->k:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_1

    return-object p2

    .line 16
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->c:Landroid/widget/TextView;

    iget v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;->k:I

    iget v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;->l:I

    const v4, 0x7f06011d

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->M2(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 17
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->j:Lcom/join/mgps/customview/VipView;

    iget v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;->k:I

    iget v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/VipView;->setVipData(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 18
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :goto_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;->a:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 21
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->c:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->d:Landroid/widget/TextView;

    iget-wide v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;->d:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;->e:Z

    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 26
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    :goto_3
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;->i:Z

    if-eqz v0, :cond_4

    .line 28
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 29
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    :goto_4
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;->j:Z

    if-eqz v0, :cond_5

    .line 31
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 32
    :cond_5
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    :goto_5
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 34
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$z;

    invoke-direct {v3, p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$z;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;->f:I

    .line 36
    invoke-virtual {p0, p2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->E0(Landroid/view/View;I)V

    .line 37
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->x0(Landroid/view/View;I)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 38
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v3, v0, v2

    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->c:Landroid/widget/TextView;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x2

    iget-object v5, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->d:Landroid/widget/TextView;

    aput-object v5, v0, v3

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->S0([Landroid/view/View;)V

    new-array v0, v4, [Landroid/view/View;

    .line 39
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->j:Lcom/join/mgps/customview/VipView;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->U0([Landroid/view/View;)V

    .line 40
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;->o:Ljava/lang/String;

    .line 41
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;->n:Ljava/lang/String;

    .line 42
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->k:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 44
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080436

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    const-string v1, "#"

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const-string p1, "#2fccdf"

    .line 50
    :goto_6
    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 51
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 52
    :cond_7
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_7
    return-object p2
.end method

.method private M(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0454

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090517

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f090708

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->b:Landroid/widget/TextView;

    const v0, 0x7f090745

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090746

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090747

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$u;

    if-nez p1, :cond_1

    return-object p2

    .line 11
    :cond_1
    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->h0(Lcom/join/mgps/adapter/ForumBaseAdapter$g1;Lcom/join/mgps/adapter/ForumBaseAdapter$n1$u;)V

    .line 12
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$u;->c:I

    .line 13
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->E0(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private N(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const-string p3, ""

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0422

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090519

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;

    if-nez p1, :cond_1

    return-object p2

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object v1

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    invoke-virtual {v1, p1}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 9
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->setLayout(Landroid/text/Layout;)V

    .line 10
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    invoke-static {p3}, Lcom/join/mgps/Util/i0;->X0(Landroid/view/View;)V

    .line 11
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;->d:I

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->E0(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private N0(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Landroid/widget/Button;

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private O(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v12, p0

    const-string v0, "#FFFF6464"

    const-string v1, "#FF8378FF"

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;

    :cond_0
    move-object/from16 v13, p2

    move-object v14, v2

    goto :goto_0

    .line 3
    :cond_1
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;

    invoke-direct {v3, v12}, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 4
    iget-object v4, v12, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c03ed

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const v4, 0x7f090159

    .line 5
    :try_start_1
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->b:Landroid/widget/Button;

    const v4, 0x7f090ef9

    .line 6
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->c:Landroid/widget/TextView;

    const v4, 0x7f090efa

    .line 7
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->e:Landroid/view/View;

    const v4, 0x7f090514

    .line 8
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->d:Landroid/view/View;

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v13, v2

    move-object v14, v3

    .line 10
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;

    if-eqz v15, :cond_7

    if-nez v14, :cond_2

    goto/16 :goto_2

    .line 11
    :cond_2
    iget-boolean v2, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->a:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 12
    iget-object v2, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->d:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v2, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->d:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :goto_1
    iget-object v2, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 15
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-boolean v2, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->b:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "#00FFFFFF"

    if-eqz v2, :cond_4

    .line 17
    :try_start_3
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    const-string v5, "\u7cbe"

    .line 18
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    .line 22
    invoke-interface {v7, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 23
    :cond_4
    iget-boolean v1, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->c:Z

    if-eqz v1, :cond_5

    .line 24
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    const-string v2, "\u9876"

    .line 25
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    .line 29
    invoke-interface {v7, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 30
    :cond_5
    iget-object v0, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->i:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 31
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    :cond_6
    iget-object v2, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->c:Landroid/widget/TextView;

    iget-object v3, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->d:Ljava/lang/String;

    iget-boolean v4, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->b:Z

    iget-boolean v5, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->g:Z

    iget-object v6, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->h:Ljava/lang/String;

    iget-object v8, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->j:Ljava/util/List;

    iget v9, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->f:I

    iget-object v10, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->k:Ljava/lang/String;

    iget v11, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->l:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/join/mgps/adapter/ForumBaseAdapter;->l0(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;I)V

    .line 33
    iget v0, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;->e:I

    .line 34
    iget-object v1, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->c:Landroid/widget/TextView;

    invoke-direct {v12, v1, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->Z(Landroid/widget/TextView;I)V

    .line 35
    invoke-virtual {v12, v13, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->E0(Landroid/view/View;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :cond_7
    :goto_2
    return-object v13

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v13, v2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v13, p2

    .line 36
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-object v13
.end method

.method private O0(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Landroid/widget/Button;

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private P(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0453

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090512

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;->b:Landroid/widget/Button;

    const v0, 0x7f090522

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$w;

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;->c:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$w;->b:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$w;->a:Z

    iget-boolean v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$w;->e:Z

    iget-object v5, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$w;->f:Ljava/lang/String;

    iget-object v6, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$w;->g:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumBaseAdapter;->k0(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V

    .line 9
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$w;->c:I

    .line 10
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->E0(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private P0(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V
    .locals 4

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/MyImageLoader;->y(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->j:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x41900000    # 18.0f

    mul-float v0, v0, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v0, v0

    mul-float v0, v0, v2

    const v2, 0x40047ae1    # 2.07f

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 6
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 7
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->j:Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->j:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-static {p2}, Lcom/join/mgps/Util/i0;->j0(Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p2

    .line 10
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const-string v1, "forum"

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 14
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g;

    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter$g;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/Util/IntentDateBean;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private Q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c03fc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090522

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->b:Landroid/widget/TextView;

    const v0, 0x7f090521

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->c:Landroid/widget/TextView;

    const v0, 0x7f090512

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->d:Landroid/widget/Button;

    const v0, 0x7f09051c

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->e:Landroid/widget/ImageView;

    const v0, 0x7f090523

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->f:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$x;

    if-nez p1, :cond_1

    return-object p2

    .line 11
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$x;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->b:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$x;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    :goto_1
    :try_start_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->c:Landroid/widget/TextView;

    const v3, 0x7f080c6d

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$x;->a(Lcom/join/mgps/adapter/ForumBaseAdapter$n1$x;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$x;->a(Lcom/join/mgps/adapter/ForumBaseAdapter$n1$x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 17
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 18
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$x;->a(Lcom/join/mgps/adapter/ForumBaseAdapter$n1$x;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    .line 19
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_6

    .line 20
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getFont_color()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 23
    invoke-static {v3}, Lcom/join/mgps/customview/k0;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 24
    instance-of v5, v3, Lcom/join/mgps/customview/k0;

    if-eqz v5, :cond_4

    .line 25
    move-object v5, v3

    check-cast v5, Lcom/join/mgps/customview/k0;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getBorder_color()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/join/mgps/customview/k0;->l(I)Lcom/join/mgps/customview/k0;

    .line 26
    move-object v4, v3

    check-cast v4, Lcom/join/mgps/customview/k0;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v6, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/customview/k0;->n(F)Lcom/join/mgps/customview/k0;

    .line 27
    move-object v0, v3

    check-cast v0, Lcom/join/mgps/customview/k0;

    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v4}, Lcom/join/mgps/customview/k0;->o(F)Lcom/join/mgps/customview/k0;

    .line 28
    move-object v0, v3

    check-cast v0, Lcom/join/mgps/customview/k0;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Lcom/join/mgps/customview/k0;->q(Landroid/widget/ImageView$ScaleType;)Lcom/join/mgps/customview/k0;

    .line 29
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-le v0, v4, :cond_5

    .line 30
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 31
    :cond_5
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 32
    :cond_6
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 33
    :cond_7
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 34
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    :goto_3
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$x;->c:Z

    if-eqz v0, :cond_8

    .line 36
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 37
    :cond_8
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 38
    :goto_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;->f:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$x;->a:I

    .line 41
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$v;

    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$v;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-object p2
.end method

.method private R(Landroid/content/Context;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->i:I

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const v1, 0x3fe66666    # 1.8f

    const v2, 0x7f070ca1

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    int-to-float v0, v0

    mul-float v0, v0, p1

    div-float/2addr v0, v1

    float-to-int p1, v0

    .line 5
    iput p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->i:I

    .line 6
    :cond_1
    iget p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->i:I

    return p1
.end method

.method private S(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k1;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k1;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$k1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0426

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f091263

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k1;->c:Landroid/widget/FrameLayout;

    const v0, 0x7f09014c

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$y;

    if-nez v0, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->R(Landroid/content/Context;)I

    move-result v1

    .line 9
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$y;->b:Ljava/lang/String;

    .line 10
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$y;->a:Ljava/lang/String;

    .line 11
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k1;->c:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 12
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k1;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f080cc9

    invoke-static {v1, v3, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    .line 15
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 16
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    new-instance v1, Lcom/join/android/app/component/video/c$k;

    invoke-direct {v1, p1, v2, v0}, Lcom/join/android/app/component/video/c$k;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Lcom/join/android/app/component/video/c;

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$k;[Z)V

    .line 19
    :cond_2
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$c0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-object p2
.end method

.method private S0(Lcom/join/mgps/adapter/ForumBaseAdapter$e1;I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v2, 0x11

    if-ne p2, v2, :cond_1

    .line 7
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private U(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l1;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l1;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$l1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c03f6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0904e2

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/FlowLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l1;->b:Lcom/join/mgps/customview/FlowLayout;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a0;

    if-nez p1, :cond_1

    return-object p2

    .line 7
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a0;->c:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    goto :goto_4

    .line 8
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l1;->b:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 9
    :goto_1
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a0;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 10
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a0;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/RecommendLabelTag;

    if-nez v2, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 11
    :goto_2
    iget v5, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a0;->a:I

    iget-object v6, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a0;->b:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter;->d0(Lcom/join/mgps/dto/RecommendLabelTag;ZILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l1;->b:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    return-object p2

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-object p2
.end method

.method private V(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string p3, "#"

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0443

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090acd

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->b:Landroid/widget/TextView;

    const v1, 0x7f090398

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->c:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$b0;

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$b0;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$b0;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    invoke-virtual {v3}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_1
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$b0;->b:Z

    if-eqz p3, :cond_3

    .line 13
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->c:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 14
    :cond_3
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->c:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    :goto_2
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$b0;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    invoke-direct {p0, p2, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->H0(Landroid/view/View;Lcom/join/mgps/dto/RecommendLabelTag;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method private X(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0446

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090505

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->b:Landroid/widget/TextView;

    const v0, 0x7f09088e

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09088f

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090890

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090891

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;

    if-eqz p1, :cond_4

    .line 11
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v4, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v4, v0, v1

    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 p3, 0x0

    .line 13
    :goto_1
    iget-object v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p3, v4, :cond_5

    .line 14
    iget-object v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/BannerBean;

    .line 15
    aget-object v5, v0, p3

    .line 16
    invoke-direct {p0, v5, v4, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->P0(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eq p3, v3, :cond_2

    if-ne p3, v1, :cond_3

    .line 17
    :cond_2
    :try_start_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x40c00000    # 6.0f

    .line 18
    invoke-virtual {v5}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v6

    float-to-int v6, v7

    invoke-virtual {v4, v6, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 19
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 20
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    return-object p2

    :catch_1
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-object p2
.end method

.method private Y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->W()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    :cond_0
    return-void
.end method

.method private Z(Landroid/widget/TextView;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$y;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$y;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->c0(Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/adapter/ForumBaseAdapter;)Lcom/join/mgps/adapter/ForumBaseAdapter$r0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->k:Lcom/join/mgps/adapter/ForumBaseAdapter$r0;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/ForumBaseAdapter;)Lcom/join/mgps/listener/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->g:Lcom/join/mgps/listener/f;

    return-object p0
.end method

.method private synthetic c0(Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p2}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/join/mgps/adapter/ForumBaseAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    return-object p0
.end method

.method private d0(Lcom/join/mgps/dto/RecommendLabelTag;ZILjava/lang/String;)Landroid/view/View;
    .locals 7

    const-string v0, "#"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    const v3, 0x7f0c01e9

    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    :try_start_1
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/high16 v4, 0x41400000    # 12.0f

    .line 3
    iget-object v5, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/high16 v4, 0x41700000    # 15.0f

    .line 4
    iget-object v5, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f090f20

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    const v4, 0x7f0603b7

    .line 7
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v4, "#3CA4FD"

    .line 8
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p2, :cond_1

    .line 10
    :try_start_2
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f0807ea

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 11
    invoke-virtual {v3, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 12
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v6, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const p2, 0x7f080b6b

    .line 13
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p2, "#FFFF4343"

    .line 14
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    move-result-object p2

    move-object v0, p2

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 18
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance p2, Lcom/join/mgps/adapter/ForumBaseAdapter$x;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/join/mgps/adapter/ForumBaseAdapter$x;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/dto/RecommendLabelTag;ILjava/lang/String;)V

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 21
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    :goto_2
    return-object v2
.end method

.method private e0(Lcom/join/mgps/adapter/ForumBaseAdapter$z0;ZII)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->d:Landroid/widget/TextView;

    .line 2
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->i:Landroid/widget/ImageView;

    const-string v2, ""

    if-eqz p2, :cond_0

    const p2, 0x7f08075e

    .line 3
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "#d92a0c"

    .line 5
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const p2, 0x7f080c9c

    .line 6
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "#a9a9a9"

    .line 8
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$e;

    invoke-direct {p3, p0, p1, p4}, Lcom/join/mgps/adapter/ForumBaseAdapter$e;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/adapter/ForumBaseAdapter$z0;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private f0(Lcom/join/mgps/adapter/ForumBaseAdapter$d1;ZI)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->e:Landroid/widget/TextView;

    .line 2
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->h:Landroid/widget/ImageView;

    const-string v1, ""

    if-eqz p2, :cond_0

    const p2, 0x7f08075e

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "#d92a0c"

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const p2, 0x7f080c9c

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "#a9a9a9"

    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const-string p3, ""

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0445

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090df6

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->b:Landroid/widget/TextView;

    const v1, 0x7f090df5

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->h:Landroid/widget/TextView;

    const v1, 0x7f0904f6

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f090719

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f09071a

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f09071b

    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;

    if-eqz p1, :cond_7

    .line 12
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 v2, 0x0

    .line 13
    :try_start_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v4, "\u76f4\u64ad"

    const-string v5, "#f38548"

    .line 15
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 17
    invoke-static {v4}, Lcom/join/mgps/Util/i0;->S(Landroid/graphics/drawable/Drawable;)Landroid/text/style/ImageSpan;

    move-result-object v4

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v7, 0x21

    invoke-virtual {v6, v4, v2, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 18
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 19
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 22
    :goto_1
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getSub_title()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object p3, v1

    .line 25
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->h:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->q0(Landroid/view/View;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p3

    .line 27
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const/4 p3, 0x3

    new-array v1, p3, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 28
    iget-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v3, v1, v2

    iget-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    iget-object v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v0, v1, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v0, p3, :cond_8

    .line 29
    aget-object v5, v1, v0

    .line 30
    iget-object v6, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x8

    if-ge v0, v6, :cond_5

    .line 31
    iget-object v5, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/BannerBean;

    .line 32
    invoke-virtual {v5}, Lcom/join/mgps/dto/BannerBean;->getAd_switch()I

    move-result v6

    if-ne v6, v4, :cond_4

    .line 33
    aget-object v6, v1, v3

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    aget-object v6, v1, v3

    invoke-direct {p0, v6, v5, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->i0(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    rsub-int/lit8 v5, v3, 0x3

    sub-int/2addr v5, v4

    if-ge v5, p3, :cond_6

    if-ltz v5, :cond_6

    .line 35
    aget-object v5, v1, v5

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 36
    :cond_5
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    :goto_6
    return-object p2

    :catch_1
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return-object p2
.end method

.method private h0(Lcom/join/mgps/adapter/ForumBaseAdapter$g1;Lcom/join/mgps/adapter/ForumBaseAdapter$n1$u;)V
    .locals 11

    const/16 v0, 0x8

    if-eqz p2, :cond_7

    .line 1
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$u;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->W()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    :cond_1
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$u;->b:Ljava/util/List;

    .line 5
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->b:Landroid/widget/TextView;

    const/4 v8, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v8, :cond_2

    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5171"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u5f20"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    new-array v9, v8, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v2, v9, v3

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v4, 0x1

    aput-object v2, v9, v4

    const/4 v2, 0x2

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object p1, v9, v2

    const/4 p1, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge p1, v8, :cond_6

    .line 11
    aget-object v3, v9, p1

    .line 12
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$u;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_3

    .line 13
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 14
    :cond_3
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$u;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    move-result-object v5

    sub-int v6, p1, v10

    move-object v2, p0

    move v4, p1

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/adapter/ForumBaseAdapter;->s0(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v10, v10, 0x1

    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, p1, v4, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->R0(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    return-void

    .line 19
    :cond_7
    :goto_3
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private i(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    return-object p2
.end method

.method private i0(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V
    .locals 5

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->W()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 5
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 6
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    iget-object v3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {v2, v4, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    if-lez p3, :cond_2

    .line 7
    invoke-virtual {v2, v1, v3, v3, v3}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 9
    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 12
    sget-object v1, Lcom/facebook/drawee/drawable/r$c;->a:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {p1, v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 13
    invoke-static {p2}, Lcom/join/mgps/Util/i0;->j0(Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p2

    .line 14
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const-string v1, "forum"

    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 18
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$f;

    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/Util/IntentDateBean;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0447

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0908de

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->c:Lit/sephiroth/android/library/widget/HListView;

    const v0, 0x7f090df6

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->b:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$b;

    .line 8
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->b:Landroid/widget/TextView;

    const-string v1, "\u7cbe\u5f69\u8bdd\u9898"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    :cond_1
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->c:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;

    if-nez v0, :cond_2

    .line 12
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->c:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {p3, v0}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 14
    :cond_2
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$b;->a:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;->b(Ljava/util/List;)V

    .line 15
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private k0(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/join/mgps/adapter/ForumBaseAdapter;->l0(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;I)V

    return-void
.end method

.method private l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c040f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09050a

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09050d

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;->c:Landroid/widget/TextView;

    const v0, 0x7f090506

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;->d:Landroid/widget/TextView;

    const v0, 0x7f090309

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;->e:Landroid/widget/TextView;

    const v0, 0x7f090110

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;->f:Landroid/view/View;

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$z;

    if-nez p1, :cond_1

    return-object p2

    .line 11
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$z;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 12
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$z;->e:I

    if-lez v0, :cond_2

    .line 15
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4eca\u65e5\u66f4\u65b0\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$z;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;->e:Landroid/widget/TextView;

    const-string v1, "\u4eca\u65e5\u66f4\u65b0\uff1a0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :goto_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$z;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    :goto_2
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$z;->f:I

    invoke-direct {p0, p2, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->D0(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method private l0(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p6}, Lcom/join/mgps/Util/i0;->h(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    const/4 p6, 0x1

    if-eqz p4, :cond_0

    if-ne p10, p6, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p4

    .line 3
    :goto_0
    invoke-static {p1, v0, p3, v1, p5}, Lcom/join/mgps/Util/i0;->g(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;ZZLjava/lang/String;)V

    if-eqz p4, :cond_1

    if-ne p10, p6, :cond_1

    .line 4
    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->d(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0, p7, p8, p9}, Lcom/join/mgps/Util/i0;->i(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;ILjava/lang/String;)V

    .line 6
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0409

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090126

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090b06

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->c:Landroid/widget/TextView;

    const v0, 0x7f090615

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->d:Landroid/widget/TextView;

    const v0, 0x7f0900a4

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->e:Landroid/widget/TextView;

    const v0, 0x7f090624

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->f:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;

    if-nez p1, :cond_1

    return-object p2

    .line 11
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->a:Ljava/lang/String;

    :goto_1
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 12
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$k;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$k;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->c:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->d:I

    if-nez v0, :cond_3

    .line 17
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->d:Landroid/widget/TextView;

    const-string v3, "\u7ec4\u957f"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 18
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->d:Landroid/widget/TextView;

    const-string v3, "\u526f\u7ec4\u957f"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 19
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u52a0\u5165"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->f:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->g:Z

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 24
    :cond_5
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->c:Z

    if-nez v0, :cond_6

    .line 26
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 27
    :cond_6
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    :goto_3
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->f:Landroid/widget/TextView;

    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->h:I

    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->A0(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-object p2
.end method

.method private n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c040a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09100f

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;->b:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$d;

    if-nez p1, :cond_1

    return-object p2

    .line 7
    :cond_1
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;->b:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u6210\u5458"

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$d;->a:Ljava/lang/String;

    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method private o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;

    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c044a

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090530

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->b:Landroid/view/View;

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    :try_start_0
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->C0(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object p2
.end method

.method private p(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$p0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/join/mgps/adapter/ForumBaseAdapter$p0;

    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$p0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c044b

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0904fa

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$p0;->b:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$p0;->b:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->C0(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object p2
.end method

.method private q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const-string p3, ""

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c044c

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090a46

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->b:Landroid/view/View;

    const v2, 0x7f09050a

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->b:Landroid/view/View;

    const v2, 0x7f09050d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->d:Landroid/widget/TextView;

    .line 7
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->b:Landroid/view/View;

    const v2, 0x7f090506

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->i:Landroid/widget/TextView;

    .line 8
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->b:Landroid/view/View;

    const v2, 0x7f090507

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->g:Landroid/widget/Button;

    .line 9
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->b:Landroid/view/View;

    const v2, 0x7f09052d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->h:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$g;

    if-nez p1, :cond_1

    return-object p2

    .line 12
    :cond_1
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$g;->a:Lcom/join/mgps/dto/ForumBean;

    .line 13
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->i:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->b:Landroid/view/View;

    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->B0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V

    .line 16
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getIcon_src()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/MyImageLoader;->A(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    invoke-static {p3, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 17
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->h:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 18
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->h:Landroid/widget/TextView;

    const v2, 0x7f1100fd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getToday_posts()I

    move-result v4

    invoke-static {v4}, Lcom/join/mgps/Util/i0;->R(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p3, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "\u4eca\u65e5 0"

    invoke-static {v1, p3, v2}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->is_follow()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->g:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->g:Landroid/widget/Button;

    invoke-virtual {p3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 21
    :goto_1
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->g:Landroid/widget/Button;

    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->y0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method private q0(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$i;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v1, p0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;

    move-object/from16 v2, p2

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c044d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090504

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->j:Landroid/view/View;

    const v3, 0x7f090505

    .line 5
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->b:Landroid/widget/TextView;

    const v3, 0x7f09088e

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f09088f

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f090890

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f090891

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    move-object v3, v0

    .line 11
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$i;

    if-eqz v4, :cond_9

    .line 12
    iget-object v0, v4, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$i;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x4

    new-array v5, v0, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 13
    iget-object v6, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    iget-object v6, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    iget-object v6, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v10, 0x3

    aput-object v6, v5, v10

    const/4 v6, 0x0

    :goto_1
    const/16 v11, 0x8

    if-ge v6, v0, :cond_2

    .line 14
    aget-object v12, v5, v6

    .line 15
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 16
    :goto_2
    iget-object v0, v4, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$i;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v4, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$i;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 17
    iget-object v0, v4, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$i;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BannerBean;

    .line 18
    aget-object v12, v5, v6

    .line 19
    invoke-virtual {v12, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 21
    iget-object v13, v1, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 22
    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    iget-object v15, v1, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v15, v15

    const/high16 v16, 0x41900000    # 18.0f

    mul-float v13, v13, v16

    sub-float/2addr v15, v13

    float-to-int v13, v15

    div-int/2addr v13, v9

    iput v13, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v15, 0x3f800000    # 1.0f

    int-to-float v13, v13

    mul-float v13, v13, v15

    const v15, 0x40047ae1    # 2.07f

    div-float/2addr v13, v15

    float-to-int v13, v13

    .line 24
    iput v13, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 25
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/i0;->j0(Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v0

    .line 27
    new-instance v13, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v13}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const-string v14, "forum"

    .line 28
    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 29
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "banner2"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, p1, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v13}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 31
    new-instance v13, Lcom/join/mgps/adapter/ForumBaseAdapter$a;

    invoke-direct {v13, v1, v0, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/Util/IntentDateBean;I)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v6, v8, :cond_3

    if-ne v6, v10, :cond_4

    .line 32
    :cond_3
    :try_start_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v13, 0x40c00000    # 6.0f

    .line 33
    invoke-virtual {v12}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    mul-float v14, v14, v13

    float-to-int v13, v14

    invoke-virtual {v0, v13, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 34
    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    :cond_4
    iget-object v0, v4, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$i;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_5

    .line 36
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v13, 0x7f070c94

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 37
    iget-object v13, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->j:Landroid/view/View;

    invoke-virtual {v13, v7, v0, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 38
    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    .line 39
    iput v13, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->u()I

    move-result v13

    iput v13, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 41
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 42
    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 44
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 45
    :cond_6
    iget-object v0, v4, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$i;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    .line 46
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 47
    :cond_7
    iget-object v0, v4, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$i;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v8, :cond_8

    .line 48
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 49
    :cond_8
    iget-object v0, v4, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$i;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v10, :cond_a

    .line 50
    aget-object v0, v5, v9

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 51
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 52
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 53
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :cond_9
    :goto_4
    return-object v2

    :catch_1
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_5
    return-object v2
.end method

.method private w(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    return-object p2
.end method

.method private w0(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V
    .locals 4

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/MyImageLoader;->y(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->j:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x41900000    # 18.0f

    mul-float v0, v0, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v0, v0

    mul-float v0, v0, v2

    const v2, 0x40047ae1    # 2.07f

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 7
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 8
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->j:Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->j:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-static {p2}, Lcom/join/mgps/Util/i0;->j0(Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p2

    .line 11
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const-string v1, "forum"

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 15
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h;

    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter$h;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/Util/IntentDateBean;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0446

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090505

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->b:Landroid/widget/TextView;

    const v0, 0x7f09088e

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09088f

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090890

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090891

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;

    if-eqz p1, :cond_7

    .line 11
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x4

    new-array v1, v0, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 p3, 0x0

    .line 13
    :goto_1
    iget-object v6, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge p3, v6, :cond_4

    .line 14
    iget-object v6, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/BannerBean;

    .line 15
    aget-object v7, v1, p3

    .line 16
    invoke-direct {p0, v7, v6, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->w0(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eq p3, v4, :cond_2

    if-ne p3, v2, :cond_3

    .line 17
    :cond_2
    :try_start_1
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x40c00000    # 6.0f

    .line 18
    invoke-virtual {v7}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v9, v8

    float-to-int v8, v9

    invoke-virtual {v6, v8, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 19
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 20
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 21
    :cond_4
    iget-object p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {p3}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object p3

    const/16 v2, 0x8

    if-nez p3, :cond_5

    .line 22
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 23
    :cond_5
    iget-object p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {p3}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p3, v5, :cond_6

    .line 24
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 25
    :cond_6
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v0, :cond_8

    .line 26
    aget-object p1, v1, v5

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 27
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :cond_7
    :goto_3
    return-object p2

    :catch_1
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_4
    return-object p2
.end method

.method private y(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$u0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$u0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c044e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090ac8

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$u0;->c:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$j;

    .line 7
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$u0;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1101fe

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$j;->a:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->I0(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private z(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$v0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$v0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$v0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c044f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0904fa

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$v0;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f090df6

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$v0;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$k;

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$k;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$v0;->c:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$k;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$v0;->c:Landroid/widget/TextView;

    const-string v0, "\u6211\u7684\u4e13\u533a"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$v0;->c:Landroid/widget/TextView;

    const-string v0, "\u63a8\u8350\u5173\u6ce8"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_1
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$v0;->b:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->C0(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-object p2
.end method


# virtual methods
.method public A0(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$t;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public B0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$l;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$l;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/dto/ForumBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public C0(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$m;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public E0(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$j;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$j;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public F0(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/ForumBaseAdapter$s;

    invoke-direct {p2, p0, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter$s;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public G()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->v:I

    return v0
.end method

.method public G0(Landroid/view/View;IZI)V
    .locals 0

    .line 1
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$o;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->u:Ljava/lang/String;

    return-object v0
.end method

.method public I0(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$p;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public J0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->w:Z

    return-void
.end method

.method public K0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->v:I

    return-void
.end method

.method public L0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->u:Ljava/lang/String;

    return-void
.end method

.method public M0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->x:Z

    return-void
.end method

.method public Q0(Lcom/join/mgps/listener/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->g:Lcom/join/mgps/listener/f;

    return-void
.end method

.method R0(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->W()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

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
    new-instance p2, Lcom/join/mgps/adapter/ForumBaseAdapter$d;

    invoke-direct {p2, p0, p4}, Lcom/join/mgps/adapter/ForumBaseAdapter$d;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public T(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/MApplication;->p(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object p1

    return-object p1
.end method

.method W()Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x43520000    # 210.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    mul-float v3, v3, v1

    float-to-int v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float v4, v4, v1

    float-to-int v4, v4

    .line 4
    iget-object v5, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070c8f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    int-to-float v4, v4

    mul-float v4, v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v4, v4, v1

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 5
    div-int/lit8 v0, v0, 0x3

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    .line 6
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public a0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->w:Z

    return v0
.end method

.method public b0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->x:Z

    return v0
.end method

.method public e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumBaseAdapter$n1;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c8f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    const/high16 v2, 0x43520000    # 210.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    mul-float v3, v3, v1

    float-to-int v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float v4, v4, v1

    float-to-int v4, v4

    int-to-float v0, v0

    int-to-float v4, v4

    mul-float v4, v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v4, v4, v1

    sub-float v1, v0, v4

    float-to-int v1, v1

    .line 5
    div-int/lit8 v1, v1, 0x3

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-le v1, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    .line 6
    :goto_0
    iput v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:I

    const v1, 0x3fe66666    # 1.8f

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v0, v2

    div-float/2addr v3, v1

    float-to-int v1, v3

    .line 7
    iput v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->q:I

    const v1, 0x3feccccd    # 1.85f

    const v3, 0x3f1d70a4    # 0.615f

    mul-float v3, v3, v0

    float-to-int v3, v3

    int-to-float v4, v3

    mul-float v4, v4, v2

    div-float/2addr v4, v1

    float-to-int v1, v4

    .line 8
    iput v3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->m:I

    .line 9
    iput v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->n:I

    const v1, 0x3f59999a    # 0.85f

    const v3, 0x3f0a3d71    # 0.54f

    mul-float v0, v0, v3

    float-to-int v0, v0

    int-to-float v3, v0

    mul-float v3, v3, v2

    div-float/2addr v3, v1

    float-to-int v1, v3

    .line 10
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->o:I

    .line 11
    iput v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->p:I

    return-void
.end method

.method public g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    if-nez p1, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;->b()Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->L(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->I(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_TOP:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->Q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->C(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 10
    :cond_3
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->M(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 12
    :cond_4
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_IMGS:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->D(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 14
    :cond_5
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->S(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 16
    :cond_6
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_VIDEO:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->F(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 18
    :cond_7
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME_RES_LINK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->J(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 20
    :cond_8
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->N(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 22
    :cond_9
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->E(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 24
    :cond_a
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->P(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 26
    :cond_b
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->O(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 28
    :cond_c
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->K(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 30
    :cond_d
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->MY_FORUM_HEADER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->z(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 32
    :cond_e
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->MY_FORUM_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->A(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 34
    :cond_f
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->MY_FORUM_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->y(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 36
    :cond_10
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->MY_FORUM_MORE_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->B(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 38
    :cond_11
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->HOT_FORUM_HEADER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->p(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 40
    :cond_12
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->HOT_FORUM_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_13

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 42
    :cond_13
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->HOT_FORUM_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_14

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 44
    :cond_14
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->FORUM_TOPIC:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 46
    :cond_15
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->BAIDUAD:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->i(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 48
    :cond_16
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->TOP_BLOCK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->X(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 50
    :cond_17
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->MID_BLOCK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_18

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 52
    :cond_18
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->AD_BLOCK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 54
    :cond_19
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->LIVE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->w(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 56
    :cond_1a
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->LIVE_ENTRY:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 58
    :cond_1b
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 60
    :cond_1c
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->TAG_FLOW_LAYOUT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->U(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 62
    :cond_1d
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_MEMBER_SECTION_TITLE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 64
    :cond_1e
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_MEMBER_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1f

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 66
    :cond_1f
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->TAG_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->V(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_20
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->t:I

    return v0
.end method

.method public j0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->t:I

    return-void
.end method

.method m0(Landroid/view/View;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    .line 1
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    instance-of v3, v1, Landroid/widget/TextView;

    const v4, 0x7f080a6a

    const/4 v5, 0x0

    const v6, -0x767677

    const/high16 v7, 0x41300000    # 11.0f

    const-string v8, "\u5373\u5c06\u5f00\u653e"

    const v10, 0x7f1100d1

    const/high16 v11, 0x41400000    # 12.0f

    const v12, 0x7f1100d4

    const/4 v13, 0x3

    const v14, 0x7f080a62

    const v15, -0xc35b03

    const/4 v9, 0x2

    if-eqz v3, :cond_2

    .line 3
    check-cast v1, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    if-ne v2, v13, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v1, v9, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_0
    if-ne v2, v9, :cond_1

    .line 9
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v1, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 13
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41500000    # 13.0f

    .line 15
    invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 16
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 18
    :cond_2
    instance-of v3, v1, Landroid/widget/Button;

    if-eqz v3, :cond_5

    .line 19
    check-cast v1, Landroid/widget/Button;

    .line 20
    invoke-virtual {v1, v15}, Landroid/widget/Button;->setTextColor(I)V

    if-ne v2, v13, :cond_3

    .line 21
    invoke-virtual {v1}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v1, v9, v11}, Landroid/widget/Button;->setTextSize(IF)V

    .line 23
    invoke-virtual {v1, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 24
    invoke-virtual {v1, v14}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    if-ne v2, v9, :cond_4

    .line 25
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v1, v9, v7}, Landroid/widget/Button;->setTextSize(IF)V

    .line 27
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 28
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 29
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 30
    :cond_4
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41500000    # 13.0f

    .line 31
    invoke-virtual {v1, v9, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 32
    invoke-virtual {v1, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 33
    invoke-virtual {v1, v14}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method n0(Landroid/widget/TextView;I)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const v1, -0xc35b03

    .line 2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110261

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-double v5, p2

    invoke-static {v5, v6}, Lcom/join/mgps/Util/d2;->l(D)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x2

    const/high16 v0, 0x41500000    # 13.0f

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f080a62

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method o0(Lcom/join/mgps/adapter/ForumBaseAdapter$e1;Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    iget-object v4, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    if-eqz v4, :cond_17

    if-nez v3, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 4
    move-object v6, v3

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    .line 6
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v10

    .line 9
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v11

    .line 10
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v13

    if-lez v13, :cond_1

    .line 11
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v15

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v13, 0x0

    .line 12
    :cond_1
    instance-of v14, v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    if-eqz v14, :cond_4

    .line 13
    move-object v6, v3

    check-cast v6, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 14
    invoke-virtual {v6}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v8

    .line 15
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v14

    .line 16
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 17
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v13

    :cond_2
    if-lez v13, :cond_3

    .line 18
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v15

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v13, 0x0

    :cond_3
    move-object v6, v8

    move-object v8, v14

    goto :goto_0

    .line 19
    :cond_4
    instance-of v14, v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-eqz v14, :cond_6

    .line 20
    move-object v14, v3

    check-cast v14, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 21
    invoke-virtual {v14}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v14}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v14

    .line 22
    invoke-virtual {v14}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 23
    invoke-virtual {v14}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v13

    :cond_5
    if-lez v13, :cond_6

    .line 24
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v15

    invoke-virtual {v14}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v13, 0x0

    :cond_6
    :goto_0
    const-string v14, "\u66f4\u65b0"

    const v15, 0x7f080a67

    if-nez v6, :cond_d

    .line 25
    invoke-static {v10}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 26
    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v6

    invoke-virtual {v6, v0, v9}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-lez v13, :cond_7

    const/16 v16, 0x0

    goto :goto_1

    :cond_7
    move/from16 v16, v6

    :goto_1
    if-eqz v16, :cond_9

    .line 27
    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    invoke-virtual {v2, v0, v9}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v2

    .line 28
    invoke-static {v8}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v2, v6, :cond_8

    .line 29
    invoke-virtual {v4, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    invoke-direct {v1, v4, v14}, Lcom/join/mgps/adapter/ForumBaseAdapter;->N0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060030

    .line 31
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->O0(Landroid/view/View;I)V

    goto/16 :goto_8

    :cond_8
    const v2, 0x7f080a6e

    .line 32
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1100d2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->N0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060033

    .line 34
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->O0(Landroid/view/View;I)V

    goto/16 :goto_8

    .line 35
    :cond_9
    invoke-virtual {v4, v15}, Landroid/view/View;->setBackgroundResource(I)V

    if-lez v13, :cond_a

    .line 36
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0, v13}, Lcom/join/mgps/adapter/ForumBaseAdapter;->n0(Landroid/widget/TextView;I)V

    goto/16 :goto_8

    .line 37
    :cond_a
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter;->m0(Landroid/view/View;I)V

    goto/16 :goto_8

    .line 38
    :cond_b
    invoke-virtual {v4, v15}, Landroid/view/View;->setBackgroundResource(I)V

    if-lez v13, :cond_c

    .line 39
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0, v13}, Lcom/join/mgps/adapter/ForumBaseAdapter;->n0(Landroid/widget/TextView;I)V

    goto/16 :goto_8

    .line 40
    :cond_c
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter;->m0(Landroid/view/View;I)V

    goto/16 :goto_8

    .line 41
    :cond_d
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-lez v13, :cond_e

    const/16 v8, 0x2b

    :cond_e
    if-eqz v8, :cond_f

    const/16 v10, 0x1b

    const-string v15, "\u6682\u505c\u4e2d"

    if-eq v8, v10, :cond_15

    const/4 v10, 0x2

    const-wide/16 v17, 0x0

    const-string v9, "/"

    if-eq v8, v10, :cond_13

    const/4 v10, 0x3

    if-eq v8, v10, :cond_11

    const/4 v10, 0x5

    if-eq v8, v10, :cond_10

    const/4 v10, 0x6

    if-eq v8, v10, :cond_11

    const/4 v10, 0x7

    if-eq v8, v10, :cond_f

    const/16 v10, 0x2a

    if-eq v8, v10, :cond_10

    const/16 v10, 0x2b

    if-eq v8, v10, :cond_f

    const/16 v0, 0x11

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_8

    .line 42
    :pswitch_0
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->S0(Lcom/join/mgps/adapter/ForumBaseAdapter$e1;I)V

    .line 43
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->i:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->j:Landroid/widget/TextView;

    const-string v7, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f080a7b

    .line 46
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u89e3\u538b"

    .line 47
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->N0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f06002a

    .line 48
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->O0(Landroid/view/View;I)V

    goto/16 :goto_8

    .line 49
    :pswitch_1
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->S0(Lcom/join/mgps/adapter/ForumBaseAdapter$e1;I)V

    .line 50
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->i:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->j:Landroid/widget/TextView;

    const-string v7, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f0803ca

    .line 53
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u89e3\u538b\u4e2d"

    .line 54
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->N0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060031

    .line 55
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->O0(Landroid/view/View;I)V

    goto/16 :goto_8

    :pswitch_2
    const/4 v0, 0x0

    .line 56
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->S0(Lcom/join/mgps/adapter/ForumBaseAdapter$e1;I)V

    const v0, 0x7f080a67

    .line 57
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u5b89\u88c5"

    .line 58
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->N0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060030

    .line 59
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->O0(Landroid/view/View;I)V

    goto/16 :goto_8

    :pswitch_3
    const/16 v0, 0x10

    .line 60
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->S0(Lcom/join/mgps/adapter/ForumBaseAdapter$e1;I)V

    const v0, 0x7f080a62

    .line 61
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u7b49\u5f85"

    .line 62
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->N0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f06002a

    .line 63
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->O0(Landroid/view/View;I)V

    goto/16 :goto_8

    :pswitch_4
    const/4 v8, 0x0

    .line 64
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/adapter/ForumBaseAdapter;->S0(Lcom/join/mgps/adapter/ForumBaseAdapter$e1;I)V

    const v0, 0x7f080a67

    .line 65
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 66
    invoke-direct {v1, v4, v14}, Lcom/join/mgps/adapter/ForumBaseAdapter;->N0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060030

    .line 67
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->O0(Landroid/view/View;I)V

    goto/16 :goto_8

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_10
    const/4 v8, 0x0

    goto :goto_2

    :cond_11
    const v0, 0x7f080a62

    goto :goto_3

    .line 68
    :goto_2
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/adapter/ForumBaseAdapter;->S0(Lcom/join/mgps/adapter/ForumBaseAdapter$e1;I)V

    const v2, 0x7f080a6e

    .line 69
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1100d2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->N0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060033

    .line 71
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->O0(Landroid/view/View;I)V

    goto/16 :goto_8

    .line 72
    :goto_3
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u7ee7\u7eed"

    .line 73
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->N0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f06002a

    .line 74
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->O0(Landroid/view/View;I)V

    const/16 v0, 0x10

    .line 75
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->S0(Lcom/join/mgps/adapter/ForumBaseAdapter$e1;I)V

    .line 76
    :try_start_0
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v7

    cmp-long v0, v7, v17

    if-nez v0, :cond_12

    .line 77
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->i:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 78
    :cond_12
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->i:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_4
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    :goto_5
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 82
    :cond_13
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const v0, 0x7f080a62

    .line 83
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u6682\u505c"

    .line 84
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->N0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f06002a

    .line 85
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->O0(Landroid/view/View;I)V

    const/16 v0, 0x10

    .line 86
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->S0(Lcom/join/mgps/adapter/ForumBaseAdapter$e1;I)V

    .line 87
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v7

    cmp-long v0, v7, v17

    if-nez v0, :cond_14

    .line 88
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->i:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 89
    :cond_14
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->i:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_6
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v7

    long-to-int v5, v7

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 91
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v2, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->j:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 93
    :cond_15
    invoke-direct {v1, v4, v15}, Lcom/join/mgps/adapter/ForumBaseAdapter;->N0(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 94
    :goto_7
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->S0(Lcom/join/mgps/adapter/ForumBaseAdapter$e1;I)V

    const v0, 0x7f080a67

    .line 95
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    if-lez v13, :cond_16

    .line 96
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0, v13}, Lcom/join/mgps/adapter/ForumBaseAdapter;->n0(Landroid/widget/TextView;I)V

    goto :goto_8

    .line 97
    :cond_16
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter;->m0(Landroid/view/View;I)V

    .line 98
    :goto_8
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;

    invoke-direct {v0, v1, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/lang/String;

    return-void
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumBaseAdapter$n1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Ljava/util/List;

    return-object v0
.end method

.method r0(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/view/SimpleDraweeView;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/join/mgps/Util/i0;->i0(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2
    aget-object v1, p2, v0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aget-object v2, p2, v1

    .line 4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v2, p2

    cmpl-float p2, v2, v3

    if-lez p2, :cond_0

    .line 6
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->m:I

    iget v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->n:I

    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->o:I

    iget v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->p:I

    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:I

    invoke-direct {p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 9
    :goto_0
    invoke-static {p3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 13
    sget-object p2, Lcom/facebook/drawee/drawable/r$c;->a:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {p1, p3, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 14
    new-instance p2, Lcom/join/mgps/adapter/ForumBaseAdapter$c;

    invoke-direct {p2, p0, p5, p4}, Lcom/join/mgps/adapter/ForumBaseAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Ljava/util/List;I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 15
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public s()Lcom/join/android/app/component/optimizetext/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    return-object v0
.end method

.method s0(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/view/SimpleDraweeView;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->W()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

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
    new-instance p2, Lcom/join/mgps/adapter/ForumBaseAdapter$b;

    invoke-direct {p2, p0, p5, p4}, Lcom/join/mgps/adapter/ForumBaseAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Ljava/util/List;I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public t()Lcom/join/mgps/adapter/ForumBaseAdapter$r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->k:Lcom/join/mgps/adapter/ForumBaseAdapter$r0;

    return-object v0
.end method

.method public t0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumBaseAdapter$n1;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method u()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x3fb40000    # 1.40625f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public u0(Lcom/join/android/app/component/optimizetext/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    return-void
.end method

.method public v0(Lcom/join/mgps/adapter/ForumBaseAdapter$r0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->k:Lcom/join/mgps/adapter/ForumBaseAdapter$r0;

    return-void
.end method

.method public x0(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$n;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$n;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public y0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$q;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/dto/ForumBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public z0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$r;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$r;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/dto/ForumBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
