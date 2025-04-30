.class public Lcom/join/mgps/adapter/GameTopicAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameTopicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/GameTopicAdapter$c;,
        Lcom/join/mgps/adapter/GameTopicAdapter$f;,
        Lcom/join/mgps/adapter/GameTopicAdapter$e;,
        Lcom/join/mgps/adapter/GameTopicAdapter$d;,
        Lcom/join/mgps/adapter/GameTopicAdapter$h;,
        Lcom/join/mgps/adapter/GameTopicAdapter$g;,
        Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;
    }
.end annotation


# instance fields
.field private a:Lcom/join/android/app/component/optimizetext/b;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameTopicAdapter$g;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/widget/LinearLayout$LayoutParams;

.field e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->e:I

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->b:Landroid/content/Context;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/join/android/app/component/optimizetext/b;

    invoke-direct {v0, p1}, Lcom/join/android/app/component/optimizetext/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/adapter/GameTopicAdapter;->k()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/GameTopicAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/GameTopicAdapter;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const-string p3, "0"

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/GameTopicAdapter$c;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/GameTopicAdapter$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/GameTopicAdapter$c;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0c0456

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f09050d

    .line 4
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/GameTopicAdapter$c;->b:Landroid/widget/TextView;

    const v2, 0x7f090524

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/GameTopicAdapter$c;->c:Landroid/widget/TextView;

    const v2, 0x7f090513

    .line 6
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/GameTopicAdapter$c;->d:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;

    if-nez p1, :cond_1

    return-object p2

    .line 9
    :cond_1
    iget-object v2, v1, Lcom/join/mgps/adapter/GameTopicAdapter$c;->b:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v2, v1, Lcom/join/mgps/adapter/GameTopicAdapter$c;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, v1, Lcom/join/mgps/adapter/GameTopicAdapter$c;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p3, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;->b:Ljava/lang/String;

    iget p1, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;->a:I

    invoke-virtual {p0, p2, p3, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->n(Landroid/view/View;Ljava/lang/String;I)V
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

.method private e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/GameTopicAdapter$d;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/GameTopicAdapter$d;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/GameTopicAdapter$d;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0457

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090511

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/GameTopicAdapter$d;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09051b

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/GameTopicAdapter$d;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11011b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    .line 12
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 14
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "#FC9234"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v3, v1, v2, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 15
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/GameTopicAdapter$d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p3, Lcom/join/mgps/adapter/GameTopicAdapter$d;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 17
    iget-object p3, p3, Lcom/join/mgps/adapter/GameTopicAdapter$d;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v0, Lcom/join/mgps/adapter/GameTopicAdapter$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/GameTopicAdapter$a;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter;Lcom/join/mgps/adapter/GameTopicAdapter$g$b;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p3, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->c:Ljava/lang/String;

    iget p1, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->d:I

    invoke-virtual {p0, p2, p3, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->n(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/GameTopicAdapter$e;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/GameTopicAdapter$e;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/GameTopicAdapter$e;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0458

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090522

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/GameTopicAdapter$e;->b:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$e;

    if-nez p1, :cond_1

    return-object p2

    .line 7
    :cond_1
    iget-object p3, p3, Lcom/join/mgps/adapter/GameTopicAdapter$e;->b:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$e;->c:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p3, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$e;->b:Ljava/lang/String;

    iget p1, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$e;->a:I

    invoke-virtual {p0, p2, p3, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->n(Landroid/view/View;Ljava/lang/String;I)V
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

.method private g(Landroid/content/Context;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->e:I

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const v1, 0x401d70a4    # 2.46f

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
    iput p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->e:I

    .line 6
    :cond_1
    iget p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->e:I

    return p1
.end method

.method private h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/GameTopicAdapter$f;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/GameTopicAdapter$f;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/GameTopicAdapter$f;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0455

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090311

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/GameTopicAdapter$f;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$f;

    if-nez p1, :cond_1

    return-object p2

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/GameTopicAdapter;->g(Landroid/content/Context;)I

    move-result v0

    .line 8
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 9
    iget-object v0, p3, Lcom/join/mgps/adapter/GameTopicAdapter$f;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v0, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$f;->c:Ljava/lang/String;

    .line 11
    iget-object v1, p3, Lcom/join/mgps/adapter/GameTopicAdapter$f;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v1, :cond_2

    .line 12
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 13
    iget-object p3, p3, Lcom/join/mgps/adapter/GameTopicAdapter$f;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p3, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 14
    :cond_2
    iget-object p3, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$f;->b:Ljava/lang/String;

    iget p1, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$f;->a:I

    invoke-virtual {p0, p2, p3, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->n(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const-string v1, "2"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "current_topic"

    invoke-direct {v1, v2, p2, p1}, Lcom/join/mgps/dto/ExtBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->b:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->d:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/GameTopicAdapter;->i()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->d:Landroid/widget/LinearLayout$LayoutParams;

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameTopicAdapter$g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/join/android/app/component/optimizetext/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/GameTopicAdapter$g;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/GameTopicAdapter$g;->a()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/GameTopicAdapter$g;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/GameTopicAdapter$g;->b()Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/GameTopicAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/GameTopicAdapter;->d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/GameTopicAdapter;->h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/GameTopicAdapter;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_3
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->values()[Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method i()Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->b:Landroid/content/Context;

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
    iget-object v5, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->b:Landroid/content/Context;

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

.method public l(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameTopicAdapter$g;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public m(Lcom/join/android/app/component/optimizetext/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->a:Lcom/join/android/app/component/optimizetext/b;

    return-void
.end method

.method n(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/GameTopicAdapter$b;

    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/adapter/GameTopicAdapter$b;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
