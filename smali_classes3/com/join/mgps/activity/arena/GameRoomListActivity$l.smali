.class Lcom/join/mgps/activity/arena/GameRoomListActivity$l;
.super Ljava/lang/Object;
.source "GameRoomListActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;->N2()V
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
        "Lcom/join/mgps/dto/ArenaAdData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$l;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

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
            "Lcom/join/mgps/dto/ArenaAdData;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/ArenaAdData;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/ArenaAdData;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResultMainBean;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    move-result p2

    const/16 v0, 0x258

    if-ne p2, v0, :cond_5

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ArenaAdData;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaAdData;->isC_has_not_read()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$l;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/arena/GameRoomListActivity;->s0:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p2, 0x0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$l;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L0:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->arenaDialogAdData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p2

    const-class v2, Ljava/util/List;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;

    aput-object v4, v3, v0

    invoke-virtual {p2, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    .line 11
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;

    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->getLastShowTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;

    .line 17
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaAdData;->getPopup_info()Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ArenaPopupInfoBean;

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$l;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v1, v0, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->a2(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaPopupInfoBean;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    return-void

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void
.end method
