.class public Lcom/join/mgps/dialog/d0;
.super Landroid/app/Dialog;
.source "DialogExit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/d0$e;,
        Lcom/join/mgps/dialog/d0$d;,
        Lcom/join/mgps/dialog/d0$f;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/join/mgps/dialog/d0$f;

.field private d:Lcom/join/mgps/dialog/d0$d;

.field private e:Lcom/join/mgps/dialog/d0$e;

.field private f:Ljava/lang/String;

.field private g:Landroid/graphics/Bitmap;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/d0;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p2, ""

    .line 6
    iput-object p2, p0, Lcom/join/mgps/dialog/d0;->f:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/join/mgps/dialog/d0;->a:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/d0;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/d0;)Lcom/join/mgps/dialog/d0$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/d0;->e:Lcom/join/mgps/dialog/d0$e;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/d0;)Lcom/join/mgps/dialog/d0$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/d0;->c:Lcom/join/mgps/dialog/d0$f;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/d0;)Lcom/join/mgps/dialog/d0$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/d0;->d:Lcom/join/mgps/dialog/d0$d;

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/d0;->h:Ljava/lang/String;

    return-void
.end method

.method public e(Lcom/join/mgps/dialog/d0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/d0;->d:Lcom/join/mgps/dialog/d0$d;

    return-void
.end method

.method public f(Lcom/join/mgps/dialog/d0$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/d0;->e:Lcom/join/mgps/dialog/d0$e;

    return-void
.end method

.method public g(Lcom/join/mgps/dialog/d0$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/d0;->c:Lcom/join/mgps/dialog/d0$f;

    return-void
.end method

.method public h(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/d0;->g:Landroid/graphics/Bitmap;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/d0;->f:Ljava/lang/String;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0161

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f090373

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/dialog/d0;->b:Landroid/widget/ImageView;

    .line 4
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/dialog/d0;->g:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/dialog/d0;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    const p1, 0x7f090369

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f090367

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 9
    iget-object v1, p0, Lcom/join/mgps/dialog/d0;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/join/mgps/dialog/d0;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/dialog/d0;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/join/mgps/dialog/d0$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/d0$a;-><init>(Lcom/join/mgps/dialog/d0;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v1, Lcom/join/mgps/dialog/d0$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/d0$b;-><init>(Lcom/join/mgps/dialog/d0;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance v0, Lcom/join/mgps/dialog/d0$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/d0$c;-><init>(Lcom/join/mgps/dialog/d0;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
