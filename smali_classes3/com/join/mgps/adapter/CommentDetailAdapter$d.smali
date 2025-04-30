.class Lcom/join/mgps/adapter/CommentDetailAdapter$d;
.super Ljava/lang/Object;
.source "CommentDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentDetailAdapter;->p(Landroid/view/View;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;ILcom/join/mgps/customview/CopyTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/customview/CopyTextView;

.field final synthetic d:Lcom/join/mgps/adapter/CommentDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentDetailAdapter;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;ILcom/join/mgps/customview/CopyTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;->d:Lcom/join/mgps/adapter/CommentDetailAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    iput p3, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;->b:I

    iput-object p4, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;->c:Lcom/join/mgps/customview/CopyTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;->d:Lcom/join/mgps/adapter/CommentDetailAdapter;

    iget-object p1, p1, Lcom/join/mgps/adapter/CommentDetailAdapter;->c:Lcom/join/mgps/adapter/CommentDetailAdapter$h;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    iget v1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;->b:I

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$h;->r(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;->c:Lcom/join/mgps/customview/CopyTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method
