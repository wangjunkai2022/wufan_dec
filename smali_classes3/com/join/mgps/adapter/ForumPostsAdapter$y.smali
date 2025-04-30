.class Lcom/join/mgps/adapter/ForumPostsAdapter$y;
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

.field final synthetic b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;

.field final synthetic e:I

.field final synthetic f:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;ILcom/join/mgps/dto/ForumBean$ForumCommentBean;ILcom/join/mgps/adapter/ForumPostsAdapter$u0$d;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->f:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->a:I

    iput-object p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    iput p4, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->c:I

    iput-object p5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->d:Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;

    iput p6, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->a:I

    if-ge v0, v3, :cond_3

    .line 2
    new-instance v6, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-direct {v6, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;-><init>(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    .line 3
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v3

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v10, v0, 0x3

    .line 5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v11, 0x1

    if-ge v10, v5, :cond_0

    .line 6
    invoke-interface {v3, v0, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v3, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x1

    .line 8
    :goto_1
    invoke-virtual {v6, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setReply_list(Ljava/util/List;)V

    .line 9
    iget-object v4, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->f:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iget v5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->c:I

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->d:Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;

    iget v7, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->c:I

    if-nez v1, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    iget-boolean v9, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->e:Z

    invoke-virtual/range {v4 .. v9}, Lcom/join/mgps/adapter/ForumPostsAdapter;->q(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZZ)Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;

    .line 11
    iput v1, v3, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->f:I

    .line 12
    iput-boolean v2, v3, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->g:Z

    if-nez v1, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    .line 13
    :goto_3
    iput-boolean v4, v3, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->d:Z

    .line 14
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->f:Lcom/join/mgps/adapter/ForumPostsAdapter;

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/join/mgps/adapter/ForumPostsAdapter;->e0(Lcom/join/mgps/adapter/ForumPostsAdapter$u0;Z)V

    .line 15
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->f:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->e(Lcom/join/mgps/adapter/ForumPostsAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->e:I

    add-int/2addr v4, v1

    add-int/2addr v4, v11

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move v0, v10

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->f:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->e(Lcom/join/mgps/adapter/ForumPostsAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->e:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$y;->f:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->notifyDataSetChanged()V

    return-void
.end method
