.class Lcom/join/mgps/Util/p2$a$a;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/p2$a;->j(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/join/mgps/Util/p2$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/p2$a;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/p2$a$a;->b:Lcom/join/mgps/Util/p2$a;

    iput-object p2, p0, Lcom/join/mgps/Util/p2$a$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/p2$a$a;->b:Lcom/join/mgps/Util/p2$a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/p2$a;->b(Lcom/join/mgps/Util/p2$a;Z)Z

    .line 2
    iget-object p1, p0, Lcom/join/mgps/Util/p2$a$a;->b:Lcom/join/mgps/Util/p2$a;

    invoke-static {p1}, Lcom/join/mgps/Util/p2$a;->c(Lcom/join/mgps/Util/p2$a;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/Util/p2$a$a;->b:Lcom/join/mgps/Util/p2$a;

    iget-object v0, p0, Lcom/join/mgps/Util/p2$a$a;->a:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/p2$a;->e(Lcom/join/mgps/Util/p2$a;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/p2$a$a;->b:Lcom/join/mgps/Util/p2$a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/p2$a;->b(Lcom/join/mgps/Util/p2$a;Z)Z

    .line 2
    iget-object p1, p0, Lcom/join/mgps/Util/p2$a$a;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
