.class public Lcom/join/mgps/dialog/t0;
.super Landroid/app/Dialog;
.source "GprsChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/t0$f;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/CheckBox;

.field private g:I

.field private h:Lcom/join/mgps/pref/PrefDef_;

.field private i:Lcom/join/mgps/dialog/t0$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/t0;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/t0;->a:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dialog/t0;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/t0;)Lcom/join/mgps/dialog/t0$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/t0;->i:Lcom/join/mgps/dialog/t0$f;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/t0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dialog/t0;->i()V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/dialog/t0;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/t0;->b:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/dialog/t0;)Lcom/join/mgps/pref/PrefDef_;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/t0;->h:Lcom/join/mgps/pref/PrefDef_;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/dialog/t0;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/t0;->c:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/dialog/t0;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/t0;->d:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/dialog/t0;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/t0;->e:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/dialog/t0;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/t0;->f:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/t0;->b:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/t0;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/t0;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/t0;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/t0;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public j(Lcom/join/mgps/dialog/t0$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/t0;->i:Lcom/join/mgps/dialog/t0$f;

    return-void
.end method

.method public k(Lcom/join/mgps/pref/PrefDef_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/t0;->h:Lcom/join/mgps/pref/PrefDef_;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c02b8

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f090b38

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v0, 0x7f090b2f

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090b33

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090b30

    .line 6
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f090b3b

    .line 7
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f090b39

    .line 8
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/join/mgps/dialog/t0;->b:Landroid/widget/CheckBox;

    const v4, 0x7f090b32

    .line 9
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/join/mgps/dialog/t0;->c:Landroid/widget/CheckBox;

    const v4, 0x7f090b34

    .line 10
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/join/mgps/dialog/t0;->d:Landroid/widget/CheckBox;

    const v4, 0x7f090b31

    .line 11
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/join/mgps/dialog/t0;->e:Landroid/widget/CheckBox;

    const v4, 0x7f090b3c

    .line 12
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/join/mgps/dialog/t0;->f:Landroid/widget/CheckBox;

    .line 13
    new-instance v4, Lcom/join/mgps/dialog/t0$a;

    invoke-direct {v4, p0}, Lcom/join/mgps/dialog/t0$a;-><init>(Lcom/join/mgps/dialog/t0;)V

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p1, Lcom/join/mgps/dialog/t0$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/t0$b;-><init>(Lcom/join/mgps/dialog/t0;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance p1, Lcom/join/mgps/dialog/t0$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/t0$c;-><init>(Lcom/join/mgps/dialog/t0;)V

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    new-instance p1, Lcom/join/mgps/dialog/t0$d;

    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/t0$d;-><init>(Lcom/join/mgps/dialog/t0;)V

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    new-instance p1, Lcom/join/mgps/dialog/t0$e;

    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/t0$e;-><init>(Lcom/join/mgps/dialog/t0;)V

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/t0;->b:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/t0;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/t0;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/t0;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/dialog/t0;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/dialog/t0;->h:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->gprsNoticeInfo()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dialog/t0;->g:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/t0;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/t0;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/t0;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/dialog/t0;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/dialog/t0;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method
