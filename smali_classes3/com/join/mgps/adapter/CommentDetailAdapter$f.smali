.class Lcom/join/mgps/adapter/CommentDetailAdapter$f;
.super Ljava/lang/Object;
.source "CommentDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentDetailAdapter;->i(Landroid/view/View;Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;

.field final synthetic e:I

.field final synthetic f:Lcom/join/mgps/adapter/CommentDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentDetailAdapter;ILcom/join/mgps/dto/CommentDetailBean$MainCommentBean;Ljava/lang/String;Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->f:Lcom/join/mgps/adapter/CommentDetailAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->a:I

    iput-object p3, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    iput-object p4, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->d:Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;

    iput p6, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget v3, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->a:I

    if-ge v0, v3, :cond_3

    .line 2
    new-instance v3, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    iget-object v4, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-direct {v3, v4}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;-><init>(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    .line 3
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSub_comment()Ljava/util/List;

    move-result-object v4

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v6, v0, 0x3

    .line 5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_0

    .line 6
    invoke-interface {v4, v0, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v4, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x1

    .line 8
    :goto_1
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setSub_comment(Ljava/util/List;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->f:Lcom/join/mgps/adapter/CommentDetailAdapter;

    iget-object v4, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->d:Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;

    iget v5, v5, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->c:I

    if-nez v1, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v0, v4, v3, v5, v7}, Lcom/join/mgps/adapter/CommentDetailAdapter;->d(Ljava/lang/String;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;IZ)Lcom/join/mgps/adapter/CommentDetailAdapter$j;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/adapter/CommentDetailAdapter$j;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;

    .line 11
    iput v1, v3, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->e:I

    .line 12
    iput-boolean v2, v3, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->f:Z

    if-nez v1, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    .line 13
    :goto_3
    iput-boolean v4, v3, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->d:Z

    .line 14
    iget-object v3, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->f:Lcom/join/mgps/adapter/CommentDetailAdapter;

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/join/mgps/adapter/CommentDetailAdapter;->k(Lcom/join/mgps/adapter/CommentDetailAdapter$j;Z)V

    .line 15
    iget-object v3, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->f:Lcom/join/mgps/adapter/CommentDetailAdapter;

    invoke-static {v3}, Lcom/join/mgps/adapter/CommentDetailAdapter;->b(Lcom/join/mgps/adapter/CommentDetailAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->e:I

    add-int/2addr v4, v1

    add-int/2addr v4, v8

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move v0, v6

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->f:Lcom/join/mgps/adapter/CommentDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->b(Lcom/join/mgps/adapter/CommentDetailAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->e:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;->f:Lcom/join/mgps/adapter/CommentDetailAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->notifyDataSetChanged()V

    return-void
.end method
