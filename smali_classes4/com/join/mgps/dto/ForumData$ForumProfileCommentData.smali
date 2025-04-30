.class public Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;
.super Ljava/lang/Object;
.source "ForumData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumProfileCommentData"
.end annotation


# instance fields
.field private last_update_time:J

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private posts:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLast_update_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;->last_update_time:J

    return-wide v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;->posts:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    return-object v0
.end method

.method public setLast_update_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;->last_update_time:J

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;->list:Ljava/util/List;

    return-void
.end method

.method public setPosts(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;->posts:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    return-void
.end method
