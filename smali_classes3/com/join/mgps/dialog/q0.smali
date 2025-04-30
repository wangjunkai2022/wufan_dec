.class public Lcom/join/mgps/dialog/q0;
.super Landroid/app/Dialog;
.source "ForumLoadingDialog.java"


# static fields
.field public static final h:I = -0x1

.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static l:I = -0x1


# instance fields
.field private a:Landroid/content/Context;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field public g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f1204ce

    .line 4
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 5
    new-instance v0, Lcom/join/mgps/dialog/q0$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/q0$a;-><init>(Lcom/join/mgps/dialog/q0;)V

    iput-object v0, p0, Lcom/join/mgps/dialog/q0;->g:Landroid/os/Handler;

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dialog/q0;->a:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c01f0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090529

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/q0;->b:Landroid/view/View;

    const v0, 0x7f09052a

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/q0;->c:Landroid/view/View;

    const v0, 0x7f090527

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/q0;->d:Landroid/view/View;

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p2, Lcom/join/mgps/dialog/q0$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/dialog/q0$a;-><init>(Lcom/join/mgps/dialog/q0;)V

    iput-object p2, p0, Lcom/join/mgps/dialog/q0;->g:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dialog/q0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/q0;->f:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/q0;->d:Landroid/view/View;

    const v1, 0x7f090528

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/q0;->f:Landroid/widget/TextView;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/q0;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/q0;->e:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/q0;->c:Landroid/view/View;

    const v1, 0x7f09052b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/q0;->e:Landroid/widget/TextView;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/q0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(I)V
    .locals 5

    .line 1
    sput p1, Lcom/join/mgps/dialog/q0;->l:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dialog/q0;->dismiss()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/dialog/q0;->dismiss()V

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/dialog/q0;->b:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dialog/q0;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dialog/q0;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    const-wide/16 v3, 0x1f4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/q0;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/dialog/q0;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/dialog/q0;->d:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/dialog/q0;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/dialog/q0;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/dialog/q0;->show()V

    :cond_5
    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
