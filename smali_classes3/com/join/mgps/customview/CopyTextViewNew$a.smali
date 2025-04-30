.class Lcom/join/mgps/customview/CopyTextViewNew$a;
.super Landroid/os/Handler;
.source "CopyTextViewNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/CopyTextViewNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/CopyTextViewNew;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/CopyTextViewNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CopyTextViewNew$a;->a:Lcom/join/mgps/customview/CopyTextViewNew;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/CopyTextViewNew$a;->a:Lcom/join/mgps/customview/CopyTextViewNew;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/customview/CopyTextViewNew$a;->a:Lcom/join/mgps/customview/CopyTextViewNew;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
