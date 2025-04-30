.class public Lcom/join/mgps/control/b;
.super Landroid/widget/BaseAdapter;
.source "RhythmAdapter.java"


# instance fields
.field private a:F

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDiscoverBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/content/Context;

.field private e:Lcom/join/mgps/control/RhythmLayout;

.field f:I

.field g:I

.field h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/control/RhythmLayout;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/join/mgps/control/RhythmLayout;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDiscoverBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/control/b;->d:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/control/b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/control/b;->b:Ljava/util/List;

    .line 5
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p2, p0, Lcom/join/mgps/control/b;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070dd4

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/control/b;->f:I

    .line 7
    iget-object p2, p0, Lcom/join/mgps/control/b;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070dd3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/control/b;->g:I

    .line 8
    iget-object p2, p0, Lcom/join/mgps/control/b;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 p3, 0x1

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p3, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/join/mgps/control/b;->h:I

    if-eqz p1, :cond_0

    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/control/b;->c:Landroid/view/LayoutInflater;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDiscoverBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDiscoverBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/b;->b:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDiscoverBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/control/b;->b:Ljava/util/List;

    return-void
.end method

.method public d(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/control/b;->a:F

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/join/mgps/control/b;->c:Landroid/view/LayoutInflater;

    const p3, 0x7f0c007e

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 2
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/join/mgps/control/b;->a:F

    float-to-int v0, v0

    iget v1, p0, Lcom/join/mgps/control/b;->f:I

    invoke-direct {p3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget p3, p0, Lcom/join/mgps/control/b;->a:F

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 4
    iget p3, p0, Lcom/join/mgps/control/b;->h:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 5
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    .line 6
    iget v1, p0, Lcom/join/mgps/control/b;->a:F

    float-to-int v1, v1

    iget v2, p0, Lcom/join/mgps/control/b;->g:I

    sub-int/2addr v1, v2

    .line 7
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/join/mgps/control/b;->f:I

    iget v4, p0, Lcom/join/mgps/control/b;->g:I

    sub-int/2addr v3, v4

    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p3, 0x7f090700

    .line 8
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 10
    iget v1, p0, Lcom/join/mgps/control/b;->g:I

    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0xe

    .line 11
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 12
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/control/b;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/join/mgps/control/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getIco_remote()Ljava/lang/String;

    const v0, 0x7f0807b1

    .line 15
    iget-object v1, p0, Lcom/join/mgps/control/b;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameDiscoverBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getIco_remote()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/control/b;->d:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-static {p3, v0, p1, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    :cond_0
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/control/b;->e:Lcom/join/mgps/control/RhythmLayout;

    invoke-virtual {v0}, Lcom/join/mgps/control/RhythmLayout;->q()V

    return-void
.end method
