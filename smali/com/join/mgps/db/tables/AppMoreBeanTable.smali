.class public Lcom/join/mgps/db/tables/AppMoreBeanTable;
.super Ljava/lang/Object;
.source "AppMoreBeanTable.java"


# instance fields
.field private crc_link_type_val:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private is_more:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
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

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->id:I

    .line 11
    iput p2, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->link_type:I

    .line 12
    iput-object p3, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->link_type_val:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->tpl_type:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->crc_link_type_val:Ljava/lang/String;

    .line 15
    iput p6, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->jump_type:I

    .line 16
    iput p7, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->is_more:I

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/AppMoreBean;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppMoreBean;->getLink_type()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->link_type:I

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppMoreBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->link_type_val:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppMoreBean;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->tpl_type:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppMoreBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->crc_link_type_val:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppMoreBean;->getJump_type()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->jump_type:I

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppMoreBean;->getIs_more()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->is_more:I

    return-void
.end method


# virtual methods
.method public getAppMoreBean()Lcom/join/mgps/dto/AppMoreBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/AppMoreBean;

    iget v1, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->link_type:I

    iget-object v2, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->link_type_val:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->tpl_type:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->crc_link_type_val:Ljava/lang/String;

    iget v5, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->jump_type:I

    iget v6, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->is_more:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/AppMoreBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v7
.end method

.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->id:I

    return v0
.end method

.method public getIs_more()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->is_more:I

    return v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->jump_type:I

    return v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->link_type:I

    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getRecomDatabeanTable()Lcom/join/mgps/db/tables/RecomDatabeanTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->recomDatabeanTable:Lcom/join/mgps/db/tables/RecomDatabeanTable;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->id:I

    return-void
.end method

.method public setIs_more(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->is_more:I

    return-void
.end method

.method public setJump_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->jump_type:I

    return-void
.end method

.method public setLink_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->link_type:I

    return-void
.end method

.method public setLink_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setRecomDatabeanTable(Lcom/join/mgps/db/tables/RecomDatabeanTable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->recomDatabeanTable:Lcom/join/mgps/db/tables/RecomDatabeanTable;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppMoreBeanTable;->tpl_type:Ljava/lang/String;

    return-void
.end method
