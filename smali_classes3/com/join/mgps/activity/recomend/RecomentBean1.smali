.class public Lcom/join/mgps/activity/recomend/RecomentBean1;
.super Ljava/lang/Object;
.source "RecomentBean1.java"


# instance fields
.field private game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/RecomentBean;",
            ">;"
        }
    .end annotation
.end field

.field private user_protocol:Lcom/join/mgps/activity/recomend/UserProtocolBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/RecomentBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomentBean1;->game_list:Ljava/util/List;

    return-object v0
.end method

.method public getUser_protocol()Lcom/join/mgps/activity/recomend/UserProtocolBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomentBean1;->user_protocol:Lcom/join/mgps/activity/recomend/UserProtocolBean;

    return-object v0
.end method

.method public setGame_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/RecomentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomentBean1;->game_list:Ljava/util/List;

    return-void
.end method

.method public setUser_protocol(Lcom/join/mgps/activity/recomend/UserProtocolBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomentBean1;->user_protocol:Lcom/join/mgps/activity/recomend/UserProtocolBean;

    return-void
.end method
