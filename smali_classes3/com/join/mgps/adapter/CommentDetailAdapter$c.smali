.class Lcom/join/mgps/adapter/CommentDetailAdapter$c;
.super Ljava/lang/Object;
.source "CommentDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentDetailAdapter;->n(Landroid/view/View;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/adapter/CommentDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentDetailAdapter;ILcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->d:Lcom/join/mgps/adapter/CommentDetailAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->a:I

    iput-object p3, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;

    iput p4, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->a:I

    :goto_0
    if-ltz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->d:Lcom/join/mgps/adapter/CommentDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentDetailAdapter;->b(Lcom/join/mgps/adapter/CommentDetailAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/CommentDetailAdapter$j;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/CommentDetailAdapter$j;->b()Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->d:Lcom/join/mgps/adapter/CommentDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentDetailAdapter;->b(Lcom/join/mgps/adapter/CommentDetailAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentDetailAdapter$j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;

    .line 4
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->d:Lcom/join/mgps/adapter/CommentDetailAdapter;

    iget-object v0, v0, Lcom/join/mgps/adapter/CommentDetailAdapter;->c:Lcom/join/mgps/adapter/CommentDetailAdapter$h;

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;

    iget v2, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->c:I

    invoke-interface {v0, v1, v2, p1}, Lcom/join/mgps/adapter/CommentDetailAdapter$h;->m(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;ILjava/lang/String;)V

    :cond_2
    return-void
.end method
