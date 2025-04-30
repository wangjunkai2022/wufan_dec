.class Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "VipSpecialZoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p3, p3, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, p2, :cond_0

    .line 2
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iget-object p3, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p3, p3, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 2
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
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
