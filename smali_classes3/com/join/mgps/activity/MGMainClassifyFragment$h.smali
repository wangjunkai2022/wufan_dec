.class Lcom/join/mgps/activity/MGMainClassifyFragment$h;
.super Ljava/lang/Object;
.source "MGMainClassifyFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainClassifyFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Lcom/join/mgps/dto/CategorySimpleBean;

.field final synthetic c:Lcom/join/mgps/activity/MGMainClassifyFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/RadioButton;Lcom/join/mgps/dto/CategorySimpleBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iput-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->a:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->b:Lcom/join/mgps/dto/CategorySimpleBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->a:Landroid/widget/RadioButton;

    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-static {p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->R(Lcom/join/mgps/activity/MGMainClassifyFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->S(Lcom/join/mgps/activity/MGMainClassifyFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->S(Lcom/join/mgps/activity/MGMainClassifyFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->S(Lcom/join/mgps/activity/MGMainClassifyFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object p1, p1, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->b:Lcom/join/mgps/dto/CategorySimpleBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object p1, p1, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->b:Lcom/join/mgps/dto/CategorySimpleBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object p1, p1, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->b:Lcom/join/mgps/dto/CategorySimpleBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->P(Lcom/join/mgps/activity/MGMainClassifyFragment;)Lcom/join/mgps/activity/d;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->b:Lcom/join/mgps/dto/CategorySimpleBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CategorySimpleBean;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/d;->l0(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->b:Lcom/join/mgps/dto/CategorySimpleBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CategorySimpleBean;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->d0(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->b:Lcom/join/mgps/dto/CategorySimpleBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CategorySimpleBean;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->a0(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->a:Landroid/widget/RadioButton;

    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$h;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    invoke-static {p2}, Lcom/join/mgps/activity/MGMainClassifyFragment;->Q(Lcom/join/mgps/activity/MGMainClassifyFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method
