.class Lcom/join/mgps/activity/GameDetailActivity$n;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GameDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/activity/GameDetailActivity$m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/activity/GameDetailActivity$m;I)V
    .locals 18
    .param p1    # Lcom/join/mgps/activity/GameDetailActivity$m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ""

    .line 1
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->O0(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x2

    mul-int/lit8 v5, p2, 0x2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/join/mgps/dto/GameListItemBean;

    .line 2
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameListItemBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    .line 3
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0710bf

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 4
    iget-object v7, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 5
    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v8, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07125c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    sub-int/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    if-lt v0, v7, :cond_0

    .line 6
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 8
    iget-object v7, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->j:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 11
    iget-object v7, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->j:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    :goto_0
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameListItemBean;->getBg_color_tag_type()I

    move-result v0

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v8, 0x0

    goto/16 :goto_2

    .line 13
    :pswitch_0
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->k:Landroid/widget/LinearLayout;

    const v8, 0x7f080492

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const-string v0, "#68465B"

    .line 14
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 15
    :pswitch_1
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->k:Landroid/widget/LinearLayout;

    const v8, 0x7f080495

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const-string v0, "#41578D"

    .line 16
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 17
    :pswitch_2
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->k:Landroid/widget/LinearLayout;

    const v8, 0x7f080491

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const-string v0, "#3A8282"

    .line 18
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 19
    :pswitch_3
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->k:Landroid/widget/LinearLayout;

    const v8, 0x7f08048f

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const-string v0, "#84975C"

    .line 20
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 21
    :pswitch_4
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->k:Landroid/widget/LinearLayout;

    const v8, 0x7f080490

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const-string v0, "#A4961B"

    .line 22
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 23
    :pswitch_5
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->k:Landroid/widget/LinearLayout;

    const v8, 0x7f08048e

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const-string v0, "#5E4643"

    .line 24
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 25
    :pswitch_6
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->k:Landroid/widget/LinearLayout;

    const v8, 0x7f080493

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const-string v0, "#AB3B3A"

    .line 26
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 27
    :pswitch_7
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->k:Landroid/widget/LinearLayout;

    const v8, 0x7f080494

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const-string v0, "#776353"

    .line 28
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 29
    :pswitch_8
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->k:Landroid/widget/LinearLayout;

    const v8, 0x7f08048d

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const-string v0, "#767676"

    .line 30
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_1
    move v8, v0

    .line 31
    :goto_2
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v9, 0x7f0807b1

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v12, v11, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f07113b

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v12, v11}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v11

    invoke-static {v0, v9, v10, v11}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 32
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameListItemBean;->getComment_score_switch()I

    move-result v0

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/16 v11, 0x8

    if-ne v0, v10, :cond_2

    .line 34
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v0

    const-string v12, "0.0"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->c:Landroid/widget/TextView;

    const-string v12, "\u6682\u672a\u51fa\u5206"

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->c:Landroid/widget/TextView;

    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 37
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->c:Landroid/widget/TextView;

    const-string v12, "#8a8a8a"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 38
    :cond_1
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->c:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :goto_3
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->h:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0, v7}, Lcom/join/mgps/customview/MStarBar;->setIntegerMark(Z)V

    .line 40
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->h:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 41
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->h:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0, v9}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    .line 42
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    mul-double v14, v14, v12

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    div-double/2addr v14, v12

    .line 43
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->h:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0, v14, v15}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 44
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 45
    :cond_2
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 46
    :goto_4
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    iget-object v12, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->k:Landroid/widget/LinearLayout;

    invoke-static {v0, v12, v6}, Lcom/join/mgps/Util/UtilsMy;->C2(Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 47
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->k:Landroid/widget/LinearLayout;

    new-instance v12, Lcom/join/mgps/activity/GameDetailActivity$i;

    iget-object v13, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-direct {v12, v13, v6, v4}, Lcom/join/mgps/activity/GameDetailActivity$i;-><init>(Lcom/join/mgps/activity/GameDetailActivity;Lcom/join/mgps/dto/GameListItemBean;I)V

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->d:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u7b80\u4ecb\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GameListItemBean;->getGame_describe_second()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameListItemBean;->getGame_describe_second()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->o:Landroid/widget/LinearLayout;

    const/4 v12, 0x4

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 51
    :cond_3
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52
    :goto_5
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->p:Landroid/view/View;

    new-instance v12, Lcom/join/mgps/activity/GameDetailActivity$n$a;

    invoke-direct {v12, v1, v6}, Lcom/join/mgps/activity/GameDetailActivity$n$a;-><init>(Lcom/join/mgps/activity/GameDetailActivity$n;Lcom/join/mgps/dto/GameListItemBean;)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->d:Landroid/widget/TextView;

    new-instance v12, Lcom/join/mgps/activity/GameDetailActivity$n$b;

    invoke-direct {v12, v1, v6}, Lcom/join/mgps/activity/GameDetailActivity$n$b;-><init>(Lcom/join/mgps/activity/GameDetailActivity$n;Lcom/join/mgps/dto/GameListItemBean;)V

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->d:Landroid/widget/TextView;

    new-instance v12, Lcom/join/mgps/activity/GameDetailActivity$n$c;

    invoke-direct {v12, v1, v2}, Lcom/join/mgps/activity/GameDetailActivity$n$c;-><init>(Lcom/join/mgps/activity/GameDetailActivity$n;Lcom/join/mgps/activity/GameDetailActivity$m;)V

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 55
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->o:Landroid/widget/LinearLayout;

    new-instance v12, Lcom/join/mgps/activity/GameDetailActivity$n$d;

    invoke-direct {v12, v1, v6}, Lcom/join/mgps/activity/GameDetailActivity$n$d;-><init>(Lcom/join/mgps/activity/GameDetailActivity$n;Lcom/join/mgps/dto/GameListItemBean;)V

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "res:///2131231906"

    .line 56
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v12

    .line 58
    invoke-virtual {v12, v0}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v0

    iget-object v12, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->m:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 59
    invoke-virtual {v12}, Lcom/facebook/drawee/view/DraweeView;->getController()Lk0/a;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->O(Lk0/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 60
    invoke-virtual {v0, v10}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->E(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 61
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/d;

    .line 62
    iget-object v10, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->m:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v10, v0}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V

    .line 63
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->O0(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v5, v4

    if-gt v0, v5, :cond_4

    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->R0(Lcom/join/mgps/activity/GameDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->m:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 66
    :cond_4
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->m:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    :goto_6
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v13

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getAppSize()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v15

    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->f:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v5, v5, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    invoke-static/range {v12 .. v17}, Lcom/join/mgps/Util/UtilsMy;->H(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 69
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 71
    iget-object v5, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->i:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_7

    .line 72
    :cond_5
    iget-object v5, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->i:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 73
    :goto_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 74
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_6

    .line 75
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v12}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 76
    :cond_6
    new-instance v0, Lcom/join/mgps/adapter/w0;

    iget-object v10, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v10, v10, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_position()I

    move-result v12

    invoke-direct {v0, v10, v12, v5, v7}, Lcom/join/mgps/adapter/w0;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/adapter/w0;->b()V

    .line 78
    iget-object v10, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->i:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v10, v0}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->i:Lit/sephiroth/android/library/widget/HListView;

    new-instance v10, Lcom/join/mgps/activity/GameDetailActivity$n$e;

    invoke-direct {v10, v1, v5, v6}, Lcom/join/mgps/activity/GameDetailActivity$n$e;-><init>(Lcom/join/mgps/activity/GameDetailActivity$n;Ljava/util/List;Lcom/join/mgps/dto/GameListItemBean;)V

    invoke-virtual {v0, v10}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    .line 80
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameListItemBean;->getComment_list()Ljava/util/List;

    move-result-object v5

    .line 81
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCustomer_info()Ljava/lang/String;

    move-result-object v0

    .line 82
    :try_start_0
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v5, :cond_7

    .line 83
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 84
    new-instance v10, Lcom/join/mgps/dto/CommentBaseBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/CommentBaseBean;-><init>()V

    .line 85
    iget-object v12, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v12, v12, Lcom/join/mgps/activity/GameDetailActivity;->t0:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    invoke-virtual {v12}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getPortrait()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/join/mgps/dto/CommentBaseBean;->setHead_portrait(Ljava/lang/String;)V

    .line 86
    iget-object v12, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v12, v12, Lcom/join/mgps/activity/GameDetailActivity;->t0:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    invoke-virtual {v12}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getNick_name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/join/mgps/dto/CommentBaseBean;->setUser_name(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v10, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setContent(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v10, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setId(Ljava/lang/String;)V

    const-string v0, "0"

    .line 89
    invoke-virtual {v10, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setStars_score(Ljava/lang/String;)V

    .line 90
    invoke-interface {v5, v7, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_9
    if-eqz v5, :cond_9

    .line 92
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_a

    .line 93
    :cond_8
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->j:Lit/sephiroth/android/library/widget/HListView;

    new-instance v10, Lcom/join/mgps/activity/GameDetailActivity$j;

    iget-object v12, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-direct {v10, v12, v5, v8, v6}, Lcom/join/mgps/activity/GameDetailActivity$j;-><init>(Lcom/join/mgps/activity/GameDetailActivity;Ljava/util/List;ILcom/join/mgps/dto/GameListItemBean;)V

    invoke-virtual {v0, v10}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->j:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_b

    .line 95
    :cond_9
    :goto_a
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->j:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 96
    :goto_b
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameListItemBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 97
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v10}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 98
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    const-string v2, "\u5f00\u59cb"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    :cond_a
    const-string v3, "\u66f4\u65b0"

    const v5, 0x7f1100d2

    const v8, 0x7f080497

    if-nez v0, :cond_f

    .line 99
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 102
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v4, v4, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 103
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v4

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_b

    goto :goto_c

    :cond_b
    move v7, v0

    :goto_c
    if-eqz v7, :cond_d

    .line 104
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v4, v4, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 105
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ge v0, v4, :cond_c

    .line 106
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 107
    :cond_c
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 108
    :cond_d
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 109
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->k:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v6}, Lcom/join/mgps/Util/UtilsMy;->C2(Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_d

    .line 110
    :cond_e
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 111
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->k:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v6}, Lcom/join/mgps/Util/UtilsMy;->C2(Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_d

    .line 112
    :cond_f
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v10

    .line 113
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v12

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v12

    const/16 v13, 0x2b

    if-lez v12, :cond_10

    const/16 v10, 0x2b

    .line 114
    :cond_10
    iget-object v12, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->l:Landroid/widget/ImageView;

    invoke-virtual {v12, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v8, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->l:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v10, :cond_16

    const/16 v7, 0x1b

    const v8, 0x7f080324

    const-string v12, "%"

    if-eq v10, v7, :cond_15

    const/16 v7, 0x30

    if-eq v10, v7, :cond_14

    if-eq v10, v4, :cond_13

    const/4 v4, 0x3

    if-eq v10, v4, :cond_12

    if-eq v10, v9, :cond_11

    const/4 v4, 0x6

    if-eq v10, v4, :cond_12

    const/4 v0, 0x7

    if-eq v10, v0, :cond_16

    const/16 v0, 0x2a

    if-eq v10, v0, :cond_11

    if-eq v10, v13, :cond_16

    packed-switch v10, :pswitch_data_1

    goto/16 :goto_d

    .line 116
    :pswitch_9
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    const-string v3, "\u89e3\u538b"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 118
    :pswitch_a
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    const-string v3, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 120
    :pswitch_b
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    const-string v3, "\u5b89\u88c5"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 122
    :pswitch_c
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 123
    :pswitch_d
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 124
    :cond_11
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 126
    :cond_12
    iget-object v3, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->l:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 128
    :cond_13
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 129
    iget-object v3, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->l:Landroid/widget/ImageView;

    const v4, 0x7f080325

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 131
    :cond_14
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    const-string v3, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d

    .line 133
    :cond_15
    iget-object v3, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->l:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 135
    :cond_16
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 136
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity$m;->k:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v6}, Lcom/join/mgps/Util/UtilsMy;->C2(Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/join/mgps/dto/CollectionBeanSub;)V

    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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
    .packed-switch 0x9
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/GameDetailActivity$m;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c02a4

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/activity/GameDetailActivity$m;

    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/GameDetailActivity$m;-><init>(Lcom/join/mgps/activity/GameDetailActivity;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->O0(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/join/mgps/activity/GameDetailActivity$m;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/GameDetailActivity$n;->a(Lcom/join/mgps/activity/GameDetailActivity$m;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/GameDetailActivity$n;->b(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/GameDetailActivity$m;

    move-result-object p1

    return-object p1
.end method
