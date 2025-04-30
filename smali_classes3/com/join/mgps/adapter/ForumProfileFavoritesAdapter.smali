.class public Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ForumProfileFavoritesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$s;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$f0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$l0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;
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
            "Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/join/android/app/component/video/c;

.field f:I

.field g:Landroid/widget/LinearLayout$LayoutParams;

.field h:Landroid/widget/LinearLayout$LayoutParams;

.field i:Landroid/widget/LinearLayout$LayoutParams;

.field private j:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation
.end field

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->f:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->j:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->k:Ljava/util/List;

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->l:I

    .line 6
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->m:I

    .line 7
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->n:I

    .line 8
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->o:I

    .line 9
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->p:I

    .line 10
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->q:I

    .line 11
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->e:Lcom/join/android/app/component/video/c;

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Ljava/util/List;

    .line 14
    new-instance p2, Lcom/join/android/app/component/optimizetext/b;

    invoke-direct {p2, p1}, Lcom/join/android/app/component/optimizetext/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    .line 15
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->y(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b:Lcom/danikula/videocache/i;

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d()V

    .line 17
    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->A()V

    return-void
.end method

.method private A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->g:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->z()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->g:Landroid/widget/LinearLayout$LayoutParams;

    :cond_0
    return-void
.end method

.method private B(Landroid/widget/TextView;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$f;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private C(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;ZII)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->d:Landroid/widget/TextView;

    .line 2
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->i:Landroid/widget/ImageView;

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
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h;

    invoke-direct {p3, p0, p1, p4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private E(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;)V
    .locals 11

    const/16 v0, 0x8

    if-eqz p2, :cond_7

    .line 1
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->g:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->z()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->g:Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    :cond_1
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;->b:Ljava/util/List;

    .line 5
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->b:Landroid/widget/TextView;

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
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v2, v9, v3

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v4, 0x1

    aput-object v2, v9, v4

    const/4 v2, 0x2

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object p1, v9, v2

    const/4 p1, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge p1, v8, :cond_6

    .line 11
    aget-object v3, v9, p1

    .line 12
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_3

    .line 13
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 14
    :cond_3
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;->a:Ljava/util/List;

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

    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->O(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V

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

    invoke-virtual {p0, v3, p1, v4, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Z(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    return-void

    .line 19
    :cond_7
    :goto_3
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private F(Landroid/view/View;ZI)V
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

.method private G(Landroid/view/View;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
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

    invoke-direct {p0, p1, v0, p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->F(Landroid/view/View;ZI)V

    return-void
.end method

.method private H(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 10
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

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->I(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method private I(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V
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
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p6}, Lcom/join/mgps/Util/i0;->h(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 3
    invoke-static {p1, v0, p3, p4, p5}, Lcom/join/mgps/Util/i0;->g(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;ZZLjava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0, p7, p8, p9}, Lcom/join/mgps/Util/i0;->i(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;ILjava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private W(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float p2, p2, v1

    float-to-int p2, p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, p2

    const/high16 p2, 0x3f800000    # 1.0f

    int-to-float v1, v0

    mul-float v1, v1, p2

    const p2, 0x3fe66666    # 1.8f

    div-float/2addr v1, p2

    float-to-int p2, v1

    .line 7
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 9
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 10
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private X(Landroid/view/View;Ljava/lang/CharSequence;)V
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

.method private Y(Landroid/view/View;I)V
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

.method static synthetic a(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->j:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

    return-object p0
.end method

.method private b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v2, 0x11

    if-ne p2, v2, :cond_1

    .line 7
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c042e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090514

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->b:Landroid/view/View;

    const v0, 0x7f0911f0

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->c:Landroid/widget/TextView;

    const v0, 0x7f091000

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->d:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;

    if-nez p1, :cond_1

    return-object p2

    .line 9
    :cond_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;->a:Z

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :goto_1
    iget v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 13
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->c:Landroid/widget/TextView;

    const-string v1, "\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 14
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->c:Landroid/widget/TextView;

    const-string v1, "\u5e16\u5b50"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 15
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->c:Landroid/widget/TextView;

    const-string v1, "\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_2
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    iput-object v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;->c:Ljava/lang/String;

    .line 17
    :cond_5
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->d:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;->c:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method private k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string p3, ""

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c03ea

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090126

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f09075b

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->g:Landroid/view/View;

    const v1, 0x7f090625

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->b:Landroid/widget/TextView;

    const v1, 0x7f090672

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->c:Landroid/widget/TextView;

    const v1, 0x7f0908bc

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->d:Landroid/widget/TextView;

    const v1, 0x7f0902a0

    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->e:Landroid/widget/TextView;

    const v1, 0x7f090524

    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->h:Landroid/widget/TextView;

    const v1, 0x7f09038e

    .line 11
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->f:Landroid/view/View;

    const v1, 0x7f09051e

    .line 12
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->i:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;

    if-eqz p1, :cond_5

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 15
    :cond_1
    iget-boolean v1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->b:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    .line 16
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :goto_1
    iget v1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->a:I

    if-nez v1, :cond_3

    .line 19
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 21
    :cond_3
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 22
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->g:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->b:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->c:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->e:I

    invoke-static {v3}, Lcom/join/mgps/Util/i0;->R(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->f:I

    invoke-static {v3}, Lcom/join/mgps/Util/i0;->R(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->i:I

    invoke-static {v3}, Lcom/join/mgps/Util/i0;->R(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->k:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 29
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget p3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->g:I

    invoke-virtual {p0, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->R(Landroid/view/View;I)V

    .line 31
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->j:Z

    iget v1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->e:I

    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->g:I

    invoke-direct {p0, v0, p3, v1, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->C(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_5
    :goto_3
    return-object p2

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-object p2
.end method

.method private l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    move-object/from16 v7, p0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;

    move-object/from16 v8, p2

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;

    invoke-direct {v0, v7}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 3
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c03eb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090e9a

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->b:Landroid/view/View;

    const v2, 0x7f090753

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->c:Landroid/view/View;

    const v2, 0x7f090745

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f090746

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f090747

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f090708

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->g:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v8, v1

    .line 11
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;

    if-nez v9, :cond_1

    return-object v8

    .line 12
    :cond_1
    iget-object v1, v9, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;->a:Ljava/util/List;

    const/16 v10, 0x8

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v11, 0x0

    .line 13
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v12, v9, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;->b:Ljava/util/List;

    .line 15
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->g:Landroid/widget/TextView;

    if-eqz v12, :cond_3

    .line 16
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    move v13, v2

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    const/4 v14, 0x3

    if-le v13, v14, :cond_4

    .line 17
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
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

    .line 19
    :cond_4
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    :goto_2
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->g:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_5

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->z()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    iput-object v1, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->g:Landroid/widget/LinearLayout$LayoutParams;

    :cond_5
    new-array v15, v14, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 22
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v1, v15, v11

    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v6, 0x1

    aput-object v1, v15, v6

    const/4 v1, 0x2

    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v0, v15, v1

    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v0, v14, :cond_a

    .line 23
    aget-object v2, v15, v0

    .line 24
    iget-object v1, v9, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_6

    .line 25
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v17, 0x1

    goto/16 :goto_4

    .line 26
    :cond_6
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    iget-object v1, v9, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 28
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-static {v4}, Lcom/join/mgps/Util/i0;->i0(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_7

    if-ne v13, v6, :cond_7

    if-eqz v1, :cond_7

    .line 31
    aget-object v3, v1, v11

    .line 32
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_7

    aget-object v1, v1, v6

    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_7

    sub-int v5, v0, v16

    move-object/from16 v1, p0

    move v3, v0

    const/16 v17, 0x1

    move-object v6, v12

    .line 34
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->N(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V

    goto :goto_4

    :cond_7
    const/16 v17, 0x1

    sub-int v5, v0, v16

    move-object/from16 v1, p0

    move v3, v0

    move-object v6, v12

    .line 35
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->O(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V

    goto :goto_4

    :cond_8
    const/16 v17, 0x1

    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v16, v16, 0x1

    .line 37
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v2, v0, v3, v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Z(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x1

    goto :goto_3

    .line 38
    :cond_a
    iget v0, v9, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;->c:I

    invoke-virtual {v7, v8, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->R(Landroid/view/View;I)V

    goto :goto_6

    .line 39
    :cond_b
    :goto_5
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-object v8
.end method

.method private m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const-string p3, ""

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c03ec

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090a98

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    const v1, 0x7f09038e

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->c:Landroid/view/View;

    const v1, 0x7f090e9a

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->d:Landroid/view/View;

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$e;

    if-nez p1, :cond_1

    return-object p2

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$e;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    invoke-virtual {v1, p1}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 11
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$e;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->setLayout(Landroid/text/Layout;)V

    .line 12
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    invoke-static {p3}, Lcom/join/mgps/Util/i0;->X0(Landroid/view/View;)V

    .line 13
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$e;->a:Z

    if-eqz p3, :cond_3

    .line 14
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->d:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->d:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :goto_1
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$e;->d:I

    .line 19
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->R(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method private n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c03ee

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f091263

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;->b:Landroid/widget/FrameLayout;

    const v0, 0x7f09014c

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$g;

    if-nez v0, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$g;->b:Ljava/lang/String;

    .line 9
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$g;->a:Ljava/lang/String;

    .line 10
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;->b:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    .line 11
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->q:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 12
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f080cc9

    invoke-static {v2, v3, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 14
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 15
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 16
    new-instance p3, Lcom/join/android/app/component/video/c$k;

    invoke-direct {p3, p1, v1, v0}, Lcom/join/android/app/component/video/c$k;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->e:Lcom/join/android/app/component/video/c;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p3, v1}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$k;[Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-object p2
.end method

.method private o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const-string p3, "0"

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;

    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

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

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->b:Landroid/widget/TextView;

    const v2, 0x7f090524

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->c:Landroid/widget/TextView;

    const v2, 0x7f090513

    .line 6
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->d:Landroid/widget/TextView;

    const v2, 0x7f09051d

    .line 7
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->e:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;

    if-nez p1, :cond_1

    return-object p2

    .line 10
    :cond_1
    iget-boolean v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->h:Z

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
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->b:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 16
    :cond_3
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 17
    :goto_2
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->g:Z

    iget v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->e:I

    invoke-direct {p0, p2, p3, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->F(Landroid/view/View;ZI)V

    .line 20
    iget p3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->a:I

    .line 21
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$m;

    invoke-direct {v2, p0, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$m;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {p0, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->T(Landroid/view/View;I)V

    .line 23
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-boolean v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->g:Z

    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->e:I

    invoke-direct {p0, v0, v2, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->F(Landroid/view/View;ZI)V

    .line 24
    iget-object p1, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->V(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method private p(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21

    move-object/from16 v7, p0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;

    move-object/from16 v8, p2

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;

    invoke-direct {v0, v7}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 3
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c041b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090a39

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f090a37

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->c:Landroid/widget/TextView;

    const v2, 0x7f090a3a

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    const v2, 0x7f090a3b

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->e:Landroid/widget/TextView;

    const v2, 0x7f090a38

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->f:Landroid/widget/TextView;

    const v2, 0x7f0908cd

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->g:Landroid/widget/LinearLayout;

    const v2, 0x7f09100c

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->h:Landroid/widget/LinearLayout;

    const v2, 0x7f0900ea

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->i:Landroid/widget/TextView;

    const v2, 0x7f0909b2

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->j:Landroid/widget/TextView;

    const v2, 0x7f090c59

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->k:Landroid/widget/ProgressBar;

    const v2, 0x7f090c60

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->l:Landroid/widget/ProgressBar;

    const v2, 0x7f0908be

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->m:Landroid/view/View;

    const v2, 0x7f090d07

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->n:Landroid/view/View;

    const v2, 0x7f09038e

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->o:Landroid/view/View;

    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v8, v1

    .line 19
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;

    if-nez v1, :cond_1

    return-object v8

    .line 20
    :cond_1
    iget-object v9, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;->c:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 21
    iget-object v10, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;->b:Ljava/lang/String;

    .line 22
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v11

    .line 23
    iget-boolean v1, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;->a:Z

    const/4 v12, 0x0

    const/16 v13, 0x8

    if-eqz v1, :cond_2

    .line 24
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 25
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->o:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 26
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v13, :cond_3

    .line 27
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->o:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    const v2, 0x7f08032f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 29
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b2a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 30
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 31
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 32
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->c:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->f:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_desc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_size()Ljava/lang/String;

    move-result-object v16

    .line 36
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_ico_remote()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/MyImageLoader;->z(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 37
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_tag_info()Ljava/util/List;

    move-result-object v14

    .line 38
    invoke-direct {v7, v0, v12}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 39
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 40
    invoke-virtual {v7, v0, v15}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->L(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;Ljava/lang/Object;)V

    goto :goto_3

    .line 41
    :cond_4
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v1

    if-lez v1, :cond_5

    .line 42
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v1

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 43
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->K(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 44
    :cond_5
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDown_status()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->J(Landroid/view/View;I)V

    .line 45
    :goto_2
    iget-object v6, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    new-instance v5, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i;

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v4, v15

    move-object v12, v5

    move-object v5, v10

    move-object v13, v6

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Lcom/join/mgps/dto/ForumBean$GameInfo;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
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

    if-eqz v1, :cond_6

    .line 47
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->h:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    const v2, 0x7f080a62

    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 50
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    const-string v2, "\u5f00\u59cb"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    iget-object v2, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_4

    .line 52
    :cond_6
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->h:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->h:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-static {v14, v1, v2}, Lcom/join/mgps/Util/i0;->c(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 54
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getScore()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDown_count()I

    move-result v1

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v17

    const/16 v18, 0x0

    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->h:Landroid/widget/LinearLayout;

    iget-object v3, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    move-object v4, v15

    move v15, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-static/range {v14 .. v20}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 55
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    invoke-static {v1, v8, v4}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 56
    :goto_4
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->n:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j;

    invoke-direct {v1, v7, v10, v11, v9}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-object v8
.end method

.method private q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

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

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->f:Landroid/view/View;

    const v0, 0x7f090511

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09051b

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->c:Landroid/widget/TextView;

    const v0, 0x7f090510

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->d:Landroid/widget/TextView;

    const v0, 0x7f090521

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->e:Landroid/widget/TextView;

    const v0, 0x7f0904f6

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->i:Landroid/widget/RelativeLayout;

    const v0, 0x7f09051a

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->h:Landroid/widget/ImageView;

    const v0, 0x7f091298

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/VipView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->j:Lcom/join/mgps/customview/VipView;

    const v0, 0x7f090300

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->k:Landroid/widget/TextView;

    .line 13
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;

    if-nez p1, :cond_1

    return-object p2

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->c:Landroid/widget/TextView;

    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->k:I

    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->l:I

    const v4, 0x7f06011d

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->M2(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 16
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->j:Lcom/join/mgps/customview/VipView;

    iget v1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->k:I

    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 17
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->i:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->a:Z

    .line 19
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->f:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->c:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->d:Landroid/widget/TextView;

    iget-wide v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->d:J

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-boolean v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->e:Z

    if-eqz v2, :cond_2

    .line 23
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 24
    :cond_2
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    :goto_1
    iget-boolean v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->j:Z

    if-eqz v2, :cond_3

    .line 26
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 27
    :cond_3
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    :goto_2
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->b:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 29
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v4, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$l;

    invoke-direct {v4, p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$l;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->f:I

    .line 31
    invoke-virtual {p0, p2, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->T(Landroid/view/View;I)V

    .line 32
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v4, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->a0(Landroid/view/View;I)V

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    .line 33
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v4, v2, v1

    iget-object v4, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->c:Landroid/widget/TextView;

    aput-object v4, v2, v0

    const/4 v4, 0x2

    iget-object v5, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->d:Landroid/widget/TextView;

    aput-object v5, v2, v4

    invoke-static {v2}, Lcom/join/mgps/Util/i0;->S0([Landroid/view/View;)V

    new-array v0, v0, [Landroid/view/View;

    .line 34
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->j:Lcom/join/mgps/customview/VipView;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->U0([Landroid/view/View;)V

    .line 35
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->a(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->b(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;)Ljava/lang/String;

    move-result-object p1

    .line 37
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->k:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 39
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080436

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    const-string v1, "#"

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const-string p1, "#2fccdf"

    .line 45
    :goto_3
    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 46
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 47
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_4
    return-object p2
.end method

.method private r(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

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

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f090708

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->b:Landroid/widget/TextView;

    const v0, 0x7f090745

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090746

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090747

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;

    if-nez p1, :cond_1

    return-object p2

    .line 11
    :cond_1
    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->E(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;)V

    .line 12
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;->c:I

    .line 13
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->T(Landroid/view/View;I)V
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

.method private s(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const-string p3, ""

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g0;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

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

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g0;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$l;

    if-nez p1, :cond_1

    return-object p2

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$l;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object v1

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    invoke-virtual {v1, p1}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 9
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g0;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$l;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->setLayout(Landroid/text/Layout;)V

    .line 10
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g0;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    invoke-static {p3}, Lcom/join/mgps/Util/i0;->X0(Landroid/view/View;)V

    .line 11
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$l;->c:I

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->T(Landroid/view/View;I)V
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

.method private t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c03ed

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090159

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->b:Landroid/widget/Button;

    const v0, 0x7f090ef9

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->c:Landroid/widget/TextView;

    const v0, 0x7f090efa

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->e:Landroid/view/View;

    const v0, 0x7f090514

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->d:Landroid/view/View;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;

    if-nez p1, :cond_1

    return-object p2

    .line 10
    :cond_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->a:Z

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 14
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->c:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->c:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->b:Z

    iget-boolean v6, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->f:Z

    iget-object v7, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->g:Ljava/lang/String;

    iget-object v8, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->h:Ljava/util/List;

    iget-object v9, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->i:Ljava/util/List;

    iget v10, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->e:I

    iget-object v11, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->j:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->I(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V

    .line 15
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->d:I

    .line 16
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->c:Landroid/widget/TextView;

    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->B(Landroid/widget/TextView;I)V

    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->R(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method private u(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

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

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i0;->b:Landroid/widget/Button;

    const v0, 0x7f090522

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i0;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i0;->c:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;->b:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;->a:Z

    iget-boolean v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;->e:Z

    iget-object v5, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;->f:Ljava/lang/String;

    iget-object v6, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;->g:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->H(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V

    .line 9
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;->c:I

    .line 10
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->T(Landroid/view/View;I)V
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

.method private v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

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

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->b:Landroid/widget/TextView;

    const v0, 0x7f090521

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->c:Landroid/widget/TextView;

    const v0, 0x7f090512

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->d:Landroid/widget/Button;

    const v0, 0x7f09051c

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->e:Landroid/widget/ImageView;

    const v0, 0x7f090523

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->f:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$n;

    if-nez p1, :cond_1

    return-object p2

    .line 11
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$n;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->b:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$n;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$n;->c:Z

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 17
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 18
    :goto_2
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$n;->d:Z

    if-eqz v0, :cond_4

    .line 19
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 20
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    :goto_3
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$n;->e:Z

    if-eqz v0, :cond_5

    .line 22
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->f:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 23
    :cond_5
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->f:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    :goto_4
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$n;->a:I

    .line 25
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$n;

    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$n;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-object p2
.end method

.method private w(Landroid/content/Context;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->f:I

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
    iput p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->f:I

    .line 6
    :cond_1
    iget p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->f:I

    return p1
.end method

.method private x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

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

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;->c:Landroid/widget/FrameLayout;

    const v0, 0x7f09014c

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;

    if-nez v0, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->w(Landroid/content/Context;)I

    .line 9
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;->b:Ljava/lang/String;

    .line 10
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;->a:Ljava/lang/String;

    .line 11
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v2, :cond_2

    .line 12
    invoke-static {v2, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;->c:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 14
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 15
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 16
    new-instance p3, Lcom/join/android/app/component/video/c$k;

    invoke-direct {p3, p1, v1, v0}, Lcom/join/android/app/component/video/c$k;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->e:Lcom/join/android/app/component/video/c;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p3, v1}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$k;[Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-object p2
.end method


# virtual methods
.method public D(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    return-void
.end method

.method J(Landroid/view/View;I)V
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
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

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
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

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

.method K(Landroid/widget/TextView;I)V
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

.method L(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    iget-object v4, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    if-eqz v4, :cond_19

    if-nez v3, :cond_0

    goto/16 :goto_c

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
    instance-of v13, v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    if-eqz v13, :cond_3

    .line 11
    move-object v6, v3

    check-cast v6, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 12
    invoke-virtual {v6}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v8

    .line 13
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v13

    .line 14
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 15
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v15

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    :goto_0
    if-lez v15, :cond_2

    .line 16
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v14

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v15, 0x0

    :cond_2
    move-object v6, v8

    move-object v8, v13

    goto :goto_3

    .line 17
    :cond_3
    instance-of v13, v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-eqz v13, :cond_6

    .line 18
    move-object v13, v3

    check-cast v13, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 19
    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v13}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v13

    .line 20
    invoke-virtual {v13}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 21
    invoke-virtual {v13}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v14

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    :goto_1
    if-lez v14, :cond_5

    .line 22
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v15

    invoke-virtual {v13}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_2

    :cond_5
    move v15, v14

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v15, 0x0

    :goto_3
    const-string v13, "\u66f4\u65b0"

    const v14, 0x7f080a67

    if-nez v6, :cond_d

    .line 23
    invoke-static {v10}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 24
    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v6

    invoke-virtual {v6, v0, v9}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-lez v15, :cond_7

    const/16 v16, 0x0

    goto :goto_4

    :cond_7
    move/from16 v16, v6

    :goto_4
    if-eqz v16, :cond_9

    .line 25
    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    invoke-virtual {v2, v0, v9}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v2

    .line 26
    invoke-static {v8}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v2, v6, :cond_8

    .line 27
    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    invoke-direct {v1, v4, v13}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060030

    .line 29
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    goto/16 :goto_b

    :cond_8
    const v2, 0x7f080a6e

    .line 30
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1100d2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060033

    .line 32
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    goto/16 :goto_b

    .line 33
    :cond_9
    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundResource(I)V

    if-lez v15, :cond_a

    .line 34
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0, v15}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->K(Landroid/widget/TextView;I)V

    goto/16 :goto_b

    .line 35
    :cond_a
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->J(Landroid/view/View;I)V

    goto/16 :goto_b

    .line 36
    :cond_b
    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundResource(I)V

    if-lez v15, :cond_c

    .line 37
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0, v15}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->K(Landroid/widget/TextView;I)V

    goto/16 :goto_b

    .line 38
    :cond_c
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->J(Landroid/view/View;I)V

    goto/16 :goto_b

    .line 39
    :cond_d
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-lez v15, :cond_e

    const/16 v8, 0x2b

    :cond_e
    if-eqz v8, :cond_11

    const/16 v10, 0x1b

    const-string v14, "\u6682\u505c\u4e2d"

    if-eq v8, v10, :cond_16

    const/4 v10, 0x2

    const-wide/16 v17, 0x0

    const-string v9, "/"

    if-eq v8, v10, :cond_14

    const/4 v10, 0x3

    if-eq v8, v10, :cond_12

    const/4 v10, 0x5

    if-eq v8, v10, :cond_10

    const/4 v10, 0x6

    if-eq v8, v10, :cond_12

    const/4 v10, 0x7

    if-eq v8, v10, :cond_11

    const/16 v7, 0x2a

    if-eq v8, v7, :cond_10

    const/16 v7, 0x2b

    if-eq v8, v7, :cond_f

    const/16 v0, 0x11

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_b

    .line 40
    :pswitch_0
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 41
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->i:Landroid/widget/TextView;

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

    .line 42
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->j:Landroid/widget/TextView;

    const-string v7, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f080a7b

    .line 44
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u89e3\u538b"

    .line 45
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f06002a

    .line 46
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    goto/16 :goto_b

    .line 47
    :pswitch_1
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 48
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->i:Landroid/widget/TextView;

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

    .line 49
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->j:Landroid/widget/TextView;

    const-string v7, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f0803ca

    .line 51
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u89e3\u538b\u4e2d"

    .line 52
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060031

    .line 53
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    goto/16 :goto_b

    :pswitch_2
    const/4 v0, 0x0

    .line 54
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    const v0, 0x7f080a67

    .line 55
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u5b89\u88c5"

    .line 56
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060030

    .line 57
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    goto/16 :goto_b

    :pswitch_3
    const/16 v0, 0x10

    .line 58
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    const v0, 0x7f080a62

    .line 59
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u7b49\u5f85"

    .line 60
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f06002a

    .line 61
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    goto/16 :goto_b

    :pswitch_4
    const/4 v8, 0x0

    .line 62
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    const v0, 0x7f080a67

    .line 63
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 64
    invoke-direct {v1, v4, v13}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060030

    .line 65
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    goto/16 :goto_b

    :cond_f
    const v0, 0x7f080a67

    const/4 v8, 0x0

    .line 66
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 67
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    if-lez v15, :cond_18

    .line 68
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0, v15}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->K(Landroid/widget/TextView;I)V

    goto/16 :goto_b

    :cond_10
    const/4 v8, 0x0

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_a

    :cond_12
    const v0, 0x7f080a62

    goto :goto_6

    .line 69
    :goto_5
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    const v2, 0x7f080a6e

    .line 70
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1100d2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060033

    .line 72
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    goto/16 :goto_b

    .line 73
    :goto_6
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u7ee7\u7eed"

    .line 74
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f06002a

    .line 75
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    const/16 v0, 0x10

    .line 76
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 77
    :try_start_0
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v7

    cmp-long v0, v7, v17

    if-nez v0, :cond_13

    .line 78
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->i:Landroid/widget/TextView;

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

    goto :goto_7

    .line 79
    :cond_13
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->i:Landroid/widget/TextView;

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

    .line 80
    :goto_7
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    :goto_8
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 83
    :cond_14
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const v0, 0x7f080a62

    .line 84
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u6682\u505c"

    .line 85
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f06002a

    .line 86
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    const/16 v0, 0x10

    .line 87
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 88
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v7

    cmp-long v0, v7, v17

    if-nez v0, :cond_15

    .line 89
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->i:Landroid/widget/TextView;

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

    goto :goto_9

    .line 90
    :cond_15
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->i:Landroid/widget/TextView;

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

    .line 91
    :goto_9
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v7

    long-to-int v5, v7

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 92
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v2, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->j:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 94
    :cond_16
    invoke-direct {v1, v4, v14}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 95
    :goto_a
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    const v0, 0x7f080a67

    .line 96
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    if-lez v15, :cond_17

    .line 97
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0, v15}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->K(Landroid/widget/TextView;I)V

    goto :goto_b

    .line 98
    :cond_17
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->J(Landroid/view/View;I)V

    .line 99
    :cond_18
    :goto_b
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$s;

    invoke-direct {v0, v1, v3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$s;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_19
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public M(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->j:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

    return-void
.end method

.method N(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V
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

    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->m:I

    iget v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->n:I

    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->o:I

    iget v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->p:I

    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->l:I

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
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 13
    sget-object p2, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {p1, p3, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 14
    new-instance p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$o;

    invoke-direct {p2, p0, p5, p4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$o;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Ljava/util/List;I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 15
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method O(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->g:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->z()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->g:Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->g:Landroid/widget/LinearLayout$LayoutParams;

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
    new-instance p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$p;

    invoke-direct {p2, p0, p5, p4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$p;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Ljava/util/List;I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public P(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public Q(Lcom/join/android/app/component/optimizetext/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    return-void
.end method

.method public R(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public S(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public T(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public U(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e;

    invoke-direct {p2, p0, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public V(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method Z(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->g:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->z()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->g:Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->g:Landroid/widget/LinearLayout$LayoutParams;

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
    new-instance p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$q;

    invoke-direct {p2, p0, p4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$q;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public a0(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

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
    iput v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->l:I

    const v1, 0x3fe66666    # 1.8f

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v0, v2

    div-float/2addr v3, v1

    float-to-int v1, v3

    .line 7
    iput v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->q:I

    const v1, 0x3feccccd    # 1.85f

    const v3, 0x3f1d70a4    # 0.615f

    mul-float v3, v3, v0

    float-to-int v3, v3

    int-to-float v4, v3

    mul-float v4, v4, v2

    div-float/2addr v4, v1

    float-to-int v1, v4

    .line 8
    iput v3, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->m:I

    .line 9
    iput v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->n:I

    const v1, 0x3f59999a    # 0.85f

    const v3, 0x3f0a3d71    # 0.54f

    mul-float v0, v0, v3

    float-to-int v0, v0

    int-to-float v3, v0

    mul-float v3, v3, v2

    div-float/2addr v3, v1

    float-to-int v1, v3

    .line 10
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->o:I

    .line 11
    iput v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->p:I

    return-void
.end method

.method e(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->i:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v1, 0x43610000    # 225.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x43160000    # 150.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v0, v0, v3

    float-to-int v0, v0

    const/4 v3, 0x0

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    int-to-float v4, v1

    const/high16 v5, 0x3fc00000    # 1.5f

    div-float/2addr v4, v5

    float-to-int v4, v4

    if-gtz p1, :cond_2

    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    move v2, v4

    .line 3
    :goto_1
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {p1, v3, v0, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 5
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->i:Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->i:Landroid/widget/LinearLayout$LayoutParams;

    return-object p1
.end method

.method g(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;->a()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;->b()Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->r(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 10
    :cond_3
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->s(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 12
    :cond_4
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->u(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 14
    :cond_5
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_TOP:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 16
    :cond_6
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->FAVORITE_ITEM_HEADER:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 18
    :cond_7
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->GAME_ITEM:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 20
    :cond_8
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_FOOTER:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 22
    :cond_9
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_IMGS:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 24
    :cond_a
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_VIDEO:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 26
    :cond_b
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_MESSAGE:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 28
    :cond_c
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 30
    :cond_d
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->p(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_e
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20

    move-object/from16 v1, p0

    if-nez p2, :cond_0

    .line 1
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0087

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    const v3, 0x7f090a39

    .line 3
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f0905ee

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->c:Landroid/widget/ImageView;

    const v3, 0x7f090a37

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->d:Landroid/widget/TextView;

    const v3, 0x7f090cac

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->e:Landroid/widget/RelativeLayout;

    const v3, 0x7f090a3a

    .line 7
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const v3, 0x7f090a38

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->g:Landroid/widget/TextView;

    const v3, 0x7f0908cd

    .line 9
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->h:Landroid/widget/LinearLayout;

    const v3, 0x7f09100c

    .line 10
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->i:Landroid/widget/LinearLayout;

    const v3, 0x7f0900ea

    .line 11
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    const v3, 0x7f0909b2

    .line 12
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->k:Landroid/widget/TextView;

    const v3, 0x7f090c59

    .line 13
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->l:Landroid/widget/ProgressBar;

    const v3, 0x7f090c60

    .line 14
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->m:Landroid/widget/ProgressBar;

    const v3, 0x7f0908be

    .line 15
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->n:Landroid/view/View;

    const v3, 0x7f090d07

    .line 16
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->o:Landroid/view/View;

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;

    move-object v3, v2

    move-object/from16 v2, p2

    .line 19
    :goto_0
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->n:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;

    if-nez v0, :cond_1

    return-object v2

    .line 21
    :cond_1
    new-instance v5, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    iget-object v6, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a:Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 22
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a:Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 23
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->o:Landroid/view/View;

    const v6, 0x7f080d33

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 24
    invoke-virtual {v5}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 25
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    move-result v6

    const/4 v7, 0x1

    const/16 v8, 0x8

    if-ne v6, v7, :cond_2

    .line 26
    iget-object v6, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->c:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 27
    :cond_2
    iget-object v6, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->c:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    :goto_1
    iget-object v6, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->d:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v6, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    mul-double v9, v9, v11

    mul-double v9, v9, v11

    double-to-long v9, v9

    .line 31
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v6

    .line 32
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, ""

    if-eqz v11, :cond_3

    move-object v6, v12

    .line 33
    :cond_3
    iget-object v11, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v14

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v16

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v17

    iget-object v6, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->i:Landroid/widget/LinearLayout;

    iget-object v11, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    invoke-static/range {v13 .. v19}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 36
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v6

    invoke-static {v6, v2, v0}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 37
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v13}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const v11, 0x7f06002a

    const v12, 0x7f080a62

    if-eqz v6, :cond_4

    .line 38
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    .line 39
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 40
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const-string v4, "\u5f00\u59cb"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_4
    const-string v6, "\u66f4\u65b0"

    const v8, 0x7f1100d2

    const v13, 0x7f080a6e

    const v14, 0x7f080a67

    if-nez v0, :cond_9

    .line 44
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v9}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 45
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 46
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v9, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 47
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v9

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_5

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    if-eqz v4, :cond_7

    .line 48
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 49
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 50
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 51
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const v4, -0x8d57ef

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 53
    :cond_6
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 54
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const v4, -0xa81da

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 56
    :cond_7
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 57
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 58
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_7

    .line 59
    :cond_8
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 60
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 61
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_7

    .line 62
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " dd "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v15, "infoo"

    invoke-static {v15, v4}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    .line 64
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v15

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v7

    const/16 v15, 0x2b

    if-lez v7, :cond_a

    const/16 v4, 0x2b

    :cond_a
    if-eqz v4, :cond_11

    const/16 v7, 0x1b

    const-string v8, "\u6682\u505c\u4e2d"

    if-eq v4, v7, :cond_10

    const/4 v7, 0x2

    const-wide/16 v16, 0x0

    const-string v13, "/"

    if-eq v4, v7, :cond_e

    const/4 v7, 0x3

    if-eq v4, v7, :cond_c

    const/4 v7, 0x5

    if-eq v4, v7, :cond_b

    const/4 v7, 0x6

    if-eq v4, v7, :cond_c

    const/4 v7, 0x7

    if-eq v4, v7, :cond_11

    const/16 v7, 0x2a

    if-eq v4, v7, :cond_b

    if-eq v4, v15, :cond_11

    const v7, 0x7f060030

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_7

    .line 65
    :pswitch_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4, v6}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 66
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->k:Landroid/widget/TextView;

    const-string v6, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 69
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const v4, 0x7f080a7b

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 70
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const-string v4, "\u89e3\u538b"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060031

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 72
    :pswitch_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4, v6}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 73
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->k:Landroid/widget/TextView;

    const-string v6, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 76
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const v4, 0x7f0803ca

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 77
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const-string v4, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const v4, -0x4a4a4b

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 79
    :pswitch_2
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 80
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const-string v4, "\u5b89\u88c5"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 83
    :pswitch_3
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 84
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const-string v6, "\u7b49\u5f85"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 87
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :try_start_0
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    :goto_3
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->k:Landroid/widget/TextView;

    const-string v4, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 91
    :pswitch_4
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 92
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 95
    :cond_b
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const v4, 0x7f080a6e

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 96
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f1100d2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060033

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 99
    :cond_c
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    .line 100
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 101
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const-string v6, "\u7ee7\u7eed"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 104
    :try_start_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v6

    cmp-long v4, v6, v16

    if-nez v4, :cond_d

    .line 105
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 106
    :cond_d
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_4
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    :goto_5
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 110
    :cond_e
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 111
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 112
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const-string v6, "\u6682\u505c"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 115
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v6

    cmp-long v4, v6, v16

    if-nez v4, :cond_f

    .line 116
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 117
    :cond_f
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_6
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 119
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->k:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 121
    :cond_10
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 122
    :cond_11
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 123
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 124
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 125
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 127
    :goto_7
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->e:Landroid/widget/RelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 128
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->e:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;

    invoke-direct {v3, v1, v5}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Ljava/util/List;

    return-object v0
.end method

.method public j()Lcom/join/android/app/component/optimizetext/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public y(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/MApplication;->p(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object p1

    return-object p1
.end method

.method z()Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

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
    iget-object v5, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Landroid/content/Context;

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
