.class Lcom/join/mgps/activity/g0$i;
.super Ljava/lang/Object;
.source "GamedetialModleBtFragemnt.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/g0;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/g0$i;->a:Lcom/join/mgps/activity/g0;

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
    iget-object v0, p0, Lcom/join/mgps/activity/g0$i;->a:Lcom/join/mgps/activity/g0;

    invoke-virtual {v0}, Lcom/join/mgps/activity/g0;->l0()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/g0$i;->a:Lcom/join/mgps/activity/g0;

    iget-object v0, p1, Lcom/join/mgps/activity/g0;->z0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/g0;->g:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->autoPlayVideo(Lcom/join/android/app/component/video/StandardVideoView;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/g0$i;->a:Lcom/join/mgps/activity/g0;

    invoke-virtual {p1}, Lcom/join/mgps/activity/g0;->pauseVideo()V

    :goto_0
    return-void
.end method
