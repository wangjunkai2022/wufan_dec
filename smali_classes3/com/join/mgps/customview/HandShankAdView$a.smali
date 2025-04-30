.class Lcom/join/mgps/customview/HandShankAdView$a;
.super Ljava/lang/Object;
.source "HandShankAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/HandShankAdView;->m(Lcom/join/mgps/dto/HandShankAdBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/HandShankAdBean;

.field final synthetic b:Lcom/join/mgps/customview/HandShankAdView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/HandShankAdView;Lcom/join/mgps/dto/HandShankAdBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    iput-object p2, p0, Lcom/join/mgps/customview/HandShankAdView$a;->a:Lcom/join/mgps/dto/HandShankAdBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    const v3, 0x7f0907e2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/high16 v3, 0x41000000    # 8.0f

    .line 3
    invoke-static {v1, v3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v3

    .line 4
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->a:Lcom/join/mgps/dto/HandShankAdBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/HandShankAdBean;->getTop_banner_ad()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->a:Lcom/join/mgps/dto/HandShankAdBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/HandShankAdBean;->getTop_banner_ad()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 5
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->a:Lcom/join/mgps/dto/HandShankAdBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/HandShankAdBean;->getTop_banner_ad()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/BannerBean;

    .line 6
    invoke-virtual {v4}, Lcom/join/mgps/dto/BannerBean;->getAd_switch()I

    move-result v8

    if-ne v8, v5, :cond_0

    .line 7
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const v8, 0x7f080168

    .line 8
    invoke-virtual {v4}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 9
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    invoke-static {v4}, Lcom/join/mgps/customview/HandShankAdView;->a(Lcom/join/mgps/customview/HandShankAdView;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    :goto_0
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->a:Lcom/join/mgps/dto/HandShankAdBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/HandShankAdBean;->getFast_entrance_ad()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->a:Lcom/join/mgps/dto/HandShankAdBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/HandShankAdBean;->getFast_entrance_ad()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 14
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->a:Lcom/join/mgps/dto/HandShankAdBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/HandShankAdBean;->getFast_entrance_ad()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/high16 v8, 0x42400000    # 48.0f

    .line 15
    invoke-static {v1, v8}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x40e00000    # 7.0f

    .line 16
    invoke-static {v1, v9}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_4

    const/4 v11, 0x5

    if-ge v10, v11, :cond_4

    .line 17
    iget-object v11, v0, Lcom/join/mgps/customview/HandShankAdView$a;->a:Lcom/join/mgps/dto/HandShankAdBean;

    invoke-virtual {v11}, Lcom/join/mgps/dto/HandShankAdBean;->getFast_entrance_ad()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/BannerBean;

    .line 18
    invoke-virtual {v11}, Lcom/join/mgps/dto/BannerBean;->getAd_switch()I

    move-result v12

    if-nez v12, :cond_2

    goto :goto_2

    .line 19
    :cond_2
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v13, v7, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v13, 0x11

    .line 21
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 22
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 23
    new-instance v13, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-direct {v13, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 26
    iget-object v14, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    invoke-static {v14}, Lcom/join/mgps/customview/HandShankAdView;->a(Lcom/join/mgps/customview/HandShankAdView;)Landroid/view/View$OnClickListener;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v14, 0x7f0807b1

    .line 27
    invoke-virtual {v11}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 28
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v15, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    iput v3, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 31
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v5, v9

    .line 32
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v5, "#585858"

    .line 33
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    invoke-virtual {v11}, Lcom/join/mgps/dto/BannerBean;->getSub_title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 36
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    iget-object v5, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    invoke-static {v5}, Lcom/join/mgps/customview/HandShankAdView;->b(Lcom/join/mgps/customview/HandShankAdView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 38
    :cond_3
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    invoke-static {v4}, Lcom/join/mgps/customview/HandShankAdView;->b(Lcom/join/mgps/customview/HandShankAdView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 39
    :cond_4
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v4}, Lcom/join/mgps/customview/HandShankAdView;->f()V

    .line 40
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    invoke-static {v4}, Lcom/join/mgps/customview/HandShankAdView;->b(Lcom/join/mgps/customview/HandShankAdView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 41
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/high16 v5, 0x43020000    # 130.0f

    if-ne v2, v6, :cond_6

    if-gtz v4, :cond_5

    .line 42
    iget-object v1, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    invoke-static {v1}, Lcom/join/mgps/customview/HandShankAdView;->c(Lcom/join/mgps/customview/HandShankAdView;)V

    goto :goto_3

    .line 43
    :cond_5
    iget-object v2, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    invoke-static {v2}, Lcom/join/mgps/customview/HandShankAdView;->b(Lcom/join/mgps/customview/HandShankAdView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 45
    iget-object v3, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    invoke-static {v3}, Lcom/join/mgps/customview/HandShankAdView;->b(Lcom/join/mgps/customview/HandShankAdView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-static {v1, v5}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v1

    .line 47
    iget-object v2, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 48
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 49
    iget-object v1, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_6
    if-gtz v4, :cond_7

    .line 50
    iget-object v2, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v2, v7, v7, v7, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 51
    invoke-static {v1, v5}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v1

    .line 52
    iget-object v2, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 53
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 54
    iget-object v1, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v1, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/customview/HandShankAdView;

    invoke-static {v1}, Lcom/join/mgps/customview/HandShankAdView;->b(Lcom/join/mgps/customview/HandShankAdView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    :goto_3
    return-void
.end method
