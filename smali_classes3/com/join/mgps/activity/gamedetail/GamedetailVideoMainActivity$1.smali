.class Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;
.super Ljava/lang/Object;
.source "GamedetailVideoMainActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->updateUi(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

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
    .locals 3

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;->pauseVideo()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    invoke-virtual {p1}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->resumVideo()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    const-string v0, "1"

    invoke-static {p1, v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->access$000(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    invoke-virtual {p1}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->pauseVideo()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;->resumVideo()V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    invoke-virtual {p1}, Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;->hideCover()V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->access$100(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->video_visitGamePage:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    const/4 p1, 0x0

    .line 10
    sput-boolean p1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->hasInAnim:Z

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->access$000(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
