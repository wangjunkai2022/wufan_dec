.class public Lcom/join/mgps/adapter/q3;
.super Landroid/widget/BaseAdapter;
.source "NowWufunAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/q3$m;,
        Lcom/join/mgps/adapter/q3$n;,
        Lcom/join/mgps/adapter/q3$l;,
        Lcom/join/mgps/adapter/q3$k;,
        Lcom/join/mgps/adapter/q3$i;,
        Lcom/join/mgps/adapter/q3$j;,
        Lcom/join/mgps/adapter/q3$h;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/NowWufunFragment$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/NowWufunFragment$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/q3;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    return-object p0
.end method

.method private b(I)Lcom/join/mgps/activity/NowWufunFragment$ItemType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/q3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/NowWufunFragment$c;

    iget-object p1, p1, Lcom/join/mgps/activity/NowWufunFragment$c;->a:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    return-object p1
.end method

.method private c(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v1, Landroid/text/style/LeadingMarginSpan$Standard;

    const/high16 v2, 0x40a00000    # 5.0f

    iget-object v3, p0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/j;->g()F

    move-result v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    add-int/2addr p3, v2

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x21

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/q3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/q3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

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
    iget-object v0, p0, Lcom/join/mgps/adapter/q3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/NowWufunFragment$c;

    iget-object p1, p1, Lcom/join/mgps/activity/NowWufunFragment$c;->a:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    invoke-virtual {p1}, Lcom/join/mgps/activity/NowWufunFragment$ItemType;->getType()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p1}, Lcom/join/mgps/adapter/q3;->b(I)Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    move-result-object v2

    .line 2
    sget-object v3, Lcom/join/mgps/activity/NowWufunFragment$ItemType;->EMPYT:Lcom/join/mgps/activity/NowWufunFragment$ItemType;

    if-ne v2, v3, :cond_0

    .line 3
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v2, v0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07110f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    return-object v1

    :cond_0
    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 5
    sget-object v4, Lcom/join/mgps/adapter/q3$g;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const v5, 0x7f091001

    const v6, 0x7f0900d9

    const v7, 0x7f0903ca

    const v8, 0x7f09069a

    const v9, 0x7f0900d7

    const v10, 0x7f0909eb

    const v11, 0x7f0900e1

    const v12, 0x7f091023

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 6
    :pswitch_0
    new-instance v4, Lcom/join/mgps/adapter/q3$m;

    invoke-direct {v4, v0}, Lcom/join/mgps/adapter/q3$m;-><init>(Lcom/join/mgps/adapter/q3;)V

    .line 7
    iget-object v6, v0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0c0503

    invoke-virtual {v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 8
    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v4, v7}, Lcom/join/mgps/adapter/q3$m;->a(Lcom/join/mgps/adapter/q3$m;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 9
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v4, v7}, Lcom/join/mgps/adapter/q3$m;->c(Lcom/join/mgps/adapter/q3$m;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 10
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v4, v7}, Lcom/join/mgps/adapter/q3$m;->e(Lcom/join/mgps/adapter/q3$m;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 11
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v4, v7}, Lcom/join/mgps/adapter/q3$m;->g(Lcom/join/mgps/adapter/q3$m;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/join/mgps/adapter/q3$m;->i(Lcom/join/mgps/adapter/q3$m;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 13
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-static {v4, v5}, Lcom/join/mgps/adapter/q3$m;->k(Lcom/join/mgps/adapter/q3$m;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 14
    invoke-virtual {v6, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    move-object v10, v4

    move-object v5, v6

    move-object v4, v9

    goto :goto_0

    .line 15
    :pswitch_1
    new-instance v4, Lcom/join/mgps/adapter/q3$n;

    invoke-direct {v4, v0}, Lcom/join/mgps/adapter/q3$n;-><init>(Lcom/join/mgps/adapter/q3;)V

    .line 16
    iget-object v6, v0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0c0502

    invoke-virtual {v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 17
    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v4, v7}, Lcom/join/mgps/adapter/q3$n;->b(Lcom/join/mgps/adapter/q3$n;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 18
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v4, v7}, Lcom/join/mgps/adapter/q3$n;->d(Lcom/join/mgps/adapter/q3$n;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 19
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v4, v7}, Lcom/join/mgps/adapter/q3$n;->f(Lcom/join/mgps/adapter/q3$n;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 20
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/join/mgps/adapter/q3$n;->h(Lcom/join/mgps/adapter/q3$n;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 21
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v4, v5}, Lcom/join/mgps/adapter/q3$n;->j(Lcom/join/mgps/adapter/q3$n;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 22
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-static {v4, v5}, Lcom/join/mgps/adapter/q3$n;->l(Lcom/join/mgps/adapter/q3$n;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 23
    invoke-virtual {v6, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, v3

    move-object v8, v7

    move-object v10, v8

    move-object v9, v4

    move-object v5, v6

    move-object v4, v10

    :goto_0
    move-object v6, v4

    goto/16 :goto_a

    .line 24
    :pswitch_2
    new-instance v4, Lcom/join/mgps/adapter/q3$i;

    invoke-direct {v4, v0}, Lcom/join/mgps/adapter/q3$i;-><init>(Lcom/join/mgps/adapter/q3;)V

    .line 25
    iget-object v5, v0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0c04ff

    invoke-virtual {v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 26
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$i;->b(Lcom/join/mgps/adapter/q3$i;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 27
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 28
    :pswitch_3
    new-instance v4, Lcom/join/mgps/adapter/q3$l;

    invoke-direct {v4, v0}, Lcom/join/mgps/adapter/q3$l;-><init>(Lcom/join/mgps/adapter/q3;)V

    .line 29
    iget-object v5, v0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f0c0500

    invoke-virtual {v5, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 30
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$l;->b(Lcom/join/mgps/adapter/q3$l;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 31
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$l;->d(Lcom/join/mgps/adapter/q3$l;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 32
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$l;->f(Lcom/join/mgps/adapter/q3$l;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v6, 0x7f0908cd

    .line 33
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v4, Lcom/join/mgps/adapter/q3$l;->j:Landroid/widget/LinearLayout;

    const v6, 0x7f0900ea

    .line 34
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/join/mgps/adapter/q3$l;->d:Landroid/widget/TextView;

    const v6, 0x7f0909b2

    .line 35
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/join/mgps/adapter/q3$l;->e:Landroid/widget/TextView;

    .line 36
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/customview/DownloadViewNormal;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$l;->h(Lcom/join/mgps/adapter/q3$l;Lcom/join/mgps/customview/DownloadViewNormal;)Lcom/join/mgps/customview/DownloadViewNormal;

    const v6, 0x7f090c59

    .line 37
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, v4, Lcom/join/mgps/adapter/q3$l;->h:Landroid/widget/ProgressBar;

    const v6, 0x7f090c60

    .line 38
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, v4, Lcom/join/mgps/adapter/q3$l;->g:Landroid/widget/ProgressBar;

    const v6, 0x7f09100c

    .line 39
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$l;->j(Lcom/join/mgps/adapter/q3$l;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 40
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 41
    :pswitch_4
    new-instance v4, Lcom/join/mgps/adapter/q3$j;

    invoke-direct {v4, v0}, Lcom/join/mgps/adapter/q3$j;-><init>(Lcom/join/mgps/adapter/q3;)V

    .line 42
    iget-object v5, v0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0c0501

    invoke-virtual {v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 43
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$j;->b(Lcom/join/mgps/adapter/q3$j;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 44
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 45
    :pswitch_5
    new-instance v4, Lcom/join/mgps/adapter/q3$k;

    invoke-direct {v4, v0}, Lcom/join/mgps/adapter/q3$k;-><init>(Lcom/join/mgps/adapter/q3;)V

    .line 46
    iget-object v5, v0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v13, 0x7f0c04fb

    invoke-virtual {v5, v13, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 47
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-static {v4, v12}, Lcom/join/mgps/adapter/q3$k;->b(Lcom/join/mgps/adapter/q3$k;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 48
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-static {v4, v11}, Lcom/join/mgps/adapter/q3$k;->d(Lcom/join/mgps/adapter/q3$k;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 49
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-static {v4, v9}, Lcom/join/mgps/adapter/q3$k;->f(Lcom/join/mgps/adapter/q3$k;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 50
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v4, v8}, Lcom/join/mgps/adapter/q3$k;->h(Lcom/join/mgps/adapter/q3$k;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 51
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$k;->l(Lcom/join/mgps/adapter/q3$k;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 52
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/customview/DownloadViewNormal;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$k;->n(Lcom/join/mgps/adapter/q3$k;Lcom/join/mgps/customview/DownloadViewNormal;)Lcom/join/mgps/customview/DownloadViewNormal;

    .line 53
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$k;->j(Lcom/join/mgps/adapter/q3$k;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v6, 0x7f0903ac

    .line 54
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$k;->p(Lcom/join/mgps/adapter/q3$k;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 55
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 56
    :pswitch_6
    new-instance v4, Lcom/join/mgps/adapter/q3$k;

    invoke-direct {v4, v0}, Lcom/join/mgps/adapter/q3$k;-><init>(Lcom/join/mgps/adapter/q3;)V

    .line 57
    iget-object v5, v0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0c04fd

    invoke-virtual {v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 58
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$k;->b(Lcom/join/mgps/adapter/q3$k;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 59
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$k;->d(Lcom/join/mgps/adapter/q3$k;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 60
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$k;->f(Lcom/join/mgps/adapter/q3$k;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 61
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$k;->h(Lcom/join/mgps/adapter/q3$k;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 62
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/customview/DownloadViewBig;

    iput-object v6, v4, Lcom/join/mgps/adapter/q3$k;->f:Lcom/join/mgps/customview/DownloadViewBig;

    .line 63
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$k;->j(Lcom/join/mgps/adapter/q3$k;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 64
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 65
    :pswitch_7
    new-instance v4, Lcom/join/mgps/adapter/q3$h;

    invoke-direct {v4, v0}, Lcom/join/mgps/adapter/q3$h;-><init>(Lcom/join/mgps/adapter/q3;)V

    .line 66
    iget-object v5, v0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0c04fc

    invoke-virtual {v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090327

    .line 67
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$h;->b(Lcom/join/mgps/adapter/q3$h;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v6, 0x7f0912ce

    .line 68
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v4, v6}, Lcom/join/mgps/adapter/q3$h;->d(Lcom/join/mgps/adapter/q3$h;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 69
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 70
    :cond_1
    sget-object v4, Lcom/join/mgps/adapter/q3$g;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    :goto_1
    move-object/from16 v5, p2

    move-object v4, v3

    move-object v6, v4

    :goto_2
    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    goto/16 :goto_a

    .line 71
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/adapter/q3$m;

    move-object/from16 v5, p2

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v4

    move-object v4, v9

    goto/16 :goto_a

    .line 72
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/adapter/q3$n;

    move-object/from16 v5, p2

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    move-object v9, v4

    goto/16 :goto_9

    .line 73
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/adapter/q3$i;

    move-object/from16 v5, p2

    :goto_3
    move-object v6, v3

    move-object v7, v6

    move-object v9, v7

    move-object v10, v9

    move-object v8, v4

    goto :goto_9

    .line 74
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/adapter/q3$l;

    move-object/from16 v5, p2

    :goto_4
    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    move-object v7, v4

    goto :goto_9

    .line 75
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/adapter/q3$j;

    move-object/from16 v5, p2

    :goto_5
    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v6, v4

    goto :goto_9

    .line 76
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/adapter/q3$k;

    goto :goto_6

    .line 77
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/adapter/q3$k;

    :goto_6
    move-object/from16 v5, p2

    :goto_7
    move-object v6, v3

    goto :goto_2

    .line 78
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/adapter/q3$h;

    move-object/from16 v5, p2

    :goto_8
    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v3, v4

    :goto_9
    move-object v4, v10

    .line 79
    :goto_a
    sget-object v11, Lcom/join/mgps/adapter/q3$g;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v11, v2

    const-string v11, "\u539f\u521b"

    const-string v12, "\u8f6c\u8f7d"

    const/4 v13, 0x1

    const-string v14, "\u4f5c\u8005:"

    const/16 v15, 0x8

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_f

    .line 80
    :pswitch_10
    iget-object v2, v0, Lcom/join/mgps/adapter/q3;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/NowWufunFragment$c;

    iget-object v1, v1, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/dto/TodayWufunTopic;

    .line 81
    iget-object v2, v0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071371

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 82
    invoke-static {v10}, Lcom/join/mgps/adapter/q3$m;->d(Lcom/join/mgps/adapter/q3$m;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTopic;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v2}, Lcom/join/mgps/adapter/q3;->c(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 83
    invoke-static {v10}, Lcom/join/mgps/adapter/q3$m;->b(Lcom/join/mgps/adapter/q3$m;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTopic;->getAuth()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTopic;->getTag_type()I

    move-result v2

    if-ne v2, v13, :cond_2

    .line 85
    invoke-static {v10}, Lcom/join/mgps/adapter/q3$m;->h(Lcom/join/mgps/adapter/q3$m;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 86
    :cond_2
    invoke-static {v10}, Lcom/join/mgps/adapter/q3$m;->h(Lcom/join/mgps/adapter/q3$m;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_b
    invoke-static {v10}, Lcom/join/mgps/adapter/q3$m;->f(Lcom/join/mgps/adapter/q3$m;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTopic;->getPic()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080168

    invoke-static {v2, v4, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 88
    invoke-static {v10}, Lcom/join/mgps/adapter/q3$m;->j(Lcom/join/mgps/adapter/q3$m;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/q3$f;

    invoke-direct {v3, v0, v1}, Lcom/join/mgps/adapter/q3$f;-><init>(Lcom/join/mgps/adapter/q3;Lcom/join/mgps/dto/TodayWufunTopic;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_f

    .line 89
    :pswitch_11
    iget-object v2, v0, Lcom/join/mgps/adapter/q3;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/NowWufunFragment$c;

    iget-object v1, v1, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/dto/TodayWufunTopic;

    .line 90
    invoke-static {v9}, Lcom/join/mgps/adapter/q3$n;->a(Lcom/join/mgps/adapter/q3$n;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u4eca\u65e5\u8bdd\u9898"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, v0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070f88

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 92
    invoke-static {v9}, Lcom/join/mgps/adapter/q3$n;->e(Lcom/join/mgps/adapter/q3$n;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTopic;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v2}, Lcom/join/mgps/adapter/q3;->c(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 93
    invoke-static {v9}, Lcom/join/mgps/adapter/q3$n;->c(Lcom/join/mgps/adapter/q3$n;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTopic;->getAuth()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTopic;->getTag_type()I

    move-result v2

    if-ne v2, v13, :cond_3

    .line 95
    invoke-static {v9}, Lcom/join/mgps/adapter/q3$n;->g(Lcom/join/mgps/adapter/q3$n;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 96
    :cond_3
    invoke-static {v9}, Lcom/join/mgps/adapter/q3$n;->g(Lcom/join/mgps/adapter/q3$n;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_c
    invoke-static {v9}, Lcom/join/mgps/adapter/q3$n;->i(Lcom/join/mgps/adapter/q3$n;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTopic;->getPic()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080168

    invoke-static {v2, v4, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 98
    invoke-static {v9}, Lcom/join/mgps/adapter/q3$n;->k(Lcom/join/mgps/adapter/q3$n;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/q3$e;

    invoke-direct {v3, v0, v1}, Lcom/join/mgps/adapter/q3$e;-><init>(Lcom/join/mgps/adapter/q3;Lcom/join/mgps/dto/TodayWufunTopic;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_f

    .line 99
    :pswitch_12
    invoke-static {v8}, Lcom/join/mgps/adapter/q3$i;->a(Lcom/join/mgps/adapter/q3$i;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/adapter/q3$d;

    invoke-direct {v2, v0}, Lcom/join/mgps/adapter/q3$d;-><init>(Lcom/join/mgps/adapter/q3;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_f

    .line 100
    :pswitch_13
    iget-object v2, v0, Lcom/join/mgps/adapter/q3;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/NowWufunFragment$c;

    iget-object v1, v1, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/dto/TodayWufunTodayNew;

    .line 101
    invoke-static {v7}, Lcom/join/mgps/adapter/q3$l;->a(Lcom/join/mgps/adapter/q3$l;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getGame_ico()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0807b1

    invoke-static {v2, v4, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 102
    invoke-static {v7}, Lcom/join/mgps/adapter/q3$l;->c(Lcom/join/mgps/adapter/q3$l;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getGame_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/join/mgps/Util/UtilsMy;->j1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/TodayWufunTodayNew;)V

    .line 105
    invoke-static {v7}, Lcom/join/mgps/adapter/q3$l;->g(Lcom/join/mgps/adapter/q3$l;)Lcom/join/mgps/customview/DownloadViewNormal;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/join/mgps/customview/DownloadViewNormal;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 106
    invoke-static {v7}, Lcom/join/mgps/adapter/q3$l;->e(Lcom/join/mgps/adapter/q3$l;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/q3$c;

    invoke-direct {v3, v0, v1}, Lcom/join/mgps/adapter/q3$c;-><init>(Lcom/join/mgps/adapter/q3;Lcom/join/mgps/dto/TodayWufunTodayNew;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getScore()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getDown_count()I

    move-result v9

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getSize()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v11

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v7}, Lcom/join/mgps/adapter/q3$l;->i(Lcom/join/mgps/adapter/q3$l;)Landroid/widget/LinearLayout;

    move-result-object v13

    iget-object v14, v0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    invoke-static/range {v8 .. v14}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 108
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunTodayNew;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 109
    iget-object v2, v7, Lcom/join/mgps/adapter/q3$l;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    invoke-static {v7}, Lcom/join/mgps/adapter/q3$l;->i(Lcom/join/mgps/adapter/q3$l;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    iget-object v2, v7, Lcom/join/mgps/adapter/q3$l;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 112
    iget-object v2, v7, Lcom/join/mgps/adapter/q3$l;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz v1, :cond_a

    .line 113
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x6

    const/4 v6, 0x3

    const/4 v8, 0x2

    if-eq v2, v8, :cond_5

    if-eq v2, v6, :cond_5

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_5

    const/16 v3, 0xc

    if-eq v2, v3, :cond_4

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    goto/16 :goto_f

    .line 114
    :cond_4
    iget-object v2, v7, Lcom/join/mgps/adapter/q3$l;->j:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    iget-object v2, v7, Lcom/join/mgps/adapter/q3$l;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 116
    iget-object v2, v7, Lcom/join/mgps/adapter/q3$l;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 117
    invoke-static {v7}, Lcom/join/mgps/adapter/q3$l;->i(Lcom/join/mgps/adapter/q3$l;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object v2, v7, Lcom/join/mgps/adapter/q3$l;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_f

    .line 119
    :cond_5
    iget-object v2, v7, Lcom/join/mgps/adapter/q3$l;->j:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object v2, v7, Lcom/join/mgps/adapter/q3$l;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    iget-object v2, v7, Lcom/join/mgps/adapter/q3$l;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    invoke-static {v7}, Lcom/join/mgps/adapter/q3$l;->i(Lcom/join/mgps/adapter/q3$l;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    iget-object v2, v7, Lcom/join/mgps/adapter/q3$l;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v9

    long-to-int v10, v9

    invoke-virtual {v2, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 124
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    mul-double v9, v9, v11

    mul-double v9, v9, v11

    double-to-long v9, v9

    .line 125
    iget-object v2, v7, Lcom/join/mgps/adapter/q3$l;->d:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-eq v2, v4, :cond_8

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v6, :cond_6

    goto :goto_d

    .line 127
    :cond_6
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 128
    iget-object v1, v7, Lcom/join/mgps/adapter/q3$l;->e:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 129
    :cond_7
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v8, :cond_a

    .line 130
    iget-object v2, v7, Lcom/join/mgps/adapter/q3$l;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/S"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 131
    :cond_8
    :goto_d
    iget-object v1, v7, Lcom/join/mgps/adapter/q3$l;->e:Landroid/widget/TextView;

    const-string v2, "\u6682\u505c\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 132
    :pswitch_14
    iget-object v2, v0, Lcom/join/mgps/adapter/q3;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/NowWufunFragment$c;

    iget-object v1, v1, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 133
    invoke-static {v6}, Lcom/join/mgps/adapter/q3$j;->a(Lcom/join/mgps/adapter/q3$j;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u4eca\u65e5\u4e0a\u7ebf"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 134
    :pswitch_15
    iget-object v2, v0, Lcom/join/mgps/adapter/q3;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/NowWufunFragment$c;

    iget-object v1, v1, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 135
    invoke-static {v4}, Lcom/join/mgps/adapter/q3$k;->c(Lcom/join/mgps/adapter/q3$k;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-static {v4}, Lcom/join/mgps/adapter/q3$k;->a(Lcom/join/mgps/adapter/q3$k;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u5927\u603b\u7ba1\u64ad\u62a5"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-static {v4}, Lcom/join/mgps/adapter/q3$k;->e(Lcom/join/mgps/adapter/q3$k;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-static {v4}, Lcom/join/mgps/adapter/q3$k;->g(Lcom/join/mgps/adapter/q3$k;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getPic()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080168

    invoke-static {v2, v6, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 139
    invoke-static {v4}, Lcom/join/mgps/adapter/q3$k;->k(Lcom/join/mgps/adapter/q3$k;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getPic()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0807b1

    invoke-static {v2, v6, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 141
    invoke-static {v4}, Lcom/join/mgps/adapter/q3$k;->o(Lcom/join/mgps/adapter/q3$k;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_e

    .line 142
    :cond_9
    invoke-static {v4}, Lcom/join/mgps/adapter/q3$k;->o(Lcom/join/mgps/adapter/q3$k;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    :goto_e
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/join/mgps/Util/UtilsMy;->h1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/TodayWufunBroadcast;)V

    .line 145
    invoke-static {v4}, Lcom/join/mgps/adapter/q3$k;->m(Lcom/join/mgps/adapter/q3$k;)Lcom/join/mgps/customview/DownloadViewNormal;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/join/mgps/customview/DownloadViewNormal;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 146
    invoke-static {v4}, Lcom/join/mgps/adapter/q3$k;->i(Lcom/join/mgps/adapter/q3$k;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/q3$b;

    invoke-direct {v3, v0, v1}, Lcom/join/mgps/adapter/q3$b;-><init>(Lcom/join/mgps/adapter/q3;Lcom/join/mgps/dto/TodayWufunBroadcast;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_f

    .line 147
    :pswitch_16
    iget-object v2, v0, Lcom/join/mgps/adapter/q3;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/NowWufunFragment$c;

    iget-object v1, v1, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/dto/TodayWufunEverday;

    .line 148
    invoke-static {v4}, Lcom/join/mgps/adapter/q3$k;->c(Lcom/join/mgps/adapter/q3$k;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunEverday;->getGame_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-static {v4}, Lcom/join/mgps/adapter/q3$k;->a(Lcom/join/mgps/adapter/q3$k;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u6bcf\u65e5\u53d1\u73b0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-static {v4}, Lcom/join/mgps/adapter/q3$k;->e(Lcom/join/mgps/adapter/q3$k;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunEverday;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-static {v4}, Lcom/join/mgps/adapter/q3$k;->g(Lcom/join/mgps/adapter/q3$k;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunEverday;->getDiscover_pic()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080168

    invoke-static {v2, v6, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunEverday;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunEverday;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunEverday;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/join/mgps/Util/UtilsMy;->i1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/TodayWufunEverday;)V

    .line 154
    iget-object v2, v4, Lcom/join/mgps/adapter/q3$k;->f:Lcom/join/mgps/customview/DownloadViewBig;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunEverday;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/join/mgps/customview/DownloadViewBig;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 155
    invoke-static {v4}, Lcom/join/mgps/adapter/q3$k;->i(Lcom/join/mgps/adapter/q3$k;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/q3$a;

    invoke-direct {v3, v0, v1}, Lcom/join/mgps/adapter/q3$a;-><init>(Lcom/join/mgps/adapter/q3;Lcom/join/mgps/dto/TodayWufunEverday;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_f

    .line 156
    :pswitch_17
    iget-object v2, v0, Lcom/join/mgps/adapter/q3;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/NowWufunFragment$c;

    iget-object v1, v1, Lcom/join/mgps/activity/NowWufunFragment$c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 157
    invoke-static {v3}, Lcom/join/mgps/adapter/q3$h;->c(Lcom/join/mgps/adapter/q3$h;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v1, v2}, Lcom/join/mgps/Util/x;->B(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-static {v3}, Lcom/join/mgps/adapter/q3$h;->a(Lcom/join/mgps/adapter/q3$h;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "MM\u6708dd\u65e5"

    invoke-static {v1, v2, v4}, Lcom/join/mgps/Util/x;->x(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_f
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method
