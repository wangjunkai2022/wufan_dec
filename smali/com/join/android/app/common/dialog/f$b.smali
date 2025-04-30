.class Lcom/join/android/app/common/dialog/f$b;
.super Ljava/lang/Object;
.source "LocalGameOneDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/dialog/f;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/dialog/f;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/dialog/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/dialog/f$b;->a:Lcom/join/android/app/common/dialog/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f$b;->a:Lcom/join/android/app/common/dialog/f;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/f;->a(Lcom/join/android/app/common/dialog/f;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f$b;->a:Lcom/join/android/app/common/dialog/f;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/f;->b(Lcom/join/android/app/common/dialog/f;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f08060a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f$b;->a:Lcom/join/android/app/common/dialog/f;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/f;->c(Lcom/join/android/app/common/dialog/f;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u626b\u63cf\u63d0\u793a"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f$b;->a:Lcom/join/android/app/common/dialog/f;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/f;->d(Lcom/join/android/app/common/dialog/f;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u5982\u518d\u6b21\u9700\u8981\u626b\u63cf\uff0c\u8bf7\u524d\u5f80\u3010\u6211\u7684\u6e38\u620f\u3011\u70b9\u51fb\u672c\u5730\u6e38\u620f\u6309\u94ae\u3002"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f$b;->a:Lcom/join/android/app/common/dialog/f;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/f;->e(Lcom/join/android/app/common/dialog/f;)Landroid/widget/Button;

    move-result-object p1

    const-string v0, "\u6211\u77e5\u9053\u4e86"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f$b;->a:Lcom/join/android/app/common/dialog/f;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/f;->e(Lcom/join/android/app/common/dialog/f;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/join/android/app/common/dialog/f$b$a;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/dialog/f$b$a;-><init>(Lcom/join/android/app/common/dialog/f$b;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
