.class public Lcom/join/mgps/db/tables/DownloadUrlTable;
.super Ljava/lang/Object;
.source "DownloadUrlTable.java"


# instance fields
.field private appBeanTable:Lcom/join/mgps/db/tables/AppBeanTable;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "appbean"
        foreign = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field private down_source_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private down_source_url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private is_confirm:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private warMatchAndLocalTable:Lcom/join/mgps/db/tables/WarMatchAndLocalTable;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "warMatchAndLocalTable"
        foreign = true
        foreignAutoRefresh = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/DownloadUrlBean;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadUrlBean;->getDown_source_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->down_source_name:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadUrlBean;->getDown_source_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->down_source_url:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadUrlBean;->getDown_url_type()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->type:I

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadUrlBean;->getIs_confirm()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->is_confirm:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->down_source_name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->down_source_url:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->type:I

    .line 6
    iput p4, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->is_confirm:I

    return-void
.end method


# virtual methods
.method public getAppBeanTable()Lcom/join/mgps/db/tables/AppBeanTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->appBeanTable:Lcom/join/mgps/db/tables/AppBeanTable;

    return-object v0
.end method

.method public getDownUrlBean()Lcom/join/mgps/dto/DownloadUrlBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dto/DownloadUrlBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/DownloadUrlBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->down_source_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadUrlBean;->setDown_source_name(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->down_source_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadUrlBean;->setDown_source_url(Ljava/lang/String;)V

    .line 4
    iget v1, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->type:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadUrlBean;->setDown_url_type(I)V

    .line 5
    iget v1, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->is_confirm:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadUrlBean;->setIs_confirm(I)V

    return-object v0
.end method

.method public getDown_source_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->down_source_name:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_source_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->down_source_url:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->id:I

    return v0
.end method

.method public getIs_confirm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->is_confirm:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->type:I

    return v0
.end method

.method public getWarMatchAndLocalTable()Lcom/join/mgps/db/tables/WarMatchAndLocalTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->warMatchAndLocalTable:Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    return-object v0
.end method

.method public setAppBeanTable(Lcom/join/mgps/db/tables/AppBeanTable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->appBeanTable:Lcom/join/mgps/db/tables/AppBeanTable;

    return-void
.end method

.method public setDown_source_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->down_source_name:Ljava/lang/String;

    return-void
.end method

.method public setDown_source_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->down_source_url:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->id:I

    return-void
.end method

.method public setIs_confirm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->is_confirm:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->type:I

    return-void
.end method

.method public setWarMatchAndLocalTable(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadUrlTable;->warMatchAndLocalTable:Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    return-void
.end method
