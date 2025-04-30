.class public Lcom/join/android/app/common/db/tables/Chapter;
.super Ljava/lang/Object;
.source "Chapter.java"


# instance fields
.field private bookmark:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private chapterDuration:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private chapterId:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/android/app/common/db/tables/Chapter;",
            ">;"
        }
    .end annotation
.end field

.field private downloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private filesize:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private learnedTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private leftDays:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
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

.field private parent:Lcom/join/android/app/common/db/tables/Chapter;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "parent_id"
        foreign = true
        foreignAutoCreate = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field private playUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private playing:Z

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
.method public getBookmark()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Chapter;->bookmark:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/android/app/common/db/tables/Chapter;->chapterDuration:J

    return-wide v0
.end method

.method public getChapterId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/android/app/common/db/tables/Chapter;->chapterId:J

    return-wide v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/android/app/common/db/tables/Chapter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Chapter;->children:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Chapter;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFilesize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/android/app/common/db/tables/Chapter;->filesize:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/db/tables/Chapter;->id:I

    return v0
.end method

.method public getLearnedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/android/app/common/db/tables/Chapter;->learnedTime:J

    return-wide v0
.end method

.method public getLeftDays()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Chapter;->leftDays:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalCourse()Lcom/join/android/app/common/db/tables/LocalCourse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Chapter;->localCourse:Lcom/join/android/app/common/db/tables/LocalCourse;

    return-object v0
.end method

.method public getParent()Lcom/join/android/app/common/db/tables/Chapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Chapter;->parent:Lcom/join/android/app/common/db/tables/Chapter;

    return-object v0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Chapter;->playUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Chapter;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getValidUntil()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/tables/Chapter;->validUntil:Ljava/lang/String;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/db/tables/Chapter;->playing:Z

    return v0
.end method

.method public setBookmark(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Chapter;->bookmark:Ljava/lang/String;

    return-void
.end method

.method public setChapterDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/android/app/common/db/tables/Chapter;->chapterDuration:J

    return-void
.end method

.method public setChapterId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/android/app/common/db/tables/Chapter;->chapterId:J

    return-void
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/android/app/common/db/tables/Chapter;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Chapter;->children:Ljava/util/List;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Chapter;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setFilesize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/android/app/common/db/tables/Chapter;->filesize:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/db/tables/Chapter;->id:I

    return-void
.end method

.method public setLearnedTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/android/app/common/db/tables/Chapter;->learnedTime:J

    return-void
.end method

.method public setLeftDays(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Chapter;->leftDays:Ljava/lang/String;

    return-void
.end method

.method public setLocalCourse(Lcom/join/android/app/common/db/tables/LocalCourse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Chapter;->localCourse:Lcom/join/android/app/common/db/tables/LocalCourse;

    return-void
.end method

.method public setParent(Lcom/join/android/app/common/db/tables/Chapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Chapter;->parent:Lcom/join/android/app/common/db/tables/Chapter;

    return-void
.end method

.method public setPlayUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Chapter;->playUrl:Ljava/lang/String;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/common/db/tables/Chapter;->playing:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Chapter;->title:Ljava/lang/String;

    return-void
.end method

.method public setValidUntil(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/db/tables/Chapter;->validUntil:Ljava/lang/String;

    return-void
.end method
