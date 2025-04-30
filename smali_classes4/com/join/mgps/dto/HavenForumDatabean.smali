.class public Lcom/join/mgps/dto/HavenForumDatabean;
.super Ljava/lang/Object;
.source "HavenForumDatabean.java"


# instance fields
.field posts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HavenForumListbean;",
            ">;"
        }
    .end annotation
.end field

.field tag:Lcom/join/mgps/dto/HavenForumTagbean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HavenForumListbean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HavenForumDatabean;->posts:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Lcom/join/mgps/dto/HavenForumTagbean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HavenForumDatabean;->tag:Lcom/join/mgps/dto/HavenForumTagbean;

    return-object v0
.end method

.method public setPosts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HavenForumListbean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HavenForumDatabean;->posts:Ljava/util/List;

    return-void
.end method

.method public setTag(Lcom/join/mgps/dto/HavenForumTagbean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HavenForumDatabean;->tag:Lcom/join/mgps/dto/HavenForumTagbean;

    return-void
.end method
