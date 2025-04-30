.class Lcom/join/android/app/common/dialog/j$b;
.super Ljava/lang/Object;
.source "LocalGameThreeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/dialog/j;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/android/app/common/dialog/j;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/dialog/j;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/dialog/j$b;->b:Lcom/join/android/app/common/dialog/j;

    iput p2, p0, Lcom/join/android/app/common/dialog/j$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$b;->b:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->Q(Lcom/join/android/app/common/dialog/j;)Lcom/join/mgps/customview/NoScrollViewPager;

    move-result-object v0

    iget v1, p0, Lcom/join/android/app/common/dialog/j$b;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/NoScrollViewPager;->setCurrentItem(I)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$b;->b:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->T(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/android/app/common/dialog/j$b;->a:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$b;->b:Lcom/join/android/app/common/dialog/j;

    iget-object v2, v2, Lcom/join/android/app/common/dialog/j;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
