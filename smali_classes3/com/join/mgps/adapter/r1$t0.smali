.class Lcom/join/mgps/adapter/r1$t0;
.super Ljava/lang/Object;
.source "GameDetialModleThreeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/r1;->O(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CommentBaseBean;

.field final synthetic b:I

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lcom/join/mgps/adapter/r1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1$t0;->e:Lcom/join/mgps/adapter/r1;

    iput-object p2, p0, Lcom/join/mgps/adapter/r1$t0;->a:Lcom/join/mgps/dto/CommentBaseBean;

    iput p3, p0, Lcom/join/mgps/adapter/r1$t0;->b:I

    iput-object p4, p0, Lcom/join/mgps/adapter/r1$t0;->c:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/join/mgps/adapter/r1$t0;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/r1$t0;->e:Lcom/join/mgps/adapter/r1;

    invoke-static {v0}, Lcom/join/mgps/adapter/r1;->g(Lcom/join/mgps/adapter/r1;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$t0;->a:Lcom/join/mgps/dto/CommentBaseBean;

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$t0;->e:Lcom/join/mgps/adapter/r1;

    iget v0, p0, Lcom/join/mgps/adapter/r1$t0;->b:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/r1;->T(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$t0;->c:Landroid/widget/ImageView;

    const v0, 0x7f08038d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$t0;->e:Lcom/join/mgps/adapter/r1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1;->f:Lcom/join/mgps/adapter/r1$c1;

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/r1$t0;->a:Lcom/join/mgps/dto/CommentBaseBean;

    iget v1, p0, Lcom/join/mgps/adapter/r1$t0;->b:I

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Lcom/join/mgps/adapter/r1$c1;->e(Lcom/join/mgps/dto/CommentBaseBean;II)V

    :cond_2
    return-void

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$t0;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$t0;->e:Lcom/join/mgps/adapter/r1;

    invoke-static {p1}, Lcom/join/mgps/adapter/r1;->g(Lcom/join/mgps/adapter/r1;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$t0;->c:Landroid/widget/ImageView;

    const v0, 0x7f08038f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$t0;->e:Lcom/join/mgps/adapter/r1;

    invoke-static {p1}, Lcom/join/mgps/adapter/r1;->g(Lcom/join/mgps/adapter/r1;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010051

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/join/mgps/adapter/r1$t0;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 13
    new-instance v0, Lcom/join/mgps/adapter/r1$t0$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/r1$t0$a;-><init>(Lcom/join/mgps/adapter/r1$t0;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/r1$t0;->e:Lcom/join/mgps/adapter/r1;

    invoke-static {v0}, Lcom/join/mgps/adapter/r1;->g(Lcom/join/mgps/adapter/r1;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    :goto_0
    return-void
.end method
