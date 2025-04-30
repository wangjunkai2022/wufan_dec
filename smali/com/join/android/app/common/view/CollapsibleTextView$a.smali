.class Lcom/join/android/app/common/view/CollapsibleTextView$a;
.super Ljava/lang/Object;
.source "CollapsibleTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/view/CollapsibleTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/view/CollapsibleTextView;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/view/CollapsibleTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->a:Lcom/join/android/app/common/view/CollapsibleTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->a:Lcom/join/android/app/common/view/CollapsibleTextView;

    invoke-static {v0}, Lcom/join/android/app/common/view/CollapsibleTextView;->a(Lcom/join/android/app/common/view/CollapsibleTextView;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->a:Lcom/join/android/app/common/view/CollapsibleTextView;

    invoke-static {v0}, Lcom/join/android/app/common/view/CollapsibleTextView;->d(Lcom/join/android/app/common/view/CollapsibleTextView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/view/CollapsibleTextView;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->a:Lcom/join/android/app/common/view/CollapsibleTextView;

    invoke-static {v0}, Lcom/join/android/app/common/view/CollapsibleTextView;->e(Lcom/join/android/app/common/view/CollapsibleTextView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->a:Lcom/join/android/app/common/view/CollapsibleTextView;

    invoke-static {v0}, Lcom/join/android/app/common/view/CollapsibleTextView;->e(Lcom/join/android/app/common/view/CollapsibleTextView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->a:Lcom/join/android/app/common/view/CollapsibleTextView;

    invoke-static {v1}, Lcom/join/android/app/common/view/CollapsibleTextView;->f(Lcom/join/android/app/common/view/CollapsibleTextView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->a:Lcom/join/android/app/common/view/CollapsibleTextView;

    invoke-static {v0, v2}, Lcom/join/android/app/common/view/CollapsibleTextView;->b(Lcom/join/android/app/common/view/CollapsibleTextView;I)I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->a:Lcom/join/android/app/common/view/CollapsibleTextView;

    invoke-static {v0}, Lcom/join/android/app/common/view/CollapsibleTextView;->a(Lcom/join/android/app/common/view/CollapsibleTextView;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->a:Lcom/join/android/app/common/view/CollapsibleTextView;

    invoke-static {v0}, Lcom/join/android/app/common/view/CollapsibleTextView;->d(Lcom/join/android/app/common/view/CollapsibleTextView;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 8
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->a:Lcom/join/android/app/common/view/CollapsibleTextView;

    invoke-static {v0}, Lcom/join/android/app/common/view/CollapsibleTextView;->e(Lcom/join/android/app/common/view/CollapsibleTextView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->a:Lcom/join/android/app/common/view/CollapsibleTextView;

    invoke-static {v0}, Lcom/join/android/app/common/view/CollapsibleTextView;->e(Lcom/join/android/app/common/view/CollapsibleTextView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->a:Lcom/join/android/app/common/view/CollapsibleTextView;

    invoke-static {v1}, Lcom/join/android/app/common/view/CollapsibleTextView;->g(Lcom/join/android/app/common/view/CollapsibleTextView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->a:Lcom/join/android/app/common/view/CollapsibleTextView;

    invoke-static {v0, v3}, Lcom/join/android/app/common/view/CollapsibleTextView;->b(Lcom/join/android/app/common/view/CollapsibleTextView;I)I

    :cond_1
    :goto_0
    return-void
.end method
