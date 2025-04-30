.class Lcom/join/mgps/activity/CommentDetailActivity$n;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->C1(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

.field final synthetic b:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$n;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity$n;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/CommentSelfListActivity_;->n1(Landroid/content/Context;)Lcom/join/mgps/activity/CommentSelfListActivity_$r;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$n;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentSelfListActivity_$r;->a(I)Lcom/join/mgps/activity/CommentSelfListActivity_$r;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
