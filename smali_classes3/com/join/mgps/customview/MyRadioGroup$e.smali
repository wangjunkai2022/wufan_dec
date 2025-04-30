.class Lcom/join/mgps/customview/MyRadioGroup$e;
.super Ljava/lang/Object;
.source "MyRadioGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/MyRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic b:Lcom/join/mgps/customview/MyRadioGroup;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/MyRadioGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$e;->b:Lcom/join/mgps/customview/MyRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/MyRadioGroup;Lcom/join/mgps/customview/MyRadioGroup$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/MyRadioGroup$e;-><init>(Lcom/join/mgps/customview/MyRadioGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/MyRadioGroup$e;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$e;->a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MyRadioGroup$e;->b:Lcom/join/mgps/customview/MyRadioGroup;

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 5
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/join/mgps/customview/MyRadioGroup$e;->b:Lcom/join/mgps/customview/MyRadioGroup;

    .line 6
    invoke-static {v1}, Lcom/join/mgps/customview/MyRadioGroup;->h(Lcom/join/mgps/customview/MyRadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/MyRadioGroup$e;->a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MyRadioGroup$e;->b:Lcom/join/mgps/customview/MyRadioGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/MyRadioGroup$e;->a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method
