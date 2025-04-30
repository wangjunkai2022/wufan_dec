.class public Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;
.super Landroid/widget/BaseAdapter;
.source "ForumProfileMessageReplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$s;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$q;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$v;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/widget/LinearLayout$LayoutParams;

.field private e:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

.field f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

.field g:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "ForumProfileMessageReplyAdapter"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->e:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->b:Landroid/content/Context;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->q(Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;Z)V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->h(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->e:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    return-object p0
.end method

.method private h(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x3fc00000    # 1.5f

    const/16 v3, 0x1e

    const/4 v4, 0x4

    const v5, 0x7f070ca1

    .line 5
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    int-to-float v1, v3

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v3, v0

    mul-float v3, v3, v1

    div-float/2addr v3, v2

    float-to-int v1, v3

    int-to-float v2, v4

    mul-float v2, v2, p1

    float-to-int p1, v2

    .line 6
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {v2, v0, p1, v0, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 8
    iput-object v2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d:Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d:Landroid/widget/LinearLayout$LayoutParams;

    return-object p1
.end method

.method private k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$q;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$q;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$q;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0474

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0902b1

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$q;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;

    if-nez p1, :cond_1

    return-object p2

    .line 7
    :cond_1
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$q;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz p3, :cond_3

    .line 8
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->b:Landroid/content/Context;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;->c:Ljava/util/List;

    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->p(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->j(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;->a:I

    iget v0, v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;->b:I

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x8

    int-to-float v0, v0

    .line 11
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 13
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;->a:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;->a:Ljava/lang/String;

    invoke-virtual {p0, p3, v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 16
    :goto_1
    iget v0, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;->b:I

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;->c:Ljava/util/List;

    invoke-static {p3, v0, p1}, Lcom/join/mgps/Util/i0;->C1(Landroid/widget/ImageView;ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-object p2
.end method

.method private l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0435

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090514

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->e:Landroid/view/View;

    const v0, 0x7f090511

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09051b

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->c:Landroid/widget/TextView;

    const v0, 0x7f090510

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->d:Landroid/widget/TextView;

    const v0, 0x7f090515

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f090520

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->g:Landroid/widget/ImageView;

    const v0, 0x7f091298

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/VipView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->h:Lcom/join/mgps/customview/VipView;

    .line 11
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_1

    return-object p2

    .line 13
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->b:Landroid/content/Context;

    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->c:Landroid/widget/TextView;

    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->h:I

    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->i:I

    const v4, 0x7f06011d

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->M2(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 14
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->h:Lcom/join/mgps/customview/VipView;

    iget v1, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->h:I

    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/VipView;->setVipData(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :goto_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->e:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 18
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->c:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->d:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->d:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 22
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v2, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$e;

    invoke-direct {v2, p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$e;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/view/View;

    .line 23
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v0, p1, v1

    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->c:Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v0, p1, v2

    const/4 v0, 0x2

    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->d:Landroid/widget/TextView;

    aput-object v3, p1, v0

    invoke-static {p1}, Lcom/join/mgps/Util/i0;->S0([Landroid/view/View;)V

    new-array p1, v2, [Landroid/view/View;

    .line 24
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->h:Lcom/join/mgps/customview/VipView;

    aput-object p3, p1, v1

    invoke-static {p1}, Lcom/join/mgps/Util/i0;->U0([Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method private m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$s;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$s;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$s;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0436

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090a4c

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$s;->b:Landroid/widget/TextView;

    const v0, 0x7f090a49

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$s;->c:Landroid/view/View;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$c;

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$s;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$s;->b:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$c;->b:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p3, p1, v0}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0437

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0902bf

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0902c1

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->c:Landroid/view/View;

    const v0, 0x7f0902c0

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->d:Landroid/widget/TextView;

    const v0, 0x7f0902c2

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->e:Landroid/widget/TextView;

    const v0, 0x7f0908be

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->f:Landroid/view/View;

    const v0, 0x7f090169

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->g:Landroid/view/View;

    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;

    if-nez v0, :cond_1

    return-object p2

    .line 12
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    if-nez v1, :cond_2

    return-object p2

    .line 13
    :cond_2
    iget-boolean v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->g:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :goto_1
    iget-boolean v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->d:Z

    if-nez v1, :cond_4

    .line 17
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 19
    :cond_4
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->g:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->r(Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;ZI)V

    goto :goto_3

    .line 24
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V
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

.method private q(Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;Z)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 1
    iget v10, v9, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->a:I

    .line 2
    iget-object v0, v9, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v11

    .line 4
    move-object v12, v8

    check-cast v12, Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 5
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ge v14, v0, :cond_9

    const v0, 0x7fffffff

    if-le v14, v0, :cond_0

    if-eqz p3, :cond_0

    goto/16 :goto_5

    .line 6
    :cond_0
    iget-object v2, v7, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0107

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 7
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 8
    invoke-virtual {v15, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0902c0

    .line 9
    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902c2

    .line 10
    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 11
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ne v14, v4, :cond_1

    if-le v4, v0, :cond_1

    .line 12
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u6536\u8d77"

    .line 14
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$h;

    invoke-direct {v0, v7, v8, v9}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$h;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;)V

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_1
    if-ne v14, v0, :cond_2

    if-eqz p3, :cond_2

    if-le v4, v0, :cond_2

    .line 16
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f110091

    new-array v1, v1, [Ljava/lang/Object;

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v13

    invoke-virtual {v2, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$i;

    invoke-direct {v0, v7, v8, v9}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;)V

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 20
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ge v14, v4, :cond_8

    if-lt v14, v0, :cond_3

    if-eqz p3, :cond_3

    goto :goto_5

    .line 21
    :cond_3
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRnickname()Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRrid()I

    move-result v16

    if-nez v16, :cond_4

    const-string v6, ""

    .line 25
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    invoke-static {v2, v4, v6, v1}, Lcom/join/mgps/Util/i0;->u1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    move-result v5

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getUid()I

    move-result v1

    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    move-result-object v6

    .line 32
    invoke-virtual {v7, v15, v10, v5, v6}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->A(Landroid/view/View;IILjava/lang/String;)V

    .line 33
    iget-object v0, v7, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 34
    iget v2, v9, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->c:I

    if-eqz v0, :cond_5

    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-ne v1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-eq v2, v1, :cond_7

    const/16 v1, 0x63

    if-eq v2, v1, :cond_7

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v2, 0x1

    :goto_3
    xor-int/lit8 v3, v0, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move v4, v10

    .line 36
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->z(Landroid/view/View;ZZIILjava/lang/String;)V

    .line 37
    :goto_4
    invoke-virtual {v12, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_8
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private r(Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;ZI)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 1
    iget v9, v8, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->a:I

    .line 2
    iget v10, v8, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->e:I

    .line 3
    iget-boolean v11, v8, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->f:Z

    .line 4
    iget-object v12, v8, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 5
    invoke-virtual {v12}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v13

    .line 6
    move-object/from16 v14, p1

    check-cast v14, Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v0, v15, 0x1

    if-ge v5, v0, :cond_b

    const/4 v0, 0x3

    if-le v5, v0, :cond_0

    if-eqz p3, :cond_0

    move/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v18, v12

    move-object v0, v14

    const/4 v14, 0x0

    move v11, v5

    goto/16 :goto_7

    .line 8
    :cond_0
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->b:Landroid/content/Context;

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

    if-ne v5, v15, :cond_1

    if-gt v15, v0, :cond_2

    :cond_1
    if-lez v10, :cond_3

    if-eqz v11, :cond_3

    if-ne v5, v15, :cond_3

    .line 13
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u6536\u8d77"

    .line 15
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$f;

    move-object v0, v3

    move-object/from16 v1, p0

    move v2, v10

    move-object v6, v3

    move/from16 v3, p4

    move/from16 v16, v10

    move-object v10, v4

    move v4, v9

    move/from16 v17, v11

    move v11, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;IIILcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;)V

    invoke-virtual {v10, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v18, v12

    move-object v0, v14

    const/4 v14, 0x0

    goto/16 :goto_5

    :cond_3
    move/from16 v16, v10

    move/from16 v17, v11

    move-object v10, v4

    move v11, v5

    const/4 v4, 0x1

    if-ne v11, v0, :cond_4

    if-eqz p3, :cond_4

    if-le v15, v0, :cond_4

    .line 17
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v6, 0x0

    .line 18
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110091

    new-array v3, v4, [Ljava/lang/Object;

    add-int/lit8 v4, v15, -0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance v5, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$g;

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v15

    move-object v3, v12

    move v4, v9

    move-object/from16 v18, v12

    move-object v12, v5

    move-object/from16 v5, p2

    move-object/from16 p1, v14

    const/4 v14, 0x0

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$g;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;ILcom/join/mgps/dto/ForumBean$ForumCommentBean;ILcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;I)V

    invoke-virtual {v10, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    move-object/from16 v0, p1

    goto/16 :goto_5

    :cond_4
    move-object/from16 v18, v12

    move-object/from16 p1, v14

    const/4 v14, 0x0

    if-ge v11, v15, :cond_a

    if-lt v11, v0, :cond_5

    if-eqz p3, :cond_5

    goto/16 :goto_6

    .line 21
    :cond_5
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 22
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRnickname()Ljava/lang/String;

    move-result-object v12

    .line 24
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRrid()I

    move-result v19

    if-nez v19, :cond_6

    const-string v12, ""

    .line 25
    :cond_6
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    invoke-static {v1, v6, v12, v4}, Lcom/join/mgps/Util/i0;->u1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    move-result v6

    .line 30
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getUid()I

    move-result v1

    .line 31
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    move-result-object v12

    .line 32
    invoke-virtual {v7, v10, v9, v6, v12}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->A(Landroid/view/View;IILjava/lang/String;)V

    .line 33
    iget-object v2, v7, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    .line 34
    iget v3, v8, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->c:I

    if-eqz v2, :cond_7

    .line 35
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    if-eq v3, v0, :cond_9

    const/16 v0, 0x63

    if-eq v3, v0, :cond_9

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v2, 0x1

    :goto_4
    xor-int/lit8 v3, v1, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move v4, v9

    move v5, v6

    move-object v6, v12

    .line 36
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->z(Landroid/view/View;ZZIILjava/lang/String;)V

    goto :goto_1

    .line 37
    :goto_5
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_a
    :goto_6
    move-object/from16 v0, p1

    :goto_7
    add-int/lit8 v5, v11, 0x1

    move-object v14, v0

    move/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, v18

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_b
    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "setOnCommentReplyReply"

    aput-object v2, v0, v1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rNickname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$b;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;IILjava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public B(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$k;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$k;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public C(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->e:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    return-void
.end method

.method D(Landroid/view/View;IZZIILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    invoke-virtual {v0, p5}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->n(I)V

    .line 3
    iget-object p5, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    invoke-virtual {p5, p6}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->u(I)V

    .line 4
    iget-object p5, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    invoke-virtual {p5, p2}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->r(I)V

    const/4 p2, 0x0

    const/16 p5, 0x8

    if-eqz p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    invoke-virtual {p3, p2}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->q(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    invoke-virtual {p3, p5}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->q(I)V

    :goto_0
    if-eqz p4, :cond_2

    .line 7
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    invoke-virtual {p3, p2}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->t(I)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    invoke-virtual {p2, p5}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->t(I)V

    .line 9
    :goto_1
    invoke-static {p7}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p7, ""

    .line 10
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    invoke-virtual {p2, p7}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->s(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    invoke-virtual {p2, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method e(Ljava/lang/String;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->g:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->g:Ljava/util/Hashtable;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->g:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 3
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    return-void
.end method

.method g(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZ)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;

    sget-object v1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_MESSAGE_REPLY_ITEM:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;-><init>(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZ)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;->a()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;->b()Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_HEADER:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_MESSAGE_ITEM:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_COMMENT_IMAGE:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_MESSAGE_REPLY_ITEM:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_3
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Ljava/util/List;

    return-object v0
.end method

.method j(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->g:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    const v1, 0x7f0807b1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->H(I)V

    .line 2
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$j;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 3
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->H(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 4
    invoke-static {p2}, Lcom/join/android/app/common/utils/MyImageLoader;->G(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method p(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/i0;->i0(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;

    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)V

    const/4 v2, 0x0

    .line 3
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    .line 4
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const v4, 0x7f070ca1

    .line 7
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x42680000    # 58.0f

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v4

    sub-float/2addr v3, p1

    float-to-int p1, v3

    int-to-float v3, p1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    int-to-float v0, v0

    mul-float v0, v0, v4

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v3, v3, v0

    float-to-int v0, v3

    .line 9
    iput p1, v1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;->a:I

    .line 10
    iput v0, v1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;->b:I

    .line 11
    invoke-virtual {p0, p2, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->e(Ljava/lang/String;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;)V

    :cond_0
    return-void
.end method

.method s(Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/f;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 8

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3}, Lcom/facebook/imagepipeline/image/f;->a()I

    move-result v0

    .line 2
    invoke-interface {p3}, Lcom/facebook/imagepipeline/image/f;->getHeight()I

    move-result p3

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x28

    const/4 v5, 0x4

    const v6, 0x7f070ca1

    .line 7
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    int-to-float v3, v4

    mul-float v3, v3, v1

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    int-to-float v5, v5

    mul-float v5, v5, v1

    float-to-int v1, v5

    int-to-float v5, p3

    mul-float v5, v5, v4

    int-to-float v4, v0

    div-float/2addr v5, v4

    mul-float v3, v3, v5

    float-to-int v3, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "setCommentImageItemParams-->rawHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " rawWidth="

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ratio="

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " itemHeight="

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " itemWidth="

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, v4, p3

    invoke-static {v4}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 9
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    invoke-virtual {p1, p3, v1, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method t(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;

    .line 2
    iput-boolean p2, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->d:Z
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

.method public u(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public v(Landroid/view/View;II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$a;

    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public w(Landroid/view/View;ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$m;

    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$m;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public x(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$l;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public y(Landroid/view/View;III)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "setOnCommentReplyLongClick"

    aput-object v2, v0, v1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ruid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$c;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;III)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public z(Landroid/view/View;ZZIILjava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;

    move-object v0, v7

    move-object v1, p0

    move v2, p4

    move v3, p2

    move v4, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;IZZILjava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
