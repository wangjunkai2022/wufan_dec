.class public Lcom/join/android/app/common/dialog/f;
.super Landroid/app/AlertDialog;
.source "LocalGameOneDialog.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/android/app/common/dialog/f;->g:I

    .line 3
    iput p2, p0, Lcom/join/android/app/common/dialog/f;->g:I

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/common/dialog/f;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/f;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/join/android/app/common/dialog/f;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/f;->f:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/join/android/app/common/dialog/f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/f;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/join/android/app/common/dialog/f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/f;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/join/android/app/common/dialog/f;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/f;->a:Landroid/widget/Button;

    return-object p0
.end method


# virtual methods
.method public f(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/f;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public g(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/f;->a:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object p2, p0, Lcom/join/android/app/common/dialog/f;->a:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v1, 0x11

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const v0, 0x7f0c017a

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setContentView(I)V

    const v0, 0x7f090995

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/android/app/common/dialog/f;->a:Landroid/widget/Button;

    const v0, 0x7f090999

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/android/app/common/dialog/f;->c:Landroid/widget/TextView;

    const v0, 0x7f090997

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/android/app/common/dialog/f;->b:Landroid/widget/TextView;

    const v0, 0x7f090998

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/android/app/common/dialog/f;->d:Landroid/widget/TextView;

    const v0, 0x7f090996

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/android/app/common/dialog/f;->e:Landroid/widget/ImageView;

    const v0, 0x7f09099a

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/android/app/common/dialog/f;->f:Landroid/widget/ImageView;

    .line 13
    iget-object v0, p0, Lcom/join/android/app/common/dialog/f;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/join/android/app/common/dialog/f$a;

    invoke-direct {v1, p0}, Lcom/join/android/app/common/dialog/f$a;-><init>(Lcom/join/android/app/common/dialog/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/join/android/app/common/dialog/f;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/android/app/common/dialog/f$b;

    invoke-direct {v1, p0}, Lcom/join/android/app/common/dialog/f$b;-><init>(Lcom/join/android/app/common/dialog/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget v0, p0, Lcom/join/android/app/common/dialog/f;->g:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 17
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f;->c:Landroid/widget/TextView;

    const-string v0, "\u672c\u5730\u6e38\u620f\u8fd0\u884c\u5e2e\u52a9"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f;->b:Landroid/widget/TextView;

    const-string v0, "\u609f\u996d\u652f\u6301\u672c\u5730\u626b\u63cf\u4e86\uff0c\u4e0b\u8f7d\u6587\u4ef6\u81f3\'Download\'\u6587\u4ef6\u5939\uff0c\u70b9\u51fb\u4e0b\u65b9\u7684\u626b\u63cf\u6e38\u620f\uff0c\u5373\u53ef\u6dfb\u52a0\u6e38\u620f\u81f3\u6211\u7684\u6e38\u620f\u3002"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f;->e:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 20
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "onFindNewFile"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 22
    iget-object v0, p0, Lcom/join/android/app/common/dialog/f;->c:Landroid/widget/TextView;

    const-string v1, "\u65b0\u589e\u6587\u4ef6\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/join/android/app/common/dialog/f;->b:Landroid/widget/TextView;

    const-string v1, "\u68c0\u6d4b\u5230\'Download\'\u76ee\u5f55\u4e0b\u6709\u65b0\u589ezip\u6587\u4ef6\uff0c\u662f\u5426\u8fdb\u884c\u626b\u63cf\u8bc6\u522b\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/join/android/app/common/dialog/f;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
