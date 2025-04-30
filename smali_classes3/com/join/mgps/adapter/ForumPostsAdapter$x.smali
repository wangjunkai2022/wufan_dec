.class Lcom/join/mgps/adapter/ForumPostsAdapter$x;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->a0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;

.field final synthetic e:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;IIILcom/join/mgps/adapter/ForumPostsAdapter$u0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->e:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->a:I

    iput p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->b:I

    iput p4, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->c:I

    iput-object p5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->d:Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->a:I

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;-><init>()V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->a:I

    :goto_0
    if-ltz v0, :cond_3

    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->e:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->e(Lcom/join/mgps/adapter/ForumPostsAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->b:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;->b()Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    move-result-object v4

    sget-object v5, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->COMMENT_MESSAGE_REPLY:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    if-ne v4, v5, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;

    :cond_1
    if-eqz v3, :cond_2

    .line 8
    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->c:I

    iget v4, v3, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->a:I

    if-ne v1, v4, :cond_2

    .line 9
    iget-object v1, v3, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 10
    :goto_1
    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->a:I

    if-gt v0, v1, :cond_4

    .line 11
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->e:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->e(Lcom/join/mgps/adapter/ForumPostsAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->b:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setReply_list(Ljava/util/List;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->e:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->c:I

    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->d:Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;

    iget v3, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->c:I

    const/4 v4, 0x1

    iget-boolean v5, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->e:Z

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/adapter/ForumPostsAdapter;->q(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZZ)Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->e:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->e(Lcom/join/mgps/adapter/ForumPostsAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->b:I

    iget v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->a:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->e:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->notifyDataSetChanged()V

    return-void
.end method
