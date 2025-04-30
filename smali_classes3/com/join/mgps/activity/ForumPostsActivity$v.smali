.class Lcom/join/mgps/activity/ForumPostsActivity$v;
.super Ljava/lang/Object;
.source "ForumPostsActivity.java"

# interfaces
.implements Lnet/bither/util/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumPostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$v;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$v;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget v1, v0, Lcom/join/mgps/activity/ForumPostsActivity;->Y0:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    .line 2
    iput v1, v0, Lcom/join/mgps/activity/ForumPostsActivity;->Y0:I

    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ForumPostsActivity;->P0(Lcom/join/mgps/activity/ForumPostsActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity$v;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/ForumPostsActivity;->Q0(Lcom/join/mgps/activity/ForumPostsActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity$v;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/Util/i0;->b0(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->setImages(Ljava/util/List;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$v;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->s3(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$v;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity$v;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity$v;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity$v;->b(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity$v;->b(Ljava/util/List;)V

    :goto_1
    return-void
.end method
