.class public Lcom/join/mgps/dialog/t;
.super Landroid/app/Dialog;
.source "ChoiceDefautGBAPlugDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/t$e;
    }
.end annotation


# instance fields
.field private a:Lcom/join/mgps/dialog/t$e;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/t;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/t;->b:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dialog/t;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/t;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/t;->c:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/t;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/t;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/t;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/t;->d:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/dialog/t;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/t;->e:Landroid/widget/CheckBox;

    return-object p0
.end method


# virtual methods
.method public e(Lcom/join/mgps/dialog/t$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/t;->a:Lcom/join/mgps/dialog/t$e;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c02b3

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f090af7

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v0, 0x7f090b60

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090e5c

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f091023

    .line 6
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\u8bf7\u9009\u62e9\u9ed8\u8ba4\u542f\u52a8\u63d2\u4ef6"

    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v3, 0x7f0912d5

    .line 9
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 10
    new-instance v4, Lcom/join/mgps/dialog/t$a;

    invoke-direct {v4, p0}, Lcom/join/mgps/dialog/t$a;-><init>(Lcom/join/mgps/dialog/t;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance v1, Lcom/join/mgps/dialog/t$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/t$b;-><init>(Lcom/join/mgps/dialog/t;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance p1, Lcom/join/mgps/dialog/t$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/t$c;-><init>(Lcom/join/mgps/dialog/t;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance p1, Lcom/join/mgps/dialog/t$d;

    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/t$d;-><init>(Lcom/join/mgps/dialog/t;)V

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090e5d

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/join/mgps/dialog/t;->c:Landroid/widget/CheckBox;

    const p1, 0x7f0905cf

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/join/mgps/dialog/t;->d:Landroid/widget/CheckBox;

    const p1, 0x7f0905d0

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/join/mgps/dialog/t;->e:Landroid/widget/CheckBox;

    .line 17
    iget-object p1, p0, Lcom/join/mgps/dialog/t;->c:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/dialog/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/dialog/t;->e:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/dialog/t;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/sim/statistic/pref/b;->m()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/t;->e:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/t;->c:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/t;->c:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/t;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/t;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/b;->m()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/t;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/t;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method
