.class Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;->d0(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
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

.field final synthetic e:Lcom/join/mgps/adapter/MGGameDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->e:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->a:Lcom/join/mgps/dto/CommentBaseBean;

    iput p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->b:I

    iput-object p4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->c:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->e:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    iget-wide v2, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter;->y:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 3
    :cond_0
    iput-wide v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter;->y:J

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->e:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->a:Lcom/join/mgps/dto/CommentBaseBean;

    if-nez p1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->e:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->b:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->g0(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->c:Landroid/widget/ImageView;

    const v0, 0x7f080ca0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->e:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter;->x:Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;

    if-eqz p1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->a:Lcom/join/mgps/dto/CommentBaseBean;

    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->b:I

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;->d(Lcom/join/mgps/dto/CommentBaseBean;II)V

    :cond_3
    return-void

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->e:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->c:Landroid/widget/ImageView;

    const v0, 0x7f080ca5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->e:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010051

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 16
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0$a;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 17
    :cond_5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;->e:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    :goto_0
    return-void
.end method
