.class public Lcom/join/mgps/customview/p;
.super Landroid/app/AlertDialog;
.source "MessageDialog.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/p;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/p;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/p;->h:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/p;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uff081\uff09\u521b\u5efa\u70ed\u70b9\uff0c\u8bbe\u7f6e\u540d\u79f0\u4e3a\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"\uff1b"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/p;->d:Landroid/widget/TextView;

    const-string v0, "\uff082\uff09\u8bbe\u7f6e\u5bc6\u7801\u4e3a\"12345678\"\uff1b"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/p;->h:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/p;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/p;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uff081\uff09\u5bfb\u627e\u540d\u79f0\u4ee5\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"\u5f00\u5934\u7684\u70ed\u70b9\uff1b"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/p;->d:Landroid/widget/TextView;

    const-string v0, "\uff082\uff09\u52a0\u5165\u5bc6\u7801\u4e3a\"12345678\"\uff1b"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/p;->e:Landroid/widget/TextView;

    const-string v0, "\uff083\uff09\u8fde\u63a5\u70ed\u70b9\u540e\uff0c\u8fd4\u56de\u609f\u996d\u6e38\u620f\u5385\uff08\u8bf7\u786e\u4fdd\u672c\u673a\u70ed\u70b9\u5904\u4e8e\u5173\u95ed\u72b6\u6001\uff09\u3002"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/customview/p;->e(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/p;->f:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/join/mgps/customview/p;->f:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/p;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071429

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 4
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071208

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 7
    invoke-virtual {v1, p1, v0}, Landroid/view/Window;->setLayout(II)V

    const/16 p1, 0x11

    .line 8
    invoke-virtual {v1, p1}, Landroid/view/Window;->setGravity(I)V

    const p1, 0x7f0c017d

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    const p1, 0x7f09035c

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/p;->a:Landroid/widget/TextView;

    const p1, 0x7f090359

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/p;->b:Landroid/widget/TextView;

    const p1, 0x7f090358

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/p;->c:Landroid/widget/TextView;

    const p1, 0x7f09035b

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/p;->d:Landroid/widget/TextView;

    const p1, 0x7f09035a

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/p;->e:Landroid/widget/TextView;

    const p1, 0x7f090356

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/customview/p;->f:Landroid/widget/Button;

    const p1, 0x7f090357

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/customview/p;->g:Landroid/widget/Button;

    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/p;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/p;->g:Landroid/widget/Button;

    new-instance v0, Lcom/join/mgps/customview/p$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/p$a;-><init>(Lcom/join/mgps/customview/p;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
