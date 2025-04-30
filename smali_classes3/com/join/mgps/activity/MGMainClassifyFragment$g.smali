.class Lcom/join/mgps/activity/MGMainClassifyFragment$g;
.super Ljava/lang/Object;
.source "MGMainClassifyFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainClassifyFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/join/mgps/activity/MGMainClassifyFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/Button;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iput-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->a:Landroid/widget/Button;

    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-static {p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->R(Lcom/join/mgps/activity/MGMainClassifyFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->a:Landroid/widget/Button;

    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-static {p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->Q(Lcom/join/mgps/activity/MGMainClassifyFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->a:Landroid/widget/Button;

    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-static {p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->R(Lcom/join/mgps/activity/MGMainClassifyFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->S(Lcom/join/mgps/activity/MGMainClassifyFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object p1, p1, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    const-string p2, "\u5206\u7c7b"

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object p1, p1, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object p1, p1, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->P(Lcom/join/mgps/activity/MGMainClassifyFragment;)Lcom/join/mgps/activity/d;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/d;->l0(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->d0(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$g;->b:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->a0(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
