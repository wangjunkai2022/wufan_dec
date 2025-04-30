.class Lcom/join/mgps/activity/FriendActivity$e;
.super Ljava/lang/Object;
.source "FriendActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FriendActivity;->U0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResultMainBean<",
        "Lcom/join/mgps/dto/ArenaGameRoomListConfig;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/FriendActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FriendActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$e;->a:Lcom/join/mgps/activity/FriendActivity;

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
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/ArenaGameRoomListConfig;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/ArenaGameRoomListConfig;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/ArenaGameRoomListConfig;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResultMainBean;

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameConfig;->getCollection_id()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-gtz p2, :cond_1

    goto/16 :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_2

    goto/16 :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameConfig;

    .line 10
    new-instance v1, Lcom/join/mgps/dto/GameInfoBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/GameInfoBean;-><init>()V

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getCollection_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setCollection_id(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getGame_ico()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setPic_remote(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getGame_ico()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setGame_ico(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setGame_id(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setGame_name(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getRoom_count()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setRoom_count(I)V

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setTitle(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getPic_cover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GameInfoBean;->setPic_cover(Ljava/lang/String;)V

    .line 19
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$e;->a:Lcom/join/mgps/activity/FriendActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/FriendActivity;->F:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$e;->a:Lcom/join/mgps/activity/FriendActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/FriendActivity;->F:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$e;->a:Lcom/join/mgps/activity/FriendActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/FriendActivity;->C:Lcom/join/mgps/activity/FriendActivity$g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$e;->a:Lcom/join/mgps/activity/FriendActivity;

    const-string p2, "\u83b7\u53d6\u6e38\u620f\u914d\u7f6e\u4fe1\u606f\u5931\u8d25\uff01"

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/FriendActivity;->toast(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
