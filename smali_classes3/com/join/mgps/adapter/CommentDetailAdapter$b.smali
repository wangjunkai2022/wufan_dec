.class Lcom/join/mgps/adapter/CommentDetailAdapter$b;
.super Ljava/lang/Object;
.source "CommentDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentDetailAdapter;->o(Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

.field final synthetic b:I

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/join/mgps/adapter/CommentDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentDetailAdapter;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;ILandroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->d:Lcom/join/mgps/adapter/CommentDetailAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    iput p3, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->b:I

    iput-object p4, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->d:Lcom/join/mgps/adapter/CommentDetailAdapter;

    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->a(Lcom/join/mgps/adapter/CommentDetailAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_praise()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->d:Lcom/join/mgps/adapter/CommentDetailAdapter;

    iget v1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->b:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->q(I)V

    .line 5
    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f080ca0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->d:Lcom/join/mgps/adapter/CommentDetailAdapter;

    iget-object p1, p1, Lcom/join/mgps/adapter/CommentDetailAdapter;->c:Lcom/join/mgps/adapter/CommentDetailAdapter$h;

    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    iget v1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->b:I

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Lcom/join/mgps/adapter/CommentDetailAdapter$h;->x0(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;II)V

    :cond_2
    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->d:Lcom/join/mgps/adapter/CommentDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentDetailAdapter;->a(Lcom/join/mgps/adapter/CommentDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f08075e

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->d:Lcom/join/mgps/adapter/CommentDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentDetailAdapter;->a(Lcom/join/mgps/adapter/CommentDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010051

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 15
    new-instance p1, Lcom/join/mgps/adapter/CommentDetailAdapter$b$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/CommentDetailAdapter$b$a;-><init>(Lcom/join/mgps/adapter/CommentDetailAdapter$b;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->d:Lcom/join/mgps/adapter/CommentDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentDetailAdapter;->a(Lcom/join/mgps/adapter/CommentDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    :goto_0
    return-void
.end method
