.class public Lcom/join/mgps/dialog/s1;
.super Ljava/lang/Object;
.source "PrePostingHintDialog.java"


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Lcom/join/mgps/activity/posting/PostingActivity$m;


# direct methods
.method public varargs constructor <init>(Landroid/app/Activity;Lcom/join/mgps/activity/posting/PostingActivity$m;I[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/dialog/s1;->b:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 3
    invoke-virtual {p0, p1, p3, p4}, Lcom/join/mgps/dialog/s1;->d(Landroid/app/Activity;I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/s1;)Lcom/join/mgps/activity/posting/PostingActivity$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/s1;->b:Lcom/join/mgps/activity/posting/PostingActivity$m;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/s1;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/s1;->a:Landroid/app/Dialog;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/s1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method varargs d(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1204e2

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/dialog/s1;->a:Landroid/app/Dialog;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dialog/s1;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0190

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09100a

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09036e

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f090365

    .line 9
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f09036b

    .line 10
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const/4 v5, 0x0

    .line 11
    aget-object v6, p3, v5

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    aget-object v0, p3, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    array-length v0, p3

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/16 v0, 0x8

    .line 14
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 15
    aget-object p3, p3, v1

    invoke-virtual {v4, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 16
    :cond_1
    aget-object v0, p3, v1

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 17
    aget-object p3, p3, v2

    invoke-virtual {v4, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :goto_0
    new-instance p3, Lcom/join/mgps/dialog/s1$a;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/dialog/s1$a;-><init>(Lcom/join/mgps/dialog/s1;I)V

    invoke-virtual {v3, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    new-instance p3, Lcom/join/mgps/dialog/s1$b;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/dialog/s1$b;-><init>(Lcom/join/mgps/dialog/s1;I)V

    invoke-virtual {v4, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p2, p0, Lcom/join/mgps/dialog/s1;->a:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/dialog/s1;->a:Landroid/app/Dialog;

    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/dialog/s1;->a:Landroid/app/Dialog;

    new-instance p2, Lcom/join/mgps/dialog/s1$c;

    invoke-direct {p2, p0}, Lcom/join/mgps/dialog/s1$c;-><init>(Lcom/join/mgps/dialog/s1;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/dialog/s1;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 p3, -0x1

    .line 25
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p3, -0x2

    .line 26
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p2, 0x11

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/s1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/s1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
