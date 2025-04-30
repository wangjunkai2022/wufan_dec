.class public Lcom/join/mgps/dialog/s;
.super Landroid/app/Dialog;
.source "CheckGBAPlugDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/s$d;
    }
.end annotation


# instance fields
.field private a:Lcom/join/mgps/dialog/s$d;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string v0, "\u8bf7\u9009\u62e9\u542f\u52a8\u63d2\u4ef6"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dialog/s;->c:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dialog/s;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p2, "\u8bf7\u9009\u62e9\u542f\u52a8\u63d2\u4ef6"

    .line 5
    iput-object p2, p0, Lcom/join/mgps/dialog/s;->c:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dialog/s;->b:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const-string p2, "\u8bf7\u9009\u62e9\u542f\u52a8\u63d2\u4ef6"

    .line 8
    iput-object p2, p0, Lcom/join/mgps/dialog/s;->c:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/join/mgps/dialog/s;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/s;)Lcom/join/mgps/dialog/s$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/s;->a:Lcom/join/mgps/dialog/s$d;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/s;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/s;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/join/mgps/dialog/s$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/s;->a:Lcom/join/mgps/dialog/s$d;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/s;->c:Ljava/lang/String;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c02b4

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f091023

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f090af7

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090b60

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0912d5

    .line 6
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 7
    new-instance v3, Lcom/join/mgps/dialog/s$a;

    invoke-direct {v3, p0}, Lcom/join/mgps/dialog/s$a;-><init>(Lcom/join/mgps/dialog/s;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Lcom/join/mgps/dialog/s$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/s$b;-><init>(Lcom/join/mgps/dialog/s;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance v0, Lcom/join/mgps/dialog/s$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/s$c;-><init>(Lcom/join/mgps/dialog/s;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/dialog/s;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
