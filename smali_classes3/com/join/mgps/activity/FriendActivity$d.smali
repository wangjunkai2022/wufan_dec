.class Lcom/join/mgps/activity/FriendActivity$d;
.super Ljava/lang/Object;
.source "FriendActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FriendActivity;->V0()V
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
.field final synthetic a:Lcom/join/mgps/activity/FriendActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FriendActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$d;->a:Lcom/join/mgps/activity/FriendActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$d;->a:Lcom/join/mgps/activity/FriendActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/FriendActivity;->X0()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
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

    if-eqz p1, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameListBannerBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity$d;->a:Lcom/join/mgps/activity/FriendActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/FriendActivity;->E:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$d;->a:Lcom/join/mgps/activity/FriendActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/FriendActivity;->P0(Lcom/join/mgps/activity/FriendActivity;)I

    move-result p2

    const/16 v0, -0x400

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity$d;->a:Lcom/join/mgps/activity/FriendActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/FriendActivity;->P0(Lcom/join/mgps/activity/FriendActivity;)I

    move-result p2

    :goto_0
    invoke-static {p1, p2}, Lcom/join/mgps/activity/FriendActivity;->Q0(Lcom/join/mgps/activity/FriendActivity;I)I

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$d;->a:Lcom/join/mgps/activity/FriendActivity;

    iget-object p2, p1, Lcom/join/mgps/activity/FriendActivity;->E:Ljava/util/List;

    invoke-static {p1}, Lcom/join/mgps/activity/FriendActivity;->P0(Lcom/join/mgps/activity/FriendActivity;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/GameInfoBean;

    iput-object p2, p1, Lcom/join/mgps/activity/FriendActivity;->G:Lcom/join/mgps/dto/GameInfoBean;

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$d;->a:Lcom/join/mgps/activity/FriendActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/FriendActivity;->R0(Lcom/join/mgps/activity/FriendActivity;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$d;->a:Lcom/join/mgps/activity/FriendActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/FriendActivity;->B:Lcom/join/mgps/activity/FriendActivity$j;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$d;->a:Lcom/join/mgps/activity/FriendActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/FriendActivity;->X0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$d;->a:Lcom/join/mgps/activity/FriendActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/FriendActivity;->X0()V

    :cond_2
    :goto_1
    return-void
.end method
