.class Lme/relex/circleindicator/CircleIndicator$a;
.super Ljava/lang/Object;
.source "CircleIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/circleindicator/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/relex/circleindicator/CircleIndicator;


# direct methods
.method constructor <init>(Lme/relex/circleindicator/CircleIndicator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->i(Lme/relex/circleindicator/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    .line 2
    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->i(Lme/relex/circleindicator/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-virtual {v0, p1}, Lme/relex/circleindicator/CircleIndicator;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method
