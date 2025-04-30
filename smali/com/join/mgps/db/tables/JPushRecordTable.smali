.class public Lcom/join/mgps/db/tables/JPushRecordTable;
.super Ljava/lang/Object;
.source "JPushRecordTable.java"


# instance fields
.field private content:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private crc_link_type_val:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private create_time:J
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

.field private push_time:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private retention_time:J
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


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->create_time:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->id:I

    return v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->jump_type:I

    return v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->link_type:I

    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getPush_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->push_time:J

    return-wide v0
.end method

.method public getRetention_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->retention_time:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->content:Ljava/lang/String;

    return-void
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setCreate_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->create_time:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->id:I

    return-void
.end method

.method public setJump_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->jump_type:I

    return-void
.end method

.method public setLink_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->link_type:I

    return-void
.end method

.method public setLink_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setPush_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->push_time:J

    return-void
.end method

.method public setRetention_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->retention_time:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->title:Ljava/lang/String;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/JPushRecordTable;->tpl_type:Ljava/lang/String;

    return-void
.end method
