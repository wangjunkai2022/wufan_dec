.class public Lcom/join/mgps/dialog/j;
.super Ljava/lang/Object;
.source "ArenaCreateDialog1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/j$b;,
        Lcom/join/mgps/dialog/j$c;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Dialog;

.field b:Landroid/app/Activity;

.field c:Landroid/widget/ListView;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/widget/TextView;

.field g:Lcom/join/mgps/dialog/j$c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/dialog/j$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/dialog/j;->g:Lcom/join/mgps/dialog/j$c;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dialog/j;->b:Landroid/app/Activity;

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/j;->e(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/dialog/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/j;->f(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/dialog/j;Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/join/mgps/dialog/j;->g(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/j;->c()V

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

.method private synthetic g(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/dialog/j;->g:Lcom/join/mgps/dialog/j$c;

    if-eqz p2, :cond_0

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {p2, p1}, Lcom/join/mgps/dialog/j$c;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/j;->c()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public d()Lcom/join/mgps/dialog/j$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->g:Lcom/join/mgps/dialog/j$c;

    return-object v0
.end method

.method e(Landroid/app/Activity;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1204e2

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/dialog/j;->a:Landroid/app/Dialog;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dialog/j;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c014e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0907ee

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/dialog/j$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/j$a;-><init>(Lcom/join/mgps/dialog/j;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0908de

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/mgps/dialog/j;->c:Landroid/widget/ListView;

    const v0, 0x7f090b1b

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/j;->d:Landroid/view/View;

    const v0, 0x7f091198

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/j;->f:Landroid/widget/TextView;

    const v0, 0x7f09108a

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/j;->e:Landroid/view/View;

    .line 12
    new-instance v1, Lcom/join/mgps/dialog/h;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/h;-><init>(Lcom/join/mgps/dialog/j;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->a:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 16
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 17
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method public h(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;Z)V"
        }
    .end annotation

    const/16 p2, 0x8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dialog/j;->d:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/dialog/j;->c:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/dialog/j;->c:Landroid/widget/ListView;

    new-instance v0, Lcom/join/mgps/dialog/j$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/dialog/j$b;-><init>(Lcom/join/mgps/dialog/j;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/dialog/j;->c:Landroid/widget/ListView;

    new-instance v0, Lcom/join/mgps/dialog/i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/dialog/i;-><init>(Lcom/join/mgps/dialog/j;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->c:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->f:Landroid/widget/TextView;

    const-string p2, "\u63d0\u793a"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public i(Lcom/join/mgps/dialog/j$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/j;->g:Lcom/join/mgps/dialog/j$c;

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
