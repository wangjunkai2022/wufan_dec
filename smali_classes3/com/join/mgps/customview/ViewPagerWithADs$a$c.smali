.class Lcom/join/mgps/customview/ViewPagerWithADs$a$c;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ViewPagerWithADs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ViewPagerWithADs$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ViewPagerWithADs$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$c;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$c;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-static {v1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$c;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-static {v1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$c;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-static {v2}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v2, p2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$c;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-static {v2}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    const v3, 0x7f080168

    invoke-static {v0, v3, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$c;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-virtual {v1, v0, p2}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->h(Landroid/view/View;I)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
