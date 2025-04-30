.class public Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;
.super Ljava/lang/Object;
.source "GameFromPopoWinBeanV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameFromPopoWinBeanV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;
    }
.end annotation


# instance fields
.field private add_time:Ljava/lang/String;

.field private book_count:Ljava/lang/String;

.field private current_game_state:Ljava/lang/String;

.field private game_count:Ljava/lang/String;

.field private game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private nick_name:Ljava/lang/String;

.field private portrait:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdd_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->add_time:Ljava/lang/String;

    return-object v0
.end method

.method public getBook_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->book_count:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent_game_state()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->current_game_state:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->game_count:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->game_list:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPortrait()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->portrait:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->uid:I

    return v0
.end method

.method public setAdd_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->add_time:Ljava/lang/String;

    return-void
.end method

.method public setBook_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->book_count:Ljava/lang/String;

    return-void
.end method

.method public setCurrent_game_state(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->current_game_state:Ljava/lang/String;

    return-void
.end method

.method public setGame_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->game_count:Ljava/lang/String;

    return-void
.end method

.method public setGame_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->game_list:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->nick_name:Ljava/lang/String;

    return-void
.end method

.method public setPortrait(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->portrait:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->uid:I

    return-void
.end method
