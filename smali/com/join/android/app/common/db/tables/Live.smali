.class public Lcom/join/android/app/common/db/tables/Live;
.super Ljava/lang/Object;
.source "Live.java"


# instance fields
.field private author:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private createTime:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private liveId:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field private title:Ljava/lang/String;
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
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Live;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Live;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/db/tables/Live;->id:I

    return v0
.end method

.method public getLiveId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/android/app/common/db/tables/Live;->liveId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Live;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Live;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Live;->author:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Live;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/db/tables/Live;->id:I

    return-void
.end method

.method public setLiveId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/android/app/common/db/tables/Live;->liveId:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Live;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Live;->url:Ljava/lang/String;

    return-void
.end method
