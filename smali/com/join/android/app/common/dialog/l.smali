.class public Lcom/join/android/app/common/dialog/l;
.super Landroid/app/AlertDialog;
.source "LocalGameTwoDialog.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/android/app/common/dialog/l;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/dialog/l;->c:Z

    return v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/android/app/common/dialog/l;->c:Z

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/dialog/l;->a:Landroid/widget/Button;

    const v1, 0x7f080add

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/dialog/l;->a:Landroid/widget/Button;

    const-string v1, "\u5173\u95ed"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/android/app/common/dialog/l;->c:Z

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/dialog/l;->a:Landroid/widget/Button;

    const v1, 0x7f080add

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/dialog/l;->a:Landroid/widget/Button;

    const-string v1, "\u667a\u80fd\u8bc6\u522b"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/l;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/l;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/l;->a:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object p2, p0, Lcom/join/android/app/common/dialog/l;->a:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

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

    const p1, 0x7f0c017c

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    const p1, 0x7f0909a2

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/android/app/common/dialog/l;->a:Landroid/widget/Button;

    const p1, 0x7f0909a3

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/common/dialog/l;->b:Landroid/widget/TextView;

    return-void
.end method
