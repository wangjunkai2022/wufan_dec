.class public Lcom/join/android/app/common/dialog/d;
.super Landroid/app/AlertDialog;
.source "AddShortcutResultDialog.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/common/dialog/d;->d:Z

    const-string v0, "0"

    .line 3
    iput-object v0, p0, Lcom/join/android/app/common/dialog/d;->e:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/join/android/app/common/dialog/d;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/android/app/common/dialog/d;->d:Z

    const-string v0, "0"

    .line 7
    iput-object v0, p0, Lcom/join/android/app/common/dialog/d;->e:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/join/android/app/common/dialog/d;->c:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/join/android/app/common/dialog/d;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/common/dialog/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/common/dialog/d;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/join/android/app/common/dialog/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/common/dialog/d;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/join/android/app/common/dialog/d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/d;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v0, 0x11

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const p1, 0x7f0c014a

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    const p1, 0x7f090e4a

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/android/app/common/dialog/d;->a:Landroid/widget/ImageView;

    const p1, 0x7f090e4b

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/common/dialog/d;->b:Landroid/widget/TextView;

    .line 9
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d;->c:Landroid/content/Context;

    const-string v0, "showGuideAddIconModal"

    invoke-static {p1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    iget-object v1, p0, Lcom/join/android/app/common/dialog/d;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/android/app/common/dialog/d;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/p;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d;->a:Landroid/widget/ImageView;

    new-instance v0, Lcom/join/android/app/common/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/dialog/d$a;-><init>(Lcom/join/android/app/common/dialog/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d;->b:Landroid/widget/TextView;

    new-instance v0, Lcom/join/android/app/common/dialog/d$b;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/dialog/d$b;-><init>(Lcom/join/android/app/common/dialog/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
