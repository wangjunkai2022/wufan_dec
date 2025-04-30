.class Lcom/zxing/android/CaptureActivity$b;
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
.field final synthetic a:Lcom/zxing/android/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/zxing/android/CaptureActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zxing/android/CaptureActivity$b;->a:Lcom/zxing/android/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/zxing/android/CaptureActivity$b;->a:Lcom/zxing/android/CaptureActivity;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/zxing/android/CaptureActivity;->i(J)V

    return-void
.end method
