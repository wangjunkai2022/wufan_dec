.class public Lcom/join/mgps/db/tables/PAPARecentlyTable;
.super Ljava/lang/Object;
.source "PAPARecentlyTable.java"


# instance fields
.field private crc_sign_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private game_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private screenshot_pic:Ljava/lang/String;
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

.method public constructor <init>(Lcom/join/mgps/dto/PAPARecentlyBean;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPARecentlyBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->title:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPARecentlyBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->crc_sign_id:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPARecentlyBean;->getGame_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->game_name:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPARecentlyBean;->getScreenshot_pic()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->screenshot_pic:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->title:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->crc_sign_id:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->game_name:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->screenshot_pic:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->crc_sign_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->id:I

    return v0
.end method

.method public getPAPARecentlyBean()Lcom/join/mgps/dto/PAPARecentlyBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dto/PAPARecentlyBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/PAPARecentlyBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->crc_sign_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PAPARecentlyBean;->setCrc_sign_id(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PAPARecentlyBean;->setTitle(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->game_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PAPARecentlyBean;->setGame_name(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->screenshot_pic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PAPARecentlyBean;->setScreenshot_pic(Ljava/lang/String;)V

    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->screenshot_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCrc_sign_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->crc_sign_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->id:I

    return-void
.end method

.method public setScreenshot_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->screenshot_pic:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/PAPARecentlyTable;->title:Ljava/lang/String;

    return-void
.end method
