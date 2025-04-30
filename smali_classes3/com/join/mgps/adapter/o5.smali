.class public Lcom/join/mgps/adapter/o5;
.super Lcom/join/mgps/customview/a;
.source "SimpleCarouselAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/customview/a<",
        "Lcom/join/mgps/customview/CarouselViewPager2;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/customview/CarouselViewPager2;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/join/mgps/customview/CarouselViewPager2;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/a;-><init>(Lcom/join/mgps/customview/CarouselViewPager2;)V

    .line 2
    iput-object p3, p0, Lcom/join/mgps/adapter/o5;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/o5;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic d(Lcom/join/mgps/adapter/o5;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/BannerBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/o5;->g(Lcom/join/mgps/dto/BannerBean;)V

    return-void
.end method

.method private g(Lcom/join/mgps/dto/BannerBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getJump_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getLink_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getLink_type()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getTpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/o5;->d:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0147

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090092

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 3
    new-instance v2, Lcom/join/mgps/adapter/o5$a;

    invoke-direct {v2, p0, p2}, Lcom/join/mgps/adapter/o5$a;-><init>(Lcom/join/mgps/adapter/o5;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/adapter/o5;->c:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/join/mgps/adapter/o5;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0710e2    # 1.7953344E38f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    const v3, 0x7f080168

    invoke-static {v1, v3, p2, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    const/4 p2, -0x1

    .line 5
    invoke-virtual {p1, v0, p2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-object v0
.end method

.method public f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/o5;->c:Ljava/util/List;

    return-void
.end method
