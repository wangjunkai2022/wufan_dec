.class Lcom/join/mgps/adapter/CommentSelfListAdapter$f;
.super Ljava/lang/Object;
.source "CommentSelfListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentSelfListAdapter;->p(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/adapter/CommentSelfListAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$f;->d:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$f;->a:I

    iput-object p3, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$f;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$f;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$f;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goCommentDetailActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
