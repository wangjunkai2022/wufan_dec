.class public Lcom/join/mgps/dialog/s0;
.super Landroid/app/Dialog;
.source "GenderCheckDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/s0$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/join/mgps/dialog/s0$c;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/dialog/s0;->c:I

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dialog/s0;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x1

    .line 5
    iput p2, p0, Lcom/join/mgps/dialog/s0;->c:I

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dialog/s0;->a:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p2, 0x1

    .line 8
    iput p2, p0, Lcom/join/mgps/dialog/s0;->c:I

    .line 9
    iput-object p1, p0, Lcom/join/mgps/dialog/s0;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/s0;)Lcom/join/mgps/dialog/s0$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/s0;->b:Lcom/join/mgps/dialog/s0$c;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/join/mgps/dialog/s0$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/s0;->b:Lcom/join/mgps/dialog/s0$c;

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dialog/s0;->c:I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c02b5

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f0909fc

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v0, 0x7f0905ff

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0909fb

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v2, 0x7f0905fe

    .line 6
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 7
    iget v3, p0, Lcom/join/mgps/dialog/s0;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 8
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 11
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 12
    :goto_0
    new-instance v3, Lcom/join/mgps/dialog/s0$a;

    invoke-direct {v3, p0, v1, v2}, Lcom/join/mgps/dialog/s0$a;-><init>(Lcom/join/mgps/dialog/s0;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance p1, Lcom/join/mgps/dialog/s0$b;

    invoke-direct {p1, p0, v1, v2}, Lcom/join/mgps/dialog/s0$b;-><init>(Lcom/join/mgps/dialog/s0;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
