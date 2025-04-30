.class public Lcom/switfpass/pay/utils/e0;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/switfpass/pay/utils/y0;

    invoke-direct {v0}, Lcom/switfpass/pay/utils/y0;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f030009

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Landroid/widget/Toast;

    invoke-direct {p2, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x11

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {p2, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    return-void
.end method
