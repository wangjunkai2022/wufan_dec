.class Lcom/zxing/android/CaptureActivity$a;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zxing/android/CaptureActivity;->j(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/zxing/Result;

.field final synthetic b:Lcom/zxing/android/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/zxing/android/CaptureActivity;Lcom/google/zxing/Result;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zxing/android/CaptureActivity$a;->b:Lcom/zxing/android/CaptureActivity;

    iput-object p2, p0, Lcom/zxing/android/CaptureActivity$a;->a:Lcom/google/zxing/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/zxing/android/CaptureActivity$a;->a:Lcom/google/zxing/Result;

    invoke-virtual {p2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p2

    const-string v0, "result"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object p2, p0, Lcom/zxing/android/CaptureActivity$a;->b:Lcom/zxing/android/CaptureActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcom/zxing/android/CaptureActivity$a;->b:Lcom/zxing/android/CaptureActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
