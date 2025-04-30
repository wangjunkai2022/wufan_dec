.class public Lcom/join/mgps/db/tables/InformatonPointTable;
.super Ljava/lang/Object;
.source "InformatonPointTable.java"


# instance fields
.field private action:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private addTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private contentId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private duration:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private itemId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sceneId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private state:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
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


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getAddTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->addTime:J

    return-wide v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->duration:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->id:I

    return v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->state:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->action:Ljava/lang/String;

    return-void
.end method

.method public setAddTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->addTime:J

    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->contentId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->duration:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->id:I

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->sceneId:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->state:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/InformatonPointTable;->userId:Ljava/lang/String;

    return-void
.end method
