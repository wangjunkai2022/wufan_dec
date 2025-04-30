.class public Lcom/join/mgps/customview/g;
.super Landroid/widget/PopupWindow;
.source "ForumGroupOrderbyPopWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/g$b;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field private final b:Landroid/content/Context;

.field private c:Lcom/join/mgps/customview/g$b;

.field d:Landroid/widget/RadioButton;

.field e:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/g;->b:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/g;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p2, p3}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 5
    iput-object p1, p0, Lcom/join/mgps/customview/g;->b:Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/g;->a()V

    return-void
.end method

.method private a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/g;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c040b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/g;->a:Landroid/view/View;

    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/join/mgps/customview/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x42fc0000    # 126.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    const/4 v4, -0x2

    invoke-direct {v0, v1, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/g;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/g;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 7
    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/g;->e()V

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/customview/g;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/g;->a:Landroid/view/View;

    const v1, 0x7f090863

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/join/mgps/customview/g;->d:Landroid/widget/RadioButton;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/g;->a:Landroid/view/View;

    const v1, 0x7f09085c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/join/mgps/customview/g;->e:Landroid/widget/RadioButton;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/g;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/g;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget v0, Lcom/join/mgps/activity/ForumActivity;->D:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/g;->c(I)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 5
    new-instance v0, Lcom/join/mgps/customview/g$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/g$a;-><init>(Lcom/join/mgps/customview/g;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/g;->d:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/customview/g;->e:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/g;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/g;->d:Landroid/widget/RadioButton;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/g;->d:Landroid/widget/RadioButton;

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public d(Lcom/join/mgps/customview/g$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/g;->c:Lcom/join/mgps/customview/g$b;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090863

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/g;->c:Lcom/join/mgps/customview/g$b;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/join/mgps/customview/g$b;->a(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    const v0, 0x7f09085c

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/g;->c:Lcom/join/mgps/customview/g$b;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/join/mgps/customview/g$b;->a(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
