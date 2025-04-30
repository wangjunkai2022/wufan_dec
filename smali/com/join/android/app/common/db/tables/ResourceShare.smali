.class public Lcom/join/android/app/common/db/tables/ResourceShare;
.super Ljava/lang/Object;
.source "ResourceShare.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "resource_share"
.end annotation


# instance fields
.field private fileSize:J
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

.field private rsId:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private url:Ljava/lang/String;
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
.method public getFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/android/app/common/db/tables/ResourceShare;->fileSize:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/db/tables/ResourceShare;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/ResourceShare;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRsId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/android/app/common/db/tables/ResourceShare;->rsId:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/db/tables/ResourceShare;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/ResourceShare;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFileSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/android/app/common/db/tables/ResourceShare;->fileSize:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/db/tables/ResourceShare;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/ResourceShare;->name:Ljava/lang/String;

    return-void
.end method

.method public setRsId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/android/app/common/db/tables/ResourceShare;->rsId:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/db/tables/ResourceShare;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/ResourceShare;->url:Ljava/lang/String;

    return-void
.end method
