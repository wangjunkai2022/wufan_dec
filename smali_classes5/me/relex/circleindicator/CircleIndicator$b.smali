.class Lme/relex/circleindicator/CircleIndicator$b;
.super Landroid/database/DataSetObserver;
.source "CircleIndicator.java"


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
    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 2
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->i(Lme/relex/circleindicator/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->i(Lme/relex/circleindicator/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    iget v2, v1, Lme/relex/circleindicator/BaseCircleIndicator;->j:I

    if-ge v2, v0, :cond_3

    .line 7
    invoke-static {v1}, Lme/relex/circleindicator/CircleIndicator;->i(Lme/relex/circleindicator/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, v1, Lme/relex/circleindicator/BaseCircleIndicator;->j:I

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    .line 8
    iput v0, v1, Lme/relex/circleindicator/BaseCircleIndicator;->j:I

    .line 9
    :goto_1
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->j(Lme/relex/circleindicator/CircleIndicator;)V

    return-void
.end method
