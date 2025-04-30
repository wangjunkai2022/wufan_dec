.class public Lcom/join/mgps/dialog/h0;
.super Landroid/app/Dialog;
.source "FightADDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/h0$c;
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/join/mgps/dialog/h0$c;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/dialog/h0;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/dialog/h0;->g:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/dialog/h0;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/h0;)Lcom/join/mgps/dialog/h0$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/h0;->f:Lcom/join/mgps/dialog/h0$c;

    return-object p0
.end method


# virtual methods
.method public b(Z)Lcom/join/mgps/dialog/h0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p0
.end method

.method public c(Lcom/join/mgps/dialog/h0$c;)Lcom/join/mgps/dialog/h0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/h0;->f:Lcom/join/mgps/dialog/h0$c;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/join/mgps/dialog/h0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/h0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/join/mgps/dialog/h0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/h0;->e:Ljava/lang/String;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/dialog/h0;->g:Z

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    const p1, 0x7f0c01dd

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    .line 6
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const p1, 0x7f09009a

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/dialog/h0;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f09009f

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/h0;->b:Landroid/widget/TextView;

    const p1, 0x7f090097

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/dialog/h0;->c:Landroid/widget/ImageView;

    .line 11
    iget-object p1, p0, Lcom/join/mgps/dialog/h0;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/h0;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/dialog/h0;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f08071a

    iget-object v1, p0, Lcom/join/mgps/dialog/h0;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/dialog/h0;->c:Landroid/widget/ImageView;

    new-instance v0, Lcom/join/mgps/dialog/h0$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/h0$a;-><init>(Lcom/join/mgps/dialog/h0;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/dialog/h0;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v0, Lcom/join/mgps/dialog/h0$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/h0$b;-><init>(Lcom/join/mgps/dialog/h0;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    iget-boolean v0, p0, Lcom/join/mgps/dialog/h0;->g:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
