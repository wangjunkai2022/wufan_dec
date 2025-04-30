.class public Lcom/join/mgps/dialog/r;
.super Landroid/app/Dialog;
.source "ChangeNameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/r$c;
    }
.end annotation


# instance fields
.field private a:Lcom/join/mgps/dialog/r$c;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dialog/r;->d:Landroid/widget/EditText;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dialog/r;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/join/mgps/dialog/r;->d:Landroid/widget/EditText;

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dialog/r;->b:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Lcom/join/mgps/dialog/r;->d:Landroid/widget/EditText;

    .line 9
    iput-object p1, p0, Lcom/join/mgps/dialog/r;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/r;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/r;->d:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/r;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/r;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/r;)Lcom/join/mgps/dialog/r$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/r;->a:Lcom/join/mgps/dialog/r$c;

    return-object p0
.end method


# virtual methods
.method public d(Lcom/join/mgps/dialog/r$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/r;->a:Lcom/join/mgps/dialog/r$c;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/r;->c:Ljava/lang/String;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00b1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f090acd

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/join/mgps/dialog/r;->d:Landroid/widget/EditText;

    const p1, 0x7f090243

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/dialog/r;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/join/mgps/dialog/r;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090db6

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 7
    new-instance v0, Lcom/join/mgps/dialog/r$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/r$a;-><init>(Lcom/join/mgps/dialog/r;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/dialog/r;->d:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/dialog/r;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 3
    new-instance v1, Lcom/join/mgps/dialog/r$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/r$b;-><init>(Lcom/join/mgps/dialog/r;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
