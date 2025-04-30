.class public Lcom/join/mgps/dialog/LoginDialog;
.super Landroid/app/Dialog;
.source "LoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/LoginDialog$c;,
        Lcom/join/mgps/dialog/LoginDialog$d;,
        Lcom/join/mgps/dialog/LoginDialog$StyleType;
    }
.end annotation


# static fields
.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x4


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:I

.field private e:Z

.field private f:Lcom/join/mgps/dialog/LoginDialog$d;

.field private g:Lcom/join/mgps/dialog/LoginDialog$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f120180

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/join/mgps/dialog/LoginDialog;->d:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/dialog/LoginDialog;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/LoginDialog;)Lcom/join/mgps/dialog/LoginDialog$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/LoginDialog;->g:Lcom/join/mgps/dialog/LoginDialog$c;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/LoginDialog;)Lcom/join/mgps/dialog/LoginDialog$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/LoginDialog;->f:Lcom/join/mgps/dialog/LoginDialog$d;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Lcom/join/mgps/dialog/LoginDialog;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/LoginDialog;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/LoginDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public c(Z)Lcom/join/mgps/dialog/LoginDialog;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dialog/LoginDialog;->e:Z

    return-object p0
.end method

.method public d(Lcom/join/mgps/dialog/LoginDialog$c;)Lcom/join/mgps/dialog/LoginDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->g:Lcom/join/mgps/dialog/LoginDialog$c;

    return-object p0
.end method

.method public f(Lcom/join/mgps/dialog/LoginDialog$d;)Lcom/join/mgps/dialog/LoginDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->f:Lcom/join/mgps/dialog/LoginDialog$d;

    return-object p0
.end method

.method public g(I)Lcom/join/mgps/dialog/LoginDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dialog/LoginDialog;->d:I

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/dialog/LoginDialog;->e:Z

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    const p1, 0x7f0c03e8

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f0909eb

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->a:Landroid/view/View;

    const p1, 0x7f09124e

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->b:Landroid/view/View;

    const p1, 0x7f09124d

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->c:Landroid/view/View;

    .line 7
    iget p1, p0, Lcom/join/mgps/dialog/LoginDialog;->d:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->a:Landroid/view/View;

    const v0, 0x7f0801db

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->a:Landroid/view/View;

    const v0, 0x7f0801da

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->a:Landroid/view/View;

    const v0, 0x7f0801d9

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->a:Landroid/view/View;

    const v0, 0x7f0801dc

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->c:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/dialog/LoginDialog$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/LoginDialog$a;-><init>(Lcom/join/mgps/dialog/LoginDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->b:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/dialog/LoginDialog$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/LoginDialog$b;-><init>(Lcom/join/mgps/dialog/LoginDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/dialog/LoginDialog;->e:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
