.class public Lcom/join/mgps/customview/i0;
.super Landroid/widget/PopupWindow;
.source "RewardPopupWindow.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/LinearLayout;

.field d:Landroid/widget/ImageView;

.field private e:J

.field f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/join/mgps/customview/i0$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/i0$a;-><init>(Lcom/join/mgps/customview/i0;)V

    iput-object v0, p0, Lcom/join/mgps/customview/i0;->f:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/i0;->a:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c055b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0911ac

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/i0;->b:Landroid/widget/TextView;

    const v0, 0x7f090d2e

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/i0;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f090a6e

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/customview/i0;->d:Landroid/widget/ImageView;

    .line 8
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x190

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/16 v0, 0x12c

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/i0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/customview/i0;->e:J

    return-wide v0
.end method

.method static synthetic b(Lcom/join/mgps/customview/i0;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/customview/i0;->e:J

    return-wide p1
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/i0;->b:Landroid/widget/TextView;

    const-string v1, "\u6ce8\u518c\u6210\u529f  \u5956\u52b1: <font color=\'0xf47500\' >+100\u94dc\u677f</font>&nbsp;&nbsp;<font color=\'0xf47500\' >+100</font>\u7ecf\u9a8c"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/16 v0, 0x51

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/i0;->f:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method
