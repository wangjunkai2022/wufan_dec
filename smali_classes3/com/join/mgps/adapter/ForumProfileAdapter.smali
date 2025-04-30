.class public Lcom/join/mgps/adapter/ForumProfileAdapter;
.super Landroid/widget/BaseAdapter;
.source "ForumProfileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumProfileAdapter$j;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$k;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$q;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$m;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$n;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$o;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$p;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$l;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$s;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$r;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;
    }
.end annotation


# instance fields
.field private a:Lcom/join/android/app/component/optimizetext/b;

.field b:Lcom/danikula/videocache/i;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileAdapter$r;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:Landroid/widget/LinearLayout$LayoutParams;

.field g:Landroid/widget/LinearLayout$LayoutParams;

.field private h:Lcom/join/mgps/adapter/ForumProfileAdapter$j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->e:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->h:Lcom/join/mgps/adapter/ForumProfileAdapter$j;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->c:Landroid/content/Context;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->d:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/join/android/app/component/optimizetext/b;

    invoke-direct {v0, p1}, Lcom/join/android/app/component/optimizetext/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileAdapter;->m(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->b:Lcom/danikula/videocache/i;

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumProfileAdapter;->o()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/ForumProfileAdapter;)Lcom/join/mgps/adapter/ForumProfileAdapter$j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->h:Lcom/join/mgps/adapter/ForumProfileAdapter$j;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/ForumProfileAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->c:Landroid/content/Context;

    return-object p0
.end method

.method private f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const-string p3, "0"

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/ForumProfileAdapter$k;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileAdapter$k;

    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumProfileAdapter$k;-><init>(Lcom/join/mgps/adapter/ForumProfileAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->c:Landroid/content/Context;

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

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumProfileAdapter$k;->b:Landroid/widget/TextView;

    const v2, 0x7f090524

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumProfileAdapter$k;->c:Landroid/widget/TextView;

    const v2, 0x7f090513

    .line 6
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumProfileAdapter$k;->d:Landroid/widget/TextView;

    const v2, 0x7f09051d

    .line 7
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumProfileAdapter$k;->e:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$e;

    if-nez p1, :cond_1

    return-object p2

    .line 10
    :cond_1
    iget-boolean v2, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$e;->h:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    const v5, 0x7f090c3a

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :goto_1
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumProfileAdapter$k;->b:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$e;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$e;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumProfileAdapter$k;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 16
    :cond_3
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumProfileAdapter$k;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 17
    :goto_2
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumProfileAdapter$k;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$e;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumProfileAdapter$k;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$e;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$e;->g:Z

    iget v0, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$e;->e:I

    invoke-direct {p0, p2, p3, v0}, Lcom/join/mgps/adapter/ForumProfileAdapter;->p(Landroid/view/View;ZI)V

    .line 20
    iget p3, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$e;->a:I

    .line 21
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumProfileAdapter$k;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v2, Lcom/join/mgps/adapter/ForumProfileAdapter$b;

    invoke-direct {v2, p0, p3}, Lcom/join/mgps/adapter/ForumProfileAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumProfileAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {p0, p2, p3}, Lcom/join/mgps/adapter/ForumProfileAdapter;->y(Landroid/view/View;I)V

    .line 23
    iget v0, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$e;->f:I

    .line 24
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumProfileAdapter$k;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/join/mgps/adapter/ForumProfileAdapter;->x(Landroid/view/View;I)V

    .line 25
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$e;->g:Z

    .line 26
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$e;->e:I

    .line 27
    iget-object v1, v1, Lcom/join/mgps/adapter/ForumProfileAdapter$k;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, p3, v0, p1}, Lcom/join/mgps/adapter/ForumProfileAdapter;->A(Landroid/view/View;IZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method private g(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileAdapter$l;-><init>(Lcom/join/mgps/adapter/ForumProfileAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->c:Landroid/content/Context;

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

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->f:Landroid/view/View;

    const v0, 0x7f090511

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09051b

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->c:Landroid/widget/TextView;

    const v0, 0x7f090510

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->d:Landroid/widget/TextView;

    const v0, 0x7f090521

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->e:Landroid/widget/TextView;

    const v0, 0x7f0904f6

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f09051a

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->g:Landroid/widget/ImageView;

    const v0, 0x7f090b5a

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->j:Landroid/widget/ImageView;

    const v0, 0x7f091298

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/VipView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->i:Lcom/join/mgps/customview/VipView;

    const v0, 0x7f090300

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->k:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_1

    return-object p2

    .line 16
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->c:Landroid/content/Context;

    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->c:Landroid/widget/TextView;

    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;->k:I

    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;->l:I

    const v4, 0x7f06011d

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->M2(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 17
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->i:Lcom/join/mgps/customview/VipView;

    iget v1, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;->k:I

    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;->l:I

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
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->h:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 20
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;->a:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 22
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->c:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->d:Landroid/widget/TextView;

    iget-wide v3, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;->d:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;->e:Z

    if-eqz v0, :cond_3

    .line 26
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 27
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    :goto_3
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;->i:Z

    if-eqz v0, :cond_4

    .line 29
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 30
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    :goto_4
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;->j:Z

    if-eqz v0, :cond_5

    .line 32
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 33
    :cond_5
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    :goto_5
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v3, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 35
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v3, Lcom/join/mgps/adapter/ForumProfileAdapter$a;

    invoke-direct {v3, p0, p1}, Lcom/join/mgps/adapter/ForumProfileAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumProfileAdapter;Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget v0, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;->f:I

    .line 37
    invoke-virtual {p0, p2, v0}, Lcom/join/mgps/adapter/ForumProfileAdapter;->y(Landroid/view/View;I)V

    .line 38
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3, v0}, Lcom/join/mgps/adapter/ForumProfileAdapter;->C(Landroid/view/View;I)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 39
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v3, v0, v1

    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->c:Landroid/widget/TextView;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x2

    iget-object v5, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->d:Landroid/widget/TextView;

    aput-object v5, v0, v3

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->S0([Landroid/view/View;)V

    new-array v0, v4, [Landroid/view/View;

    .line 40
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->i:Lcom/join/mgps/customview/VipView;

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->U0([Landroid/view/View;)V

    .line 41
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;->n:Ljava/lang/String;

    .line 42
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;->o:Ljava/lang/String;

    .line 43
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->k:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 45
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080436

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    const-string v1, "#"

    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const-string p1, "#2fccdf"

    .line 51
    :goto_6
    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 52
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 53
    :cond_7
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$l;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_7
    return-object p2
.end method

.method private h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileAdapter$m;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileAdapter$m;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileAdapter$m;-><init>(Lcom/join/mgps/adapter/ForumProfileAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->c:Landroid/content/Context;

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

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$m;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f090708

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$m;->b:Landroid/widget/TextView;

    const v0, 0x7f090745

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$m;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090746

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$m;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090747

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$m;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$g;

    if-nez p1, :cond_1

    return-object p2

    .line 11
    :cond_1
    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/ForumProfileAdapter;->q(Lcom/join/mgps/adapter/ForumProfileAdapter$m;Lcom/join/mgps/adapter/ForumProfileAdapter$r$g;)V

    .line 12
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$g;->c:I

    .line 13
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumProfileAdapter;->y(Landroid/view/View;I)V
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

.method private i(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const-string p3, ""

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumProfileAdapter$o;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileAdapter$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileAdapter$o;-><init>(Lcom/join/mgps/adapter/ForumProfileAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->c:Landroid/content/Context;

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

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileAdapter$o;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$h;

    if-nez p1, :cond_1

    return-object p2

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$h;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object v1

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    invoke-virtual {v1, p1}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 9
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileAdapter$o;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$h;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->setLayout(Landroid/text/Layout;)V

    .line 10
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileAdapter$o;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    invoke-static {p3}, Lcom/join/mgps/Util/i0;->X0(Landroid/view/View;)V

    .line 11
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$h;->c:I

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumProfileAdapter;->y(Landroid/view/View;I)V
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

.method private j(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileAdapter$p;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileAdapter$p;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileAdapter$p;-><init>(Lcom/join/mgps/adapter/ForumProfileAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->c:Landroid/content/Context;

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

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$p;->b:Landroid/widget/Button;

    const v0, 0x7f090522

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$p;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$i;

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$p;->c:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$i;->b:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$i;->a:Z

    iget-boolean v4, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$i;->e:Z

    iget-object v5, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$i;->f:Ljava/lang/String;

    iget-object v6, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$i;->g:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumProfileAdapter;->s(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V

    .line 9
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r$i;->c:I

    .line 10
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumProfileAdapter;->y(Landroid/view/View;I)V
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

.method private k(Landroid/content/Context;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->e:I

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
    iput p1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->e:I

    .line 6
    :cond_1
    iget p1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->e:I

    return p1
.end method

.method private l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileAdapter$q;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileAdapter$q;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileAdapter$q;-><init>(Lcom/join/mgps/adapter/ForumProfileAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->c:Landroid/content/Context;

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

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$q;->d:Landroid/widget/FrameLayout;

    const v0, 0x7f09014c

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$q;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumProfileAdapter$r$j;

    if-nez v0, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->c:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/ForumProfileAdapter;->k(Landroid/content/Context;)I

    .line 9
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileAdapter$r$j;->b:Ljava/lang/String;

    .line 10
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileAdapter$r$j;->a:Ljava/lang/String;

    .line 11
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$q;->d:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    .line 12
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileAdapter$q;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f080cc9

    invoke-static {p3, v2, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 13
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 14
    new-instance p3, Lcom/join/android/app/component/video/c$k;

    invoke-direct {p3, p1, v1, v0}, Lcom/join/android/app/component/video/c$k;-><init>(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-object p2
.end method

.method private o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->f:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileAdapter;->n()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->f:Landroid/widget/LinearLayout$LayoutParams;

    :cond_0
    return-void
.end method

.method private p(Landroid/view/View;ZI)V
    .locals 2

    const v0, 0x7f09051d

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09051e

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

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

    goto :goto_0

    :cond_0
    const p2, 0x7f080c9c

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private q(Lcom/join/mgps/adapter/ForumProfileAdapter$m;Lcom/join/mgps/adapter/ForumProfileAdapter$r$g;)V
    .locals 11

    const/16 v0, 0x8

    if-eqz p2, :cond_7

    .line 1
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumProfileAdapter$r$g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->f:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileAdapter;->n()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->f:Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    :cond_1
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumProfileAdapter$r$g;->b:Ljava/util/List;

    .line 5
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$m;->b:Landroid/widget/TextView;

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
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$m;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v2, v9, v3

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$m;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v4, 0x1

    aput-object v2, v9, v4

    const/4 v2, 0x2

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$m;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object p1, v9, v2

    const/4 p1, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge p1, v8, :cond_6

    .line 11
    aget-object v3, v9, p1

    .line 12
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumProfileAdapter$r$g;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_3

    .line 13
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 14
    :cond_3
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumProfileAdapter$r$g;->a:Ljava/util/List;

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

    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/adapter/ForumProfileAdapter;->u(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V

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

    invoke-virtual {p0, v3, p1, v4, v2}, Lcom/join/mgps/adapter/ForumProfileAdapter;->B(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    return-void

    .line 19
    :cond_7
    :goto_3
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileAdapter$m;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private r(Landroid/view/View;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v1

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 3
    :goto_0
    invoke-virtual {p2, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPraise(I)V

    xor-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_praise(Z)V

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v0

    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lcom/join/mgps/adapter/ForumProfileAdapter;->p(Landroid/view/View;ZI)V

    return-void
.end method

.method private s(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
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

    .line 1
    invoke-static/range {p1 .. p6}, Lcom/join/mgps/Util/i0;->w1(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;IZI)V
    .locals 0

    .line 1
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileAdapter$h;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/ForumProfileAdapter$h;-><init>(Lcom/join/mgps/adapter/ForumProfileAdapter;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method B(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->f:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileAdapter;->n()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->f:Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->c:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->f:Landroid/widget/LinearLayout$LayoutParams;

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
    new-instance p2, Lcom/join/mgps/adapter/ForumProfileAdapter$d;

    invoke-direct {p2, p0, p4}, Lcom/join/mgps/adapter/ForumProfileAdapter$d;-><init>(Lcom/join/mgps/adapter/ForumProfileAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public C(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileAdapter$g;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileAdapter$g;-><init>(Lcom/join/mgps/adapter/ForumProfileAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method c(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->g:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-int p1, p1

    mul-int/lit8 p1, p1, 0x6

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 5
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->g:Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->g:Landroid/widget/LinearLayout$LayoutParams;

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileAdapter$r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->d:Ljava/util/List;

    return-object v0
.end method

.method public e()Lcom/join/android/app/component/optimizetext/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->d:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileAdapter$r;->a()Ljava/lang/Object;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileAdapter$r;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileAdapter$r;->b()Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileAdapter;->g(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileAdapter;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;->POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileAdapter;->h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;->POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileAdapter;->l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 10
    :cond_3
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileAdapter;->i(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 12
    :cond_4
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileAdapter;->j(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_5
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public m(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/MApplication;->p(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object p1

    return-object p1
.end method

.method n()Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->c:Landroid/content/Context;

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
    iget-object v5, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->c:Landroid/content/Context;

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

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public t(Lcom/join/mgps/adapter/ForumProfileAdapter$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->h:Lcom/join/mgps/adapter/ForumProfileAdapter$j;

    return-void
.end method

.method u(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->f:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileAdapter;->n()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->f:Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->c:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->f:Landroid/widget/LinearLayout$LayoutParams;

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
    new-instance p2, Lcom/join/mgps/adapter/ForumProfileAdapter$c;

    invoke-direct {p2, p0, p5, p4}, Lcom/join/mgps/adapter/ForumProfileAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumProfileAdapter;Ljava/util/List;I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public v(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileAdapter$r;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->d:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->d:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public w(Lcom/join/android/app/component/optimizetext/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    return-void
.end method

.method public x(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileAdapter$f;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumProfileAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public y(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileAdapter$e;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileAdapter$e;-><init>(Lcom/join/mgps/adapter/ForumProfileAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public z(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/ForumProfileAdapter$i;

    invoke-direct {p2, p0, p3}, Lcom/join/mgps/adapter/ForumProfileAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumProfileAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
