.class public Lcom/join/mgps/dto/GameOLFirstBean;
.super Lcom/join/mgps/dto/CollectionBeanSub;
.source "GameOLFirstBean.java"


# instance fields
.field private game_open_time:Ljava/lang/String;

.field private papa_privilege:Ljava/lang/String;

.field private update_times:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_open_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameOLFirstBean;->game_open_time:Ljava/lang/String;

    return-object v0
.end method

.method public getPapa_privilege()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameOLFirstBean;->papa_privilege:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameOLFirstBean;->update_times:Ljava/lang/String;

    return-object v0
.end method

.method public setGame_open_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameOLFirstBean;->game_open_time:Ljava/lang/String;

    return-void
.end method

.method public setPapa_privilege(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameOLFirstBean;->papa_privilege:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_times(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameOLFirstBean;->update_times:Ljava/lang/String;

    return-void
.end method
