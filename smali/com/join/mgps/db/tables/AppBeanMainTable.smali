.class public Lcom/join/mgps/db/tables/AppBeanMainTable;
.super Ljava/lang/Object;
.source "AppBeanMainTable.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "appbeanmaintable"
.end annotation


# instance fields
.field private butnShowTypr:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private crc_link_type_val:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private game_info:Lcom/join/mgps/db/tables/AppBeanTable;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "appbean"
        foreign = true
        foreignAutoCreate = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private jump_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private link_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private link_type_val:Ljava/lang/String;
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

.field private tpl_type:Ljava/lang/String;
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

.method public constructor <init>(Lcom/join/mgps/dto/AppBeanMain;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->link_type:I

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->link_type_val:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->crc_link_type_val:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getJump_type()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->jump_type:I

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->tpl_type:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getButnShowTypr()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->butnShowTypr:I

    return-void
.end method


# virtual methods
.method public getAppbeanMain()Lcom/join/mgps/dto/AppBeanMain;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/AppBeanMain;

    iget v1, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->link_type:I

    iget-object v2, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->link_type_val:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->crc_link_type_val:Ljava/lang/String;

    iget v4, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->jump_type:I

    iget-object v5, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->tpl_type:Ljava/lang/String;

    iget v6, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->butnShowTypr:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/AppBeanMain;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-object v7
.end method

.method public getButnShowTypr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->butnShowTypr:I

    return v0
.end method

.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info()Lcom/join/mgps/db/tables/AppBeanTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->game_info:Lcom/join/mgps/db/tables/AppBeanTable;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->id:I

    return v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->jump_type:I

    return v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->link_type:I

    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getRecomDatabeanTable()Lcom/join/mgps/db/tables/RecomDatabeanTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->recomDatabeanTable:Lcom/join/mgps/db/tables/RecomDatabeanTable;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setButnShowTypr(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->butnShowTypr:I

    return-void
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setGame_info(Lcom/join/mgps/db/tables/AppBeanTable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->game_info:Lcom/join/mgps/db/tables/AppBeanTable;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->id:I

    return-void
.end method

.method public setJump_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->jump_type:I

    return-void
.end method

.method public setLink_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->link_type:I

    return-void
.end method

.method public setLink_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setRecomDatabeanTable(Lcom/join/mgps/db/tables/RecomDatabeanTable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->recomDatabeanTable:Lcom/join/mgps/db/tables/RecomDatabeanTable;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanMainTable;->tpl_type:Ljava/lang/String;

    return-void
.end method
