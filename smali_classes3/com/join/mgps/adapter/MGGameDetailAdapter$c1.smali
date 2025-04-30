.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c1"
.end annotation


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Lcom/join/mgps/customview/CarouselViewPager2;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/View;

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BannerImage;",
            ">;"
        }
    .end annotation
.end field

.field f:[Landroid/widget/ImageView;

.field final synthetic g:Lcom/join/mgps/adapter/MGGameDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/widget/ImageView;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->d:Landroid/view/View;

    const v0, 0x7f090c2a

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->c:Landroid/view/ViewGroup;

    const v0, 0x7f091060

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CarouselViewPager2;

    iput-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    .line 7
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const p1, 0x7f090b79

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->a:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;)Lcom/join/mgps/customview/CarouselViewPager2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->d(Ljava/util/List;I)V

    return-void
.end method

.method private d(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getJump_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLink_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 8
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLink_type()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 9
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getTpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 11
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 14
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Lcom/join/mgps/dto/BannerImage;

    invoke-direct {v2}, Lcom/join/mgps/dto/BannerImage;-><init>()V

    .line 4
    new-instance v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080168

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 6
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/BannerImage;->setImageView(Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/BannerImage;->setUrl(Ljava/lang/String;)V

    .line 9
    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$b;

    invoke-direct {v2, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$b;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;Ljava/util/List;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070dde

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 12
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ddd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 13
    iget-object v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    const/4 v3, 0x0

    .line 15
    :goto_1
    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v3, v5, :cond_3

    const/16 v5, 0x8

    if-le v3, v5, :cond_1

    goto :goto_3

    .line 16
    :cond_1
    new-instance v5, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v7}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v3

    .line 17
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 18
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 19
    invoke-virtual {v4, v1, v0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 20
    iget-object v5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v3, :cond_2

    .line 21
    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    aget-object v4, v4, v3

    const v5, 0x7f080a0e

    .line 22
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 23
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    aget-object v4, v4, v3

    const v5, 0x7f080a0c

    .line 24
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 25
    :goto_2
    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->c:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 26
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 27
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->a:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 28
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 29
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 30
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/BannerImage;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerImage;->getImageView()Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object p1

    .line 31
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerImage;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerImage;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 33
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 35
    :cond_4
    new-instance v0, Lcom/join/mgps/adapter/o5;

    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    invoke-direct {v0, v1, v2, p1}, Lcom/join/mgps/adapter/o5;-><init>(Landroid/content/Context;Lcom/join/mgps/customview/CarouselViewPager2;Ljava/util/List;)V

    .line 36
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 37
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_5
    :goto_4
    return-void
.end method
