.class public Lcom/join/mgps/dto/GameWorldTrophy;
.super Ljava/lang/Object;
.source "GameWorldTrophy.java"


# instance fields
.field private trophy_key:Ljava/lang/String;

.field private trophy_name:Ljava/lang/String;

.field private users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldTrophyUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrophy_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldTrophy;->trophy_key:Ljava/lang/String;

    return-object v0
.end method

.method public getTrophy_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldTrophy;->trophy_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldTrophyUser;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldTrophy;->users:Ljava/util/List;

    return-object v0
.end method

.method public setTrophy_key(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldTrophy;->trophy_key:Ljava/lang/String;

    return-void
.end method

.method public setTrophy_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldTrophy;->trophy_name:Ljava/lang/String;

    return-void
.end method

.method public setUsers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldTrophyUser;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldTrophy;->users:Ljava/util/List;

    return-void
.end method
