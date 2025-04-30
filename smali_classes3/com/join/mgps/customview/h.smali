.class public Lcom/join/mgps/customview/h;
.super Landroid/widget/PopupWindow;
.source "ForumPopupWindow.java"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/h;->a:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/h;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p2, p3, p4, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 5
    iput-object p1, p0, Lcom/join/mgps/customview/h;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/join/mgps/customview/h;->b:Landroid/view/View;

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/customview/h;->c()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/h;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    .line 3
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private c()V
    .locals 1

    const v0, 0x7f1204c7

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 6
    new-instance v0, Lcom/join/mgps/customview/h$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/h$a;-><init>(Lcom/join/mgps/customview/h;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/h;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/h;->b()V

    .line 2
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/h;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    return v0
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/h;->a()V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/h;->a()V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 0

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/h;->a()V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/h;->a()V

    return-void
.end method
