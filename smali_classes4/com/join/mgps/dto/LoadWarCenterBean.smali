.class public Lcom/join/mgps/dto/LoadWarCenterBean;
.super Ljava/lang/Object;
.source "LoadWarCenterBean.java"


# instance fields
.field private downloadTasksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private fightMainTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/FightMainTable;",
            ">;"
        }
    .end annotation
.end field

.field private hotGameInfoDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private pkGameInfoDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private pkLocalInfoDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private pkMatchingInfoDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private pkPassInfoDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private pkRoomInfoDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private waradInfoDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->downloadTasksMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->fightMainTables:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->waradInfoDataBeans:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->hotGameInfoDataBeans:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkGameInfoDataBeans:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkPassInfoDataBeans:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkMatchingInfoDataBeans:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkLocalInfoDataBeans:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkRoomInfoDataBeans:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/FightMainTable;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->downloadTasksMap:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->fightMainTables:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->waradInfoDataBeans:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->hotGameInfoDataBeans:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkGameInfoDataBeans:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkPassInfoDataBeans:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkMatchingInfoDataBeans:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkLocalInfoDataBeans:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkRoomInfoDataBeans:Ljava/util/List;

    .line 21
    iput-object p1, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->downloadTasksMap:Ljava/util/Map;

    .line 22
    iput-object p2, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->fightMainTables:Ljava/util/List;

    .line 23
    iput-object p3, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->waradInfoDataBeans:Ljava/util/List;

    .line 24
    iput-object p4, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->hotGameInfoDataBeans:Ljava/util/List;

    .line 25
    iput-object p5, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkGameInfoDataBeans:Ljava/util/List;

    .line 26
    iput-object p6, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkPassInfoDataBeans:Ljava/util/List;

    .line 27
    iput-object p7, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkMatchingInfoDataBeans:Ljava/util/List;

    .line 28
    iput-object p8, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkLocalInfoDataBeans:Ljava/util/List;

    .line 29
    iput-object p9, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkRoomInfoDataBeans:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDownloadTasksMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->downloadTasksMap:Ljava/util/Map;

    return-object v0
.end method

.method public getFightMainTables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/FightMainTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->fightMainTables:Ljava/util/List;

    return-object v0
.end method

.method public getHotGameInfoDataBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->hotGameInfoDataBeans:Ljava/util/List;

    return-object v0
.end method

.method public getPkGameInfoDataBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkGameInfoDataBeans:Ljava/util/List;

    return-object v0
.end method

.method public getPkLocalInfoDataBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkLocalInfoDataBeans:Ljava/util/List;

    return-object v0
.end method

.method public getPkMatchingInfoDataBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkMatchingInfoDataBeans:Ljava/util/List;

    return-object v0
.end method

.method public getPkPassInfoDataBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkPassInfoDataBeans:Ljava/util/List;

    return-object v0
.end method

.method public getPkRoomInfoDataBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkRoomInfoDataBeans:Ljava/util/List;

    return-object v0
.end method

.method public getWaradInfoDataBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->waradInfoDataBeans:Ljava/util/List;

    return-object v0
.end method

.method public setDownloadTasksMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->downloadTasksMap:Ljava/util/Map;

    return-void
.end method

.method public setFightMainTables(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/FightMainTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->fightMainTables:Ljava/util/List;

    return-void
.end method

.method public setHotGameInfoDataBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->hotGameInfoDataBeans:Ljava/util/List;

    return-void
.end method

.method public setPkGameInfoDataBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkGameInfoDataBeans:Ljava/util/List;

    return-void
.end method

.method public setPkLocalInfoDataBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkLocalInfoDataBeans:Ljava/util/List;

    return-void
.end method

.method public setPkMatchingInfoDataBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkMatchingInfoDataBeans:Ljava/util/List;

    return-void
.end method

.method public setPkPassInfoDataBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkPassInfoDataBeans:Ljava/util/List;

    return-void
.end method

.method public setPkRoomInfoDataBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->pkRoomInfoDataBeans:Ljava/util/List;

    return-void
.end method

.method public setWaradInfoDataBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LoadWarCenterBean;->waradInfoDataBeans:Ljava/util/List;

    return-void
.end method
