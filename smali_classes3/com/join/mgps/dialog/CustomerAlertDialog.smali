.class public Lcom/join/mgps/dialog/CustomerAlertDialog;
.super Landroid/app/DialogFragment;
.source "CustomerAlertDialog.java"


# static fields
.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String; = "title"

.field private static final g:Ljava/lang/String; = "hint"

.field private static final h:Ljava/lang/String; = "cancel_str"

.field private static final i:Ljava/lang/String; = "ok_str"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/Button;

.field d:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/dialog/CustomerAlertDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/dialog/CustomerAlertDialog;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dialog/CustomerAlertDialog;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/CustomerAlertDialog;

    invoke-direct {v0}, Lcom/join/mgps/dialog/CustomerAlertDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "hint"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "cancel_str"

    .line 5
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ok_str"

    .line 6
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 1
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120176

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c015a

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09100a

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->a:Landroid/widget/TextView;

    const v1, 0x7f09036e

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->b:Landroid/widget/TextView;

    const v1, 0x7f090365

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->c:Landroid/widget/Button;

    const v1, 0x7f09036b

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->d:Landroid/widget/Button;

    .line 8
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "title"

    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    iget-object v4, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "hint"

    .line 11
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    iget-object v4, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "cancel_str"

    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    iget-object v4, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->c:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "ok_str"

    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->d:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->c:Landroid/widget/Button;

    new-instance v2, Lcom/join/mgps/dialog/CustomerAlertDialog$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/CustomerAlertDialog$a;-><init>(Lcom/join/mgps/dialog/CustomerAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->d:Landroid/widget/Button;

    new-instance v2, Lcom/join/mgps/dialog/CustomerAlertDialog$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/CustomerAlertDialog$b;-><init>(Lcom/join/mgps/dialog/CustomerAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 20
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 21
    new-instance v0, Lcom/join/mgps/dialog/CustomerAlertDialog$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/CustomerAlertDialog$c;-><init>(Lcom/join/mgps/dialog/CustomerAlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method
