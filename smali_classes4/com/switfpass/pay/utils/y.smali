.class public Lcom/switfpass/pay/utils/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/switfpass/pay/utils/x;

.field private b:Landroid/content/Context;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/switfpass/pay/utils/x;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pay.qq.jspay"

    iput-object v0, p0, Lcom/switfpass/pay/utils/y;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/switfpass/pay/utils/y;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/switfpass/pay/utils/y;->a:Lcom/switfpass/pay/utils/x;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Landroid/widget/PopupWindow;
    .locals 3

    iget-object v0, p0, Lcom/switfpass/pay/utils/y;->b:Landroid/content/Context;

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, p2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const v2, 0x7f070020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/switfpass/pay/MainApplication;->j:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/switfpass/pay/utils/y;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/switfpass/pay/MainApplication;->m:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/switfpass/pay/utils/y;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f02002f

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/switfpass/pay/utils/y;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f02002e

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/switfpass/pay/utils/y;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f02002d

    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/switfpass/pay/utils/j1;

    invoke-direct {p1, v1}, Lcom/switfpass/pay/utils/j1;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    const p1, 0x1030002

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    iget-object p1, p0, Lcom/switfpass/pay/utils/y;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x106000d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/utils/y;->a:Lcom/switfpass/pay/utils/x;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/switfpass/pay/utils/x;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
