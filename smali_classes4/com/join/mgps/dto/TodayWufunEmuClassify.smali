.class public Lcom/join/mgps/dto/TodayWufunEmuClassify;
.super Ljava/lang/Object;
.source "TodayWufunEmuClassify.java"


# instance fields
.field public game_count:Ljava/lang/String;

.field public game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TodayWufunBroadcast;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEmuClassify;->game_count:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TodayWufunBroadcast;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEmuClassify;->game_list:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunEmuClassify;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEmuClassify;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setGame_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEmuClassify;->game_count:Ljava/lang/String;

    return-void
.end method

.method public setGame_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TodayWufunBroadcast;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEmuClassify;->game_list:Ljava/util/List;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunEmuClassify;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEmuClassify;->name:Ljava/lang/String;

    return-void
.end method
