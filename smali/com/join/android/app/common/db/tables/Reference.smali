.class public Lcom/join/android/app/common/db/tables/Reference;
.super Ljava/lang/Object;
.source "Reference.java"


# instance fields
.field private fileSize:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private localCourse:Lcom/join/android/app/common/db/tables/LocalCourse;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "localcourse_id"
        foreign = true
        foreignAutoCreate = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field private referenceId:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
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
    iget-wide v0, p0, Lcom/join/android/app/common/db/tables/Reference;->fileSize:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/db/tables/Reference;->id:I

    return v0
.end method

.method public getLocalCourse()Lcom/join/android/app/common/db/tables/LocalCourse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Reference;->localCourse:Lcom/join/android/app/common/db/tables/LocalCourse;

    return-object v0
.end method

.method public getReferenceId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/android/app/common/db/tables/Reference;->referenceId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Reference;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/db/tables/Reference;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Reference;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFileSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/android/app/common/db/tables/Reference;->fileSize:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/db/tables/Reference;->id:I

    return-void
.end method

.method public setLocalCourse(Lcom/join/android/app/common/db/tables/LocalCourse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Reference;->localCourse:Lcom/join/android/app/common/db/tables/LocalCourse;

    return-void
.end method

.method public setReferenceId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/android/app/common/db/tables/Reference;->referenceId:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Reference;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/db/tables/Reference;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Reference;->url:Ljava/lang/String;

    return-void
.end method
