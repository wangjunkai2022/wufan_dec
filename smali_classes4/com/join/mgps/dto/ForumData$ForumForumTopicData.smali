.class public Lcom/join/mgps/dto/ForumData$ForumForumTopicData;
.super Ljava/lang/Object;
.source "ForumData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumForumTopicData"
.end annotation


# instance fields
.field private posts_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;"
        }
    .end annotation
.end field

.field private topic:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosts_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumForumTopicData;->posts_list:Ljava/util/List;

    return-object v0
.end method

.method public getTopic()Lcom/join/mgps/dto/ForumBean$ForumTopicBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumForumTopicData;->topic:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    return-object v0
.end method

.method public setPosts_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumForumTopicData;->posts_list:Ljava/util/List;

    return-void
.end method

.method public setTopic(Lcom/join/mgps/dto/ForumBean$ForumTopicBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumForumTopicData;->topic:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    return-void
.end method
