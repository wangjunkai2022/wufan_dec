.class public Lcom/join/mgps/customview/MyRadioGroup;
.super Landroid/widget/LinearLayout;
.source "MyRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/MyRadioGroup$e;,
        Lcom/join/mgps/customview/MyRadioGroup$c;,
        Lcom/join/mgps/customview/MyRadioGroup$d;,
        Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private c:Z

.field private d:Lcom/join/mgps/customview/MyRadioGroup$d;

.field private e:Lcom/join/mgps/customview/MyRadioGroup$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/MyRadioGroup;->a:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/MyRadioGroup;->c:Z

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/customview/MyRadioGroup;->m()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/MyRadioGroup;->a:I

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/join/mgps/customview/MyRadioGroup;->c:Z

    .line 9
    iput p1, p0, Lcom/join/mgps/customview/MyRadioGroup;->a:I

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/customview/MyRadioGroup;->m()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/MyRadioGroup;Landroid/widget/RadioButton;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/MyRadioGroup;->j(Landroid/widget/RadioButton;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/MyRadioGroup;)Lcom/join/mgps/customview/MyRadioGroup$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyRadioGroup;->d:Lcom/join/mgps/customview/MyRadioGroup$d;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/MyRadioGroup;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/MyRadioGroup;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/MyRadioGroup;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/MyRadioGroup;->c:Z

    return p1
.end method

.method static synthetic e(Lcom/join/mgps/customview/MyRadioGroup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/MyRadioGroup;->a:I

    return p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/MyRadioGroup;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/MyRadioGroup;->n(IZ)V

    return-void
.end method

.method static synthetic g(Lcom/join/mgps/customview/MyRadioGroup;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/MyRadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic h(Lcom/join/mgps/customview/MyRadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyRadioGroup;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method private j(Landroid/widget/RadioButton;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 2
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    instance-of v4, v3, Landroid/widget/RadioButton;

    if-eqz v4, :cond_1

    if-ne v3, p1, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3

    .line 5
    :cond_1
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_4

    .line 6
    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 7
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 8
    instance-of v7, v6, Landroid/widget/RadioButton;

    if-eqz v7, :cond_3

    .line 9
    check-cast v6, Landroid/widget/RadioButton;

    if-ne v6, p1, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/customview/MyRadioGroup$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/MyRadioGroup$c;-><init>(Lcom/join/mgps/customview/MyRadioGroup;Lcom/join/mgps/customview/MyRadioGroup$a;)V

    iput-object v0, p0, Lcom/join/mgps/customview/MyRadioGroup;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 2
    new-instance v0, Lcom/join/mgps/customview/MyRadioGroup$e;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/MyRadioGroup$e;-><init>(Lcom/join/mgps/customview/MyRadioGroup;Lcom/join/mgps/customview/MyRadioGroup$a;)V

    iput-object v0, p0, Lcom/join/mgps/customview/MyRadioGroup;->e:Lcom/join/mgps/customview/MyRadioGroup$e;

    .line 3
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private n(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private setCheckedId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/MyRadioGroup;->a:I

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/customview/MyRadioGroup$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/MyRadioGroup$a;-><init>(Lcom/join/mgps/customview/MyRadioGroup;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 4
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    instance-of v4, v3, Landroid/widget/RadioButton;

    if-eqz v4, :cond_1

    .line 7
    check-cast v3, Landroid/widget/RadioButton;

    .line 8
    new-instance v4, Lcom/join/mgps/customview/MyRadioGroup$b;

    invoke-direct {v4, p0, v3}, Lcom/join/mgps/customview/MyRadioGroup$b;-><init>(Lcom/join/mgps/customview/MyRadioGroup;Landroid/widget/RadioButton;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;

    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/MyRadioGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/MyRadioGroup;->l(Landroid/util/AttributeSet;)Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/MyRadioGroup;->l(Landroid/util/AttributeSet;)Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/MyRadioGroup;->a:I

    return v0
.end method

.method public i(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    iget v1, p0, Lcom/join/mgps/customview/MyRadioGroup;->a:I

    if-ne p1, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/join/mgps/customview/MyRadioGroup;->a:I

    if-eq v1, v0, :cond_1

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/join/mgps/customview/MyRadioGroup;->n(IZ)V

    :cond_1
    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/MyRadioGroup;->n(IZ)V

    .line 5
    :cond_2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/MyRadioGroup;->setCheckedId(I)V

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/MyRadioGroup;->i(I)V

    return-void
.end method

.method public l(Landroid/util/AttributeSet;)Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/join/mgps/customview/MyRadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/MyRadioGroup;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/join/mgps/customview/MyRadioGroup;->c:Z

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/MyRadioGroup;->n(IZ)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/MyRadioGroup;->c:Z

    .line 6
    iget v0, p0, Lcom/join/mgps/customview/MyRadioGroup;->a:I

    invoke-direct {p0, v0}, Lcom/join/mgps/customview/MyRadioGroup;->setCheckedId(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lcom/join/mgps/customview/MyRadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Lcom/join/mgps/customview/MyRadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/join/mgps/customview/MyRadioGroup$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup;->d:Lcom/join/mgps/customview/MyRadioGroup$d;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MyRadioGroup;->e:Lcom/join/mgps/customview/MyRadioGroup$e;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/MyRadioGroup$e;->a(Lcom/join/mgps/customview/MyRadioGroup$e;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method
