.class public Lcom/join/mgps/db/tables/BannerAndTablesTable;
.super Ljava/lang/Object;
.source "BannerAndTablesTable.java"


# instance fields
.field private crc_link_type_val:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private game_info_tpl_type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
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

.field private pic_remote:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
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

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->id:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->title:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->pic_remote:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->link_type:I

    .line 7
    iput p5, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->jump_type:I

    .line 8
    iput-object p6, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->link_type_val:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->tpl_type:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->crc_link_type_val:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->game_info_tpl_type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/BannerBean;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->title:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->pic_remote:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getLink_type()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->link_type:I

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getJump_type()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->jump_type:I

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->link_type_val:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->tpl_type:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->crc_link_type_val:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->game_info_tpl_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBannerBean()Lcom/join/mgps/dto/BannerBean;
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/dto/BannerBean;

    iget-object v1, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->pic_remote:Ljava/lang/String;

    iget v3, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->link_type:I

    iget v4, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->jump_type:I

    iget-object v5, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->link_type_val:Ljava/lang/String;

    iget-object v6, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->tpl_type:Ljava/lang/String;

    iget-object v7, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->crc_link_type_val:Ljava/lang/String;

    iget-object v8, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->game_info_tpl_type:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/dto/BannerBean;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->id:I

    return v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->jump_type:I

    return v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->link_type:I

    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->pic_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->id:I

    return-void
.end method

.method public setJump_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->jump_type:I

    return-void
.end method

.method public setLink_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->link_type:I

    return-void
.end method

.method public setLink_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setPic_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->pic_remote:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->title:Ljava/lang/String;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/BannerAndTablesTable;->tpl_type:Ljava/lang/String;

    return-void
.end method
