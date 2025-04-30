.class public Lcom/join/mgps/dialog/u;
.super Landroid/widget/PopupWindow;
.source "ClassifyGamePopupowindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/u$a;
    }
.end annotation


# instance fields
.field private a:Lcom/join/mgps/dialog/u$a;


# direct methods
.method public constructor <init>(Landroid/view/View;IIZLcom/join/mgps/dialog/u$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 2
    iput-object p5, p0, Lcom/join/mgps/dialog/u;->a:Lcom/join/mgps/dialog/u$a;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/u;->a:Lcom/join/mgps/dialog/u$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/join/mgps/dialog/u$a;->l0()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method
