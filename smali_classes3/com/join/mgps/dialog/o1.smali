.class public Lcom/join/mgps/dialog/o1;
.super Landroid/app/Dialog;
.source "OnlineCouponDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/o1$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/join/mgps/dto/OnlineCouponConfigBean;

.field private c:I

.field private d:Lcom/join/mgps/dialog/o1$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dialog/o1;->d:Lcom/join/mgps/dialog/o1$a;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dialog/o1;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dialog/o1;->b:Lcom/join/mgps/dto/OnlineCouponConfigBean;

    .line 5
    iput p3, p0, Lcom/join/mgps/dialog/o1;->c:I

    return-void
.end method

.method private a()V
    .locals 4

    const v0, 0x7f0907c6

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0910c0

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f091096

    .line 3
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0910a5

    .line 4
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/dialog/o1;->b:Lcom/join/mgps/dto/OnlineCouponConfigBean;

    const-string v3, ""

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/OnlineCouponConfigBean;->getRedPacketHint()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/dialog/o1;->b:Lcom/join/mgps/dto/OnlineCouponConfigBean;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/OnlineCouponConfigBean;->getRedPacketSubHint()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/join/mgps/dialog/o1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/o1;->d:Lcom/join/mgps/dialog/o1$a;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0907c6

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0910a5

    if-ne p1, v0, :cond_1

    .line 4
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/dialog/o1;->b:Lcom/join/mgps/dto/OnlineCouponConfigBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/OnlineCouponConfigBean;->getRedPacketJumpUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/dialog/o1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity_;->O2(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/dialog/o1;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->clickOpenPopUpRedBag:Lcom/papa/sim/statistic/Event;

    iget-object v1, p0, Lcom/join/mgps/dialog/o1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->M1(Lcom/papa/sim/statistic/Event;I)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c018a

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/dialog/o1;->a()V

    return-void
.end method
