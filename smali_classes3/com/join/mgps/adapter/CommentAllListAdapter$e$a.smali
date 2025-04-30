.class Lcom/join/mgps/adapter/CommentAllListAdapter$e$a;
.super Ljava/lang/Object;
.source "CommentAllListAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentAllListAdapter$e;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/CommentAllListAdapter$e;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentAllListAdapter$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$e$a;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$e$a;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$e;

    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$e;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$e$a;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$e;

    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$e;->d:Landroid/widget/TextView;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$e$a;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$e;

    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$e;->e:Lcom/join/mgps/adapter/CommentAllListAdapter;

    iget p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$e;->b:I

    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->c(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$e$a;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$e;

    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$e;->e:Lcom/join/mgps/adapter/CommentAllListAdapter;

    iget-object v0, v0, Lcom/join/mgps/adapter/CommentAllListAdapter;->g:Lcom/join/mgps/adapter/CommentAllListAdapter$h;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$e;->a:Lcom/join/mgps/dto/CommentBaseBean;

    iget p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$e;->b:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/join/mgps/adapter/CommentAllListAdapter$h;->d(Lcom/join/mgps/dto/CommentBaseBean;II)V

    :cond_0
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
