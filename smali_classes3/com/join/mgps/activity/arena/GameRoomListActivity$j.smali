.class Lcom/join/mgps/activity/arena/GameRoomListActivity$j;
.super Ljava/lang/Object;
.source "GameRoomListActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;->V0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResultResMainBean<",
        "Lcom/join/mgps/dto/GameListBannerBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$j;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GameListBannerBean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$j;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->W1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GameListBannerBean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GameListBannerBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResultResMainBean;

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameListBannerBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$j;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X1:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$j;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r1:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$j;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->e3()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$j;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->W1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$j;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->W1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
