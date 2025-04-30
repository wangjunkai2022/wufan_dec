.class public Lcom/join/mgps/dto/ForumData$ForumGroupIndex;
.super Ljava/lang/Object;
.source "ForumData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumGroupIndex"
.end annotation


# instance fields
.field private fid:I

.field private forum_description:Ljava/lang/String;

.field private forum_icon:Ljava/lang/String;

.field private forum_name:Ljava/lang/String;

.field private forum_number:Ljava/lang/String;

.field private is_joined:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_joined"
    .end annotation
.end field

.field private last_joied:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private post_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;",
            ">;"
        }
    .end annotation
.end field

.field private top_posts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;",
            ">;"
        }
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
.method public getFid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->fid:I

    return v0
.end method

.method public getForum_description()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->forum_description:Ljava/lang/String;

    return-object v0
.end method

.method public getForum_icon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->forum_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getForum_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->forum_name:Ljava/lang/String;

    return-object v0
.end method

.method public getForum_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->forum_number:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_joined()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->is_joined:I

    return v0
.end method

.method public getLast_joied()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->last_joied:Ljava/util/List;

    return-object v0
.end method

.method public getPost_type()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->post_type:Ljava/util/List;

    return-object v0
.end method

.method public getTop_posts()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->top_posts:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->type:Ljava/util/List;

    return-object v0
.end method

.method public setFid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->fid:I

    return-void
.end method

.method public setForum_description(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->forum_description:Ljava/lang/String;

    return-void
.end method

.method public setForum_icon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->forum_icon:Ljava/lang/String;

    return-void
.end method

.method public setForum_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->forum_name:Ljava/lang/String;

    return-void
.end method

.method public setForum_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->forum_number:Ljava/lang/String;

    return-void
.end method

.method public setIs_joined(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->is_joined:I

    return-void
.end method

.method public setLast_joied(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->last_joied:Ljava/util/List;

    return-void
.end method

.method public setPost_type(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->post_type:Ljava/util/List;

    return-void
.end method

.method public setTop_posts(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->top_posts:Ljava/util/List;

    return-void
.end method

.method public setType(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->type:Ljava/util/List;

    return-void
.end method
