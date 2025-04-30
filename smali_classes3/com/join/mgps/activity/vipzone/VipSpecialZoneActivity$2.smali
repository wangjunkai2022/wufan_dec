.class Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;
.super Ljava/lang/Object;
.source "VipSpecialZoneActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p2, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->loding_faile:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->loding_layout:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual/range {p2 .. p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2
    invoke-virtual/range {p2 .. p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ResponseModel;

    .line 3
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;

    .line 5
    iget-object v3, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-virtual {v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->getScreening_condition()Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    move-result-object v4

    iput-object v4, v3, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    .line 6
    iget-object v3, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    invoke-virtual {v3}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getSort_type()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setIsselected(Z)V

    .line 7
    new-instance v3, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    invoke-direct {v3}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;-><init>()V

    .line 8
    invoke-virtual {v3, v1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setId(I)V

    const-string v5, "\u5168\u90e8\u6e38\u620f"

    .line 9
    invoke-virtual {v3, v5}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setTitle(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3, v4}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setIsselected(Z)V

    .line 11
    iget-object v6, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v6, v6, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    invoke-virtual {v6}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_class()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12
    new-instance v3, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    invoke-direct {v3}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;-><init>()V

    .line 13
    invoke-virtual {v3, v1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setId(I)V

    .line 14
    invoke-virtual {v3, v5}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setTitle(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3, v4}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setIsselected(Z)V

    .line 16
    iget-object v5, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v5, v5, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    invoke-virtual {v5}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_type()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17
    iget-object v3, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 18
    iget-object v3, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 19
    invoke-virtual {v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->getBanner()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    move-object v7, v5

    move-object v8, v7

    const/4 v6, 0x0

    .line 20
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_2

    .line 21
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/BannerBean;

    .line 22
    invoke-virtual {v9}, Lcom/join/mgps/dto/BannerBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v10

    .line 23
    new-instance v11, Lcom/join/mgps/dto/ExtBean;

    iget-object v12, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget v12, v12, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from_type:I

    invoke-direct {v11, v12}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 24
    iget-object v11, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v11, v11, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0c0147

    invoke-virtual {v11, v12, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const v13, 0x7f090092

    .line 25
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 26
    new-instance v15, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2$1;

    invoke-direct {v15, v0, v10}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2$1;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;Lcom/join/mgps/Util/IntentDateBean;)V

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {v9}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v13, 0x7f0710e2    # 1.7953344E38f

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    const v4, 0x7f080168

    invoke-static {v14, v4, v15, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 28
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v6, :cond_0

    .line 29
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v12, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v1, 0x7f090092

    .line 30
    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 31
    new-instance v11, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2$2;

    invoke-direct {v11, v0, v10}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2$2;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;Lcom/join/mgps/Util/IntentDateBean;)V

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {v9}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v10, v10, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v10

    invoke-static {v1, v4, v9, v10}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    const/4 v11, 0x1

    goto :goto_1

    .line 33
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    if-ne v6, v1, :cond_1

    .line 34
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v12, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v1, 0x7f090092

    .line 35
    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 36
    new-instance v12, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2$3;

    invoke-direct {v12, v0, v10}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2$3;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;Lcom/join/mgps/Util/IntentDateBean;)V

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {v9}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v10, v10, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v10, v12}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v10

    invoke-static {v1, v4, v9, v10}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 38
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-static {v1, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->access$100(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;)V

    return-void

    :cond_3
    const/4 v3, 0x0

    .line 41
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->loding_faile:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->loding_layout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
