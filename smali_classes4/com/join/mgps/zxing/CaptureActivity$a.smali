.class Lcom/join/mgps/zxing/CaptureActivity$a;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/zxing/CaptureActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/zxing/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/zxing/CaptureActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/zxing/CaptureActivity$a;->a:Lcom/join/mgps/zxing/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/zxing/CaptureActivity$a;->a:Lcom/join/mgps/zxing/CaptureActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
