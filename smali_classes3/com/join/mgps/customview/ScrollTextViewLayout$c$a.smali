.class Lcom/join/mgps/customview/ScrollTextViewLayout$c$a;
.super Ljava/lang/Object;
.source "ScrollTextViewLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ScrollTextViewLayout$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ScrollTextViewLayout$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ScrollTextViewLayout$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$c;

    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->f(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$c;

    iget-object v0, v0, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    iget-object v0, v0, Lcom/join/mgps/customview/ScrollTextViewLayout;->i:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout$c;

    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
