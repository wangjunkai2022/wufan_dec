.class Lcom/join/mgps/customview/MyRadioGroup$b;
.super Ljava/lang/Object;
.source "MyRadioGroup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/MyRadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Lcom/join/mgps/customview/MyRadioGroup;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/MyRadioGroup;Landroid/widget/RadioButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->b:Lcom/join/mgps/customview/MyRadioGroup;

    iput-object p2, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->a:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->a:Landroid/widget/RadioButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->b:Lcom/join/mgps/customview/MyRadioGroup;

    iget-object v0, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->a:Landroid/widget/RadioButton;

    invoke-static {p1, v0}, Lcom/join/mgps/customview/MyRadioGroup;->a(Lcom/join/mgps/customview/MyRadioGroup;Landroid/widget/RadioButton;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->b:Lcom/join/mgps/customview/MyRadioGroup;

    invoke-static {p1}, Lcom/join/mgps/customview/MyRadioGroup;->b(Lcom/join/mgps/customview/MyRadioGroup;)Lcom/join/mgps/customview/MyRadioGroup$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->b:Lcom/join/mgps/customview/MyRadioGroup;

    invoke-static {p1}, Lcom/join/mgps/customview/MyRadioGroup;->b(Lcom/join/mgps/customview/MyRadioGroup;)Lcom/join/mgps/customview/MyRadioGroup$d;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->b:Lcom/join/mgps/customview/MyRadioGroup;

    iget-object v1, p0, Lcom/join/mgps/customview/MyRadioGroup$b;->a:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/customview/MyRadioGroup$d;->a(Lcom/join/mgps/customview/MyRadioGroup;I)V

    :cond_0
    return p2
.end method
