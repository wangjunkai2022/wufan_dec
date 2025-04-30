.class public Lcom/join/mgps/adapter/ForumProfileCommentAdapter;
.super Landroid/widget/BaseAdapter;
.source "ForumProfileCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$e;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$h;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$j;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/ForumProfileCommentAdapter;)Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->c:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;

    return-object p0
.end method

.method private c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;-><init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c042f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090c3b

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090c3c

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$a;

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget v0, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$a;->a:I

    invoke-direct {p0, p2, v0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->f(Landroid/view/View;I)V

    .line 9
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 13
    :goto_1
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;->c:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$a;->c:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p3, p1, v0}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method private d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0430

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090514

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->f:Landroid/view/View;

    const v0, 0x7f090511

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09051b

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->c:Landroid/widget/TextView;

    const v0, 0x7f090510

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->d:Landroid/widget/TextView;

    const v0, 0x7f090521

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->e:Landroid/widget/TextView;

    const v0, 0x7f09051a

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->g:Landroid/widget/ImageView;

    const v0, 0x7f090b5a

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->j:Landroid/widget/ImageView;

    const v0, 0x7f0904f6

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f091298

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/VipView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->i:Lcom/join/mgps/customview/VipView;

    const v0, 0x7f090300

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->k:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;

    if-nez p1, :cond_1

    return-object p2

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->a:Landroid/content/Context;

    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->c:Landroid/widget/TextView;

    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->j:I

    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->k:I

    const v4, 0x7f06011d

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->M2(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 17
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->i:Lcom/join/mgps/customview/VipView;

    iget v1, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->j:I

    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 18
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->h:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 19
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->a:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 21
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->c:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->d:Landroid/widget/TextView;

    iget-wide v3, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->d:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 25
    iget-boolean v3, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->e:Z

    if-eqz v3, :cond_3

    .line 26
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 27
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    :cond_4
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 29
    iget-boolean v3, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->h:Z

    if-eqz v3, :cond_5

    .line 30
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 31
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    :cond_6
    :goto_3
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->i:Z

    if-eqz v0, :cond_7

    .line 33
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 34
    :cond_7
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    :goto_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v3, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 36
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$a;

    invoke-direct {v3, p0, p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter;Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget v0, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->f:I

    invoke-direct {p0, p2, v0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->f(Landroid/view/View;I)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 38
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v3, v0, v2

    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->c:Landroid/widget/TextView;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x2

    iget-object v5, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->d:Landroid/widget/TextView;

    aput-object v5, v0, v3

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->S0([Landroid/view/View;)V

    new-array v0, v4, [Landroid/view/View;

    .line 39
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->i:Lcom/join/mgps/customview/VipView;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->U0([Landroid/view/View;)V

    .line 40
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->l:Ljava/lang/String;

    .line 41
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->m:Ljava/lang/String;

    .line 42
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->k:Landroid/widget/TextView;

    if-eqz v3, :cond_a

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 44
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080436

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    const-string v1, "#"

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    const-string p1, "#2fccdf"

    .line 50
    :goto_5
    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 51
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 52
    :cond_9
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_6
    return-object p2
.end method

.method private e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;-><init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0432

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090a4c

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;->b:Landroid/widget/TextView;

    const v0, 0x7f090a49

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;->c:Landroid/view/View;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;->b:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :goto_1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;->c:Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;

    if-nez v0, :cond_3

    return-object p2

    .line 12
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->getRnickname()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "\u6211"

    .line 14
    :cond_4
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v2, v1, v0}, Lcom/join/mgps/Util/i0;->B1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;->a:I

    invoke-direct {p0, p2, p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->f(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method private f(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$b;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private i(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x8

    if-eqz p2, :cond_6

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0432

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    const v4, 0x7f090a4c

    .line 7
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090a49

    .line 8
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_2

    .line 10
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :goto_2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;

    if-nez v3, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->getRnickname()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v6, v5, v3}, Lcom/join/mgps/Util/i0;->B1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_5
    return-void

    .line 17
    :cond_6
    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->b:Ljava/util/List;

    return-object v0
.end method

.method public g(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->b:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->b:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->b:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;->a()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;->b()Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;->PROFILE_HEADER:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;->PROFILE_MESSAGE_ITEM:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;->PROFILE_FOOTER:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public h(Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->c:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
