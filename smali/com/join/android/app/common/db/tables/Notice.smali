.class public Lcom/join/android/app/common/db/tables/Notice;
.super Ljava/lang/Object;
.source "Notice.java"


# instance fields
.field private content:Ljava/lang/String;
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

.field private noticeId:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private validUntil:Ljava/lang/String;
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
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Notice;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Notice;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/db/tables/Notice;->id:I

    return v0
.end method

.method public getNoticeId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/android/app/common/db/tables/Notice;->noticeId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Notice;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getValidUntil()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Notice;->validUntil:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Notice;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Notice;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/db/tables/Notice;->id:I

    return-void
.end method

.method public setNoticeId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/android/app/common/db/tables/Notice;->noticeId:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Notice;->title:Ljava/lang/String;

    return-void
.end method

.method public setValidUntil(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Notice;->validUntil:Ljava/lang/String;

    return-void
.end method
