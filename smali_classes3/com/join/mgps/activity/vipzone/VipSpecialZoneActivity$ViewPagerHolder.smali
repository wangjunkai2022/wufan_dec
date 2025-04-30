.class Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewPagerHolder;
.super Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;
.source "VipSpecialZoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewPagerHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

.field viewpager:Lcom/join/mgps/customview/CarouselViewPager2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewPagerHolder;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Landroid/view/View;)V

    const p1, 0x7f091291

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/CarouselViewPager2;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewPagerHolder;->viewpager:Lcom/join/mgps/customview/CarouselViewPager2;

    return-void
.end method
