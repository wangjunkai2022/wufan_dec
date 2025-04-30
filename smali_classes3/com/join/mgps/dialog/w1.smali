.class public Lcom/join/mgps/dialog/w1;
.super Lcom/join/mgps/dialog/q;
.source "SimulatorNotifyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/w1$b;
    }
.end annotation


# instance fields
.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/CheckBox;

.field private o:Lcom/join/mgps/dialog/w1$b;

.field private p:Landroid/os/CountDownTimer;

.field private q:Z

.field private r:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f12013b

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/dialog/w1;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/dialog/q;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/dialog/w1;->q:Z

    const p2, 0x7f0c01a4

    .line 4
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/q;->g(Z)V

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/dialog/w1;->r:Landroid/os/Handler;

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/dialog/w1;->q()V

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/dialog/w1;->t()V

    return-void
.end method

.method public static synthetic m(Lcom/join/mgps/dialog/w1;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/dialog/w1;->r(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic n(Lcom/join/mgps/dialog/w1;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/w1;->m:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic o(Lcom/join/mgps/dialog/w1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/dialog/w1;->q:Z

    return p0
.end method

.method static synthetic p(Lcom/join/mgps/dialog/w1;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/w1;->r:Landroid/os/Handler;

    return-object p0
.end method

.method private q()V
    .locals 1

    const v0, 0x7f091192

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/w1;->j:Landroid/widget/TextView;

    const v0, 0x7f0910e3

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/w1;->k:Landroid/widget/TextView;

    const v0, 0x7f0907ee

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/dialog/w1;->l:Landroid/widget/ImageView;

    const v0, 0x7f0901e4

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/dialog/w1;->m:Landroid/widget/Button;

    const v0, 0x7f090262

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/join/mgps/dialog/w1;->n:Landroid/widget/CheckBox;

    return-void
.end method

.method private synthetic r(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/w1;->o:Lcom/join/mgps/dialog/w1$b;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lcom/join/mgps/dialog/w1$b;->a(Z)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/w1;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/w1;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/w1;->n:Landroid/widget/CheckBox;

    new-instance v1, Lcom/join/mgps/dialog/u1;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/u1;-><init>(Lcom/join/mgps/dialog/w1;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901e4

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dialog/q;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/w1;->o:Lcom/join/mgps/dialog/w1$b;

    if-eqz p1, :cond_3

    .line 4
    invoke-interface {p1}, Lcom/join/mgps/dialog/w1$b;->onConfirm()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0907ee

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/dialog/w1;->q:Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/dialog/w1;->o:Lcom/join/mgps/dialog/w1$b;

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Lcom/join/mgps/dialog/w1$b;->onClose()V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/w1;->p:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/dialog/q;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public s(Ljava/lang/CharSequence;)Lcom/join/mgps/dialog/w1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/w1;->m:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public show()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/join/mgps/dialog/q;->show()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/w1;->m:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/w1;->p:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/join/mgps/dialog/w1$a;

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/dialog/w1$a;-><init>(Lcom/join/mgps/dialog/w1;JJ)V

    iput-object v0, p0, Lcom/join/mgps/dialog/w1;->p:Landroid/os/CountDownTimer;

    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public u(Lcom/join/mgps/dialog/w1$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/w1;->o:Lcom/join/mgps/dialog/w1$b;

    return-void
.end method

.method public v(Ljava/lang/CharSequence;)Lcom/join/mgps/dialog/w1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/w1;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public w(Ljava/lang/CharSequence;)Lcom/join/mgps/dialog/w1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/w1;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
