.class public Lcom/join/mgps/dto/ForumData$ForumPostsData;
.super Ljava/lang/Object;
.source "ForumData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumPostsData"
.end annotation


# instance fields
.field private comment_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private forum_gag_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
            ">;"
        }
    .end annotation
.end field

.field private game_info:Lcom/join/mgps/dto/ForumBean$GameInfo;

.field private posts:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumCommentBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsData;->comment_list:Ljava/util/List;

    return-object v0
.end method

.method public getForum_gag_type()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsData;->forum_gag_type:Ljava/util/List;

    return-object v0
.end method

.method public getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsData;->game_info:Lcom/join/mgps/dto/ForumBean$GameInfo;

    return-object v0
.end method

.method public getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsData;->posts:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    return-object v0
.end method

.method public setComment_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsData;->comment_list:Ljava/util/List;

    return-void
.end method

.method public setForum_gag_type(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsData;->forum_gag_type:Ljava/util/List;

    return-void
.end method

.method public setGame_info(Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsData;->game_info:Lcom/join/mgps/dto/ForumBean$GameInfo;

    return-void
.end method

.method public setPosts(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsData;->posts:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    return-void
.end method
