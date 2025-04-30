.class Lcom/join/mgps/activity/arena/GameRoomListActivity$x;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "GameRoomListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "x"
.end annotation


# instance fields
.field private a:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaGameRoomListConfig;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    invoke-direct {p0, p3}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->a:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/activity/arena/GameRoomListActivity$x;Lcom/join/mgps/dto/ArenaGameRoomListConfig;)Lcom/join/mgps/dto/ArenaGameRoomListConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->a:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->a:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F1(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaGameRoomListConfig;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->a:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->q3(ILcom/join/mgps/dto/ArenaGameRoomListConfig;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
