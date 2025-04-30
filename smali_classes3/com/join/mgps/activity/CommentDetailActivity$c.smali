.class Lcom/join/mgps/activity/CommentDetailActivity$c;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->M1(Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

.field final synthetic c:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$c;->c:Lcom/join/mgps/activity/CommentDetailActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity$c;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/join/mgps/activity/CommentDetailActivity$c;->b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$c;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$c;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$c;->c:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->e1()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$c;->c:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$c;->b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->t1(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
