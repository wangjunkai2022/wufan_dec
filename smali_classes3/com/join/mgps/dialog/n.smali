.class public Lcom/join/mgps/dialog/n;
.super Ljava/lang/Object;
.source "ArenaNoRecordDialog.java"


# instance fields
.field private a:Landroid/app/Dialog;

.field b:Landroid/app/Activity;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/n;->b:Landroid/app/Activity;

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/n;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/dialog/n;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/n;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/dialog/n;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/n;->f(Landroid/view/View;)V

    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/n;->c()V

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/n;->c()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/NewArenaMainActivty_;->F1(Landroid/content/Context;)Lcom/join/mgps/activity/NewArenaMainActivty_$h;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/NewArenaMainActivty_$h;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/n;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method d(Landroid/app/Activity;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1204e2

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/dialog/n;->a:Landroid/app/Dialog;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0150

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0907ee

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/dialog/l;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/l;-><init>(Lcom/join/mgps/dialog/n;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090b1b

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/n;->c:Landroid/view/View;

    const v0, 0x7f091198

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/n;->e:Landroid/widget/TextView;

    const v0, 0x7f09108a

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/n;->d:Landroid/view/View;

    .line 7
    new-instance v1, Lcom/join/mgps/dialog/m;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/m;-><init>(Lcom/join/mgps/dialog/n;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/dialog/n;->a:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 11
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 12
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/n;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/n;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
