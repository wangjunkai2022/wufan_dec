.class public Lcom/join/mgps/db/tables/CategoryRecordTable;
.super Ljava/lang/Object;
.source "CategoryRecordTable.java"


# instance fields
.field private game_num:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ico_remote:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private show_index:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/db/tables/CategoryRecordTable;->id:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/db/tables/CategoryRecordTable;->title:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/db/tables/CategoryRecordTable;->ico_remote:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/db/tables/CategoryRecordTable;->show_index:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/db/tables/CategoryRecordTable;->game_num:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGame_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CategoryRecordTable;->game_num:Ljava/lang/String;

    return-object v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CategoryRecordTable;->ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CategoryRecordTable;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getShow_index()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CategoryRecordTable;->show_index:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CategoryRecordTable;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setGame_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CategoryRecordTable;->game_num:Ljava/lang/String;

    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CategoryRecordTable;->ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CategoryRecordTable;->id:Ljava/lang/String;

    return-void
.end method

.method public setShow_index(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CategoryRecordTable;->show_index:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CategoryRecordTable;->title:Ljava/lang/String;

    return-void
.end method
