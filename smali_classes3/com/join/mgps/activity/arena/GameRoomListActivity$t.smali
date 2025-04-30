.class Lcom/join/mgps/activity/arena/GameRoomListActivity$t;
.super Ljava/lang/Object;
.source "GameRoomListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$t;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$t;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->H1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$t;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$t;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :goto_0
    return-void
.end method
