.class Lcom/BaseAppCompatActivity$e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BaseAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseAppCompatActivity;->showPopwindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/BaseAppCompatActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity$e;->b:Lcom/BaseAppCompatActivity;

    iput p2, p0, Lcom/BaseAppCompatActivity$e;->a:I

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    sub-float/2addr p3, p4

    iget p4, p0, Lcom/BaseAppCompatActivity$e;->a:I

    int-to-float p4, p4

    const/4 v0, 0x1

    cmpl-float p3, p3, p4

    if-gtz p3, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    sub-float/2addr p3, p4

    iget p4, p0, Lcom/BaseAppCompatActivity$e;->a:I

    int-to-float p4, p4

    cmpl-float p3, p3, p4

    if-gtz p3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    sub-float/2addr p3, p4

    iget p4, p0, Lcom/BaseAppCompatActivity$e;->a:I

    int-to-float p4, p4

    cmpl-float p3, p3, p4

    if-lez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/BaseAppCompatActivity$e;->a:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/BaseAppCompatActivity$e;->b:Lcom/BaseAppCompatActivity;

    iget-object p1, p1, Lcom/BaseAppCompatActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    iget-object p1, p0, Lcom/BaseAppCompatActivity$e;->b:Lcom/BaseAppCompatActivity;

    iget-boolean p2, p1, Lcom/BaseAppCompatActivity;->isSo:Z

    if-eqz p2, :cond_3

    .line 5
    iget-object p1, p1, Lcom/BaseAppCompatActivity;->contentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object p2, Lcom/papa/sim/statistic/Event;->exitSoGameStart:Lcom/papa/sim/statistic/Event;

    new-instance p3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object p4, p0, Lcom/BaseAppCompatActivity$e;->b:Lcom/BaseAppCompatActivity;

    iget-object p4, p4, Lcom/BaseAppCompatActivity;->gameid:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_1

    .line 6
    :cond_3
    iget-object p1, p1, Lcom/BaseAppCompatActivity;->contentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object p2, Lcom/papa/sim/statistic/Event;->exitSinGameStart:Lcom/papa/sim/statistic/Event;

    new-instance p3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object p4, p0, Lcom/BaseAppCompatActivity$e;->b:Lcom/BaseAppCompatActivity;

    iget-object p4, p4, Lcom/BaseAppCompatActivity;->gameid:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :goto_1
    return v0
.end method
