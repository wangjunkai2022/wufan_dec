.class public Lcom/join/mgps/db/tables/ModleBeanTable;
.super Ljava/lang/Object;
.source "ModleBeanTable.java"


# instance fields
.field private ico_remote:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private label:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private online:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pic_remote:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private recomDatabeanTable:Lcom/join/mgps/db/tables/RecomDatabeanTable;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "recom"
        foreign = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field private sub_title:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private title_type:Ljava/lang/String;
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

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->id:I

    .line 12
    iput-object p2, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->title:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->title_type:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->label:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->pic_remote:Ljava/lang/String;

    .line 16
    iput-object p6, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->ico_remote:Ljava/lang/String;

    .line 17
    iput-object p7, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->sub_title:Ljava/lang/String;

    .line 18
    iput-object p7, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->sub_title:Ljava/lang/String;

    .line 19
    iput p8, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->online:I

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/ModleBean;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->title:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModleBean;->getIco_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->ico_remote:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModleBean;->getTitle_type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->title_type:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModleBean;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->label:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->pic_remote:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModleBean;->getSub_title()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->sub_title:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModleBean;->getOnline()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->online:I

    return-void
.end method


# virtual methods
.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->id:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getModleBean()Lcom/join/mgps/dto/ModleBean;
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/dto/ModleBean;

    iget-object v1, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->label:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->pic_remote:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->ico_remote:Ljava/lang/String;

    iget-object v5, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->title_type:Ljava/lang/String;

    iget-object v7, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->sub_title:Ljava/lang/String;

    iget v8, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->online:I

    const-string v6, ""

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/dto/ModleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v9
.end method

.method public getOnline()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->online:I

    return v0
.end method

.method public getPic_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->pic_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getRecomDatabeanTable()Lcom/join/mgps/db/tables/RecomDatabeanTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->recomDatabeanTable:Lcom/join/mgps/db/tables/RecomDatabeanTable;

    return-object v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->title_type:Ljava/lang/String;

    return-object v0
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->id:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->label:Ljava/lang/String;

    return-void
.end method

.method public setOnline(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->online:I

    return-void
.end method

.method public setPic_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->pic_remote:Ljava/lang/String;

    return-void
.end method

.method public setRecomDatabeanTable(Lcom/join/mgps/db/tables/RecomDatabeanTable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->recomDatabeanTable:Lcom/join/mgps/db/tables/RecomDatabeanTable;

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitle_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ModleBeanTable;->title_type:Ljava/lang/String;

    return-void
.end method
