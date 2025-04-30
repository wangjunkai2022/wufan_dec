.class public Lcom/join/android/app/common/db/tables/LocalCourse;
.super Ljava/lang/Object;
.source "LocalCourse.java"


# instance fields
.field private branch:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private chapterNum:I

.field chapters:Lcom/j256/ormlite/dao/ForeignCollection;
    .annotation runtime Lcom/j256/ormlite/field/ForeignCollectionField;
        eager = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/android/app/common/db/tables/Chapter;",
            ">;"
        }
    .end annotation
.end field

.field private courseHour:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private courseId:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private createTime:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private learningTimes:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private refNum:I

.field references:Lcom/j256/ormlite/dao/ForeignCollection;
    .annotation runtime Lcom/j256/ormlite/field/ForeignCollectionField;
        eager = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/android/app/common/db/tables/Reference;",
            ">;"
        }
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

.field private validUntil:J
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
.method public getBranch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->branch:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->chapterNum:I

    return v0
.end method

.method public getChapters()Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/android/app/common/db/tables/Chapter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->chapters:Lcom/j256/ormlite/dao/ForeignCollection;

    return-object v0
.end method

.method public getCourseHour()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->courseHour:J

    return-wide v0
.end method

.method public getCourseId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->courseId:J

    return-wide v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->id:I

    return v0
.end method

.method public getLearningTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->learningTimes:I

    return v0
.end method

.method public getRefNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->refNum:I

    return v0
.end method

.method public getReferences()Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/android/app/common/db/tables/Reference;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->references:Lcom/j256/ormlite/dao/ForeignCollection;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getValidUntil()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->validUntil:J

    return-wide v0
.end method

.method public setBranch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->branch:Ljava/lang/String;

    return-void
.end method

.method public setChapterNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->chapterNum:I

    return-void
.end method

.method public setChapters(Lcom/j256/ormlite/dao/ForeignCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/android/app/common/db/tables/Chapter;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->chapters:Lcom/j256/ormlite/dao/ForeignCollection;

    return-void
.end method

.method public setCourseHour(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->courseHour:J

    return-void
.end method

.method public setCourseId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->courseId:J

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->id:I

    return-void
.end method

.method public setLearningTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->learningTimes:I

    return-void
.end method

.method public setRefNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->refNum:I

    return-void
.end method

.method public setReferences(Lcom/j256/ormlite/dao/ForeignCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/android/app/common/db/tables/Reference;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->references:Lcom/j256/ormlite/dao/ForeignCollection;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->url:Ljava/lang/String;

    return-void
.end method

.method public setValidUntil(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/android/app/common/db/tables/LocalCourse;->validUntil:J

    return-void
.end method
