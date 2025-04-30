.class public Lcom/join/mgps/dialog/d;
.super Landroid/app/Dialog;
.source "AndroidPermissDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/d$g;,
        Lcom/join/mgps/dialog/d$f;,
        Lcom/join/mgps/dialog/d$h;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/join/mgps/dialog/d$h;

.field private d:Lcom/join/mgps/dialog/d$f;

.field private e:Lcom/join/mgps/dialog/d$g;

.field private f:Ljava/lang/String;

.field private g:Landroid/graphics/Bitmap;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/TextView;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/d;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p2, ""

    .line 6
    iput-object p2, p0, Lcom/join/mgps/dialog/d;->f:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/join/mgps/dialog/d;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p2, ""

    .line 9
    iput-object p2, p0, Lcom/join/mgps/dialog/d;->f:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/join/mgps/dialog/d;->a:Landroid/content/Context;

    .line 11
    iput-boolean p3, p0, Lcom/join/mgps/dialog/d;->k:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/d;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/d;)Lcom/join/mgps/dialog/d$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/d;->e:Lcom/join/mgps/dialog/d$g;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/d;)Lcom/join/mgps/dialog/d$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/d;->c:Lcom/join/mgps/dialog/d$h;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/d;)Lcom/join/mgps/dialog/d$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/d;->d:Lcom/join/mgps/dialog/d$f;

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/d;->h:Ljava/lang/String;

    return-void
.end method

.method public e(Lcom/join/mgps/dialog/d$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/d;->d:Lcom/join/mgps/dialog/d$f;

    return-void
.end method

.method public f(Lcom/join/mgps/dialog/d$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/d;->e:Lcom/join/mgps/dialog/d$g;

    return-void
.end method

.method public g(Lcom/join/mgps/dialog/d$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/d;->c:Lcom/join/mgps/dialog/d$h;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/d;->i:Ljava/lang/String;

    return-void
.end method

.method public i(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/d;->g:Landroid/graphics/Bitmap;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/d;->f:Ljava/lang/String;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0086

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f090373

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/dialog/d;->b:Landroid/widget/ImageView;

    const p1, 0x7f09036e

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/d;->j:Landroid/widget/TextView;

    const p1, 0x7f0908ee

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/join/mgps/dialog/d;->k:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0908ef

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/join/mgps/dialog/d;->k:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/dialog/d;->b:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/dialog/d;->g:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/join/mgps/dialog/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/d;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/d;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090369

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f090367

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090368

    .line 13
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 14
    iget-object v2, p0, Lcom/join/mgps/dialog/d;->h:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    iget-object v2, p0, Lcom/join/mgps/dialog/d;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const v2, 0x7f09028f

    .line 16
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/dialog/d$a;

    invoke-direct {v3, p0}, Lcom/join/mgps/dialog/d$a;-><init>(Lcom/join/mgps/dialog/d;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v2, p0, Lcom/join/mgps/dialog/d;->b:Landroid/widget/ImageView;

    new-instance v3, Lcom/join/mgps/dialog/d$b;

    invoke-direct {v3, p0}, Lcom/join/mgps/dialog/d$b;-><init>(Lcom/join/mgps/dialog/d;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance v2, Lcom/join/mgps/dialog/d$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/d$c;-><init>(Lcom/join/mgps/dialog/d;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    new-instance v0, Lcom/join/mgps/dialog/d$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/d$d;-><init>(Lcom/join/mgps/dialog/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    new-instance p1, Lcom/join/mgps/dialog/d$e;

    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/d$e;-><init>(Lcom/join/mgps/dialog/d;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
