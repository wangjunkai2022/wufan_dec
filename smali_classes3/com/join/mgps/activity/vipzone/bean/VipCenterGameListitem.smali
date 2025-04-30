.class public Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;
.super Ljava/lang/Object;
.source "VipCenterGameListitem.java"


# instance fields
.field private board_id:I

.field private game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/IconGame;",
            ">;"
        }
    .end annotation
.end field

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoard_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;->board_id:I

    return v0
.end method

.method public getGame_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/IconGame;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;->game_list:Ljava/util/List;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setBoard_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;->board_id:I

    return-void
.end method

.method public setGame_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/IconGame;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;->game_list:Ljava/util/List;

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;->title:Ljava/lang/String;

    return-void
.end method
