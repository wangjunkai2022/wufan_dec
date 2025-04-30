.class public Lcom/join/mgps/dialog/j1;
.super Landroid/app/AlertDialog;
.source "ModRewardDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/join/mgps/dto/ModFeedbackBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f12013b

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/dialog/j1;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/dialog/j1;->e()V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/dialog/j1;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/dialog/j1;->d()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic d()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/dialog/j1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/dialog/j1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/z;->T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic e()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/dialog/j1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/dialog/j1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/z;->T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ModFeedbackBean;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/j1;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dialog/j1;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/dialog/j1;->f:Lcom/join/mgps/dto/ModFeedbackBean;

    if-eqz p3, :cond_0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/dialog/j1;->c:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/join/mgps/dto/ModFeedbackBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/j1;->d:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/join/mgps/dto/ModFeedbackBean;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/dialog/j1;->e:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/join/mgps/dto/ModFeedbackBean;->getBtn_title()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/join/mgps/dialog/i1;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/i1;-><init>(Lcom/join/mgps/dialog/j1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090288

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/join/mgps/dialog/h1;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/h1;-><init>(Lcom/join/mgps/dialog/j1;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const v0, 0x7f090867

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/j1;->f:Lcom/join/mgps/dto/ModFeedbackBean;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModFeedbackBean;->getWx_num()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/j1;->c(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5ba2\u670d\u5fae\u4fe1\u5df2\u590d\u5236"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0187

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const p1, 0x7f091192

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/j1;->c:Landroid/widget/TextView;

    const p1, 0x7f0910e3

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/j1;->d:Landroid/widget/TextView;

    const p1, 0x7f090867

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/j1;->e:Landroid/widget/TextView;

    const v0, 0x7f090288

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
