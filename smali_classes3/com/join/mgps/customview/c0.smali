.class public Lcom/join/mgps/customview/c0;
.super Lcom/join/mgps/customview/u;
.source "MyGameSettingsPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/c0$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Lcom/join/mgps/customview/c0$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/u;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/c0;->init()V

    return-void
.end method


# virtual methods
.method public a()Lcom/join/mgps/customview/c0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/c0;->d:Lcom/join/mgps/customview/c0$a;

    return-object v0
.end method

.method public b(Lcom/join/mgps/customview/c0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/c0;->d:Lcom/join/mgps/customview/c0$a;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x50

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/join/mgps/customview/u;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0542

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, -0x2

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090e2c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/c0;->a:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090db9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/c0;->b:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/c0;->c:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/c0;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/c0;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/c0;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090e2c

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/c0;->d:Lcom/join/mgps/customview/c0$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/join/mgps/customview/c0$a;->a()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/u;->dismiss()V

    goto :goto_0

    :cond_1
    const v0, 0x7f090db9

    if-ne p1, v0, :cond_3

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/c0;->d:Lcom/join/mgps/customview/c0$a;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/join/mgps/customview/c0$a;->b()V

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/u;->dismiss()V

    goto :goto_0

    :cond_3
    const v0, 0x7f090210

    if-ne p1, v0, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/u;->dismiss()V

    :cond_4
    :goto_0
    return-void
.end method
