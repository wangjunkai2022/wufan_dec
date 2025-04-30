.class public Lcom/join/mgps/db/tables/TipBeanTable;
.super Ljava/lang/Object;
.source "TipBeanTable.java"


# instance fields
.field private appBeanTable:Lcom/join/mgps/db/tables/AppBeanTable;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "appbean"
        foreign = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field private color:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private tagId:Ljava/lang/String;
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

.method public constructor <init>(Lcom/join/mgps/dto/TipBean;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/TipBeanTable;->name:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/TipBean;->getColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/TipBeanTable;->color:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/db/tables/TipBeanTable;->tagId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppBeanTable()Lcom/join/mgps/db/tables/AppBeanTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/TipBeanTable;->appBeanTable:Lcom/join/mgps/db/tables/AppBeanTable;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/TipBeanTable;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/TipBeanTable;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/TipBeanTable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/TipBeanTable;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public getTipBean()Lcom/join/mgps/dto/TipBean;
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/TipBean;

    iget-object v1, p0, Lcom/join/mgps/db/tables/TipBeanTable;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/db/tables/TipBeanTable;->color:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/db/tables/TipBeanTable;->tagId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/dto/TipBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAppBeanTable(Lcom/join/mgps/db/tables/AppBeanTable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/TipBeanTable;->appBeanTable:Lcom/join/mgps/db/tables/AppBeanTable;

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/TipBeanTable;->color:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/TipBeanTable;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/TipBeanTable;->name:Ljava/lang/String;

    return-void
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/TipBeanTable;->tagId:Ljava/lang/String;

    return-void
.end method
