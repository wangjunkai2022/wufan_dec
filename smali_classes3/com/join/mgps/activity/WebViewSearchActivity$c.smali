.class Lcom/join/mgps/activity/WebViewSearchActivity$c;
.super Landroid/os/CountDownTimer;
.source "WebViewSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/WebViewSearchActivity;->O0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/join/mgps/activity/WebViewSearchActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/WebViewSearchActivity;JJZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iput-boolean p6, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->a:Z

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->r:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->d1()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->y:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->getMixins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->y:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1102da

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object v5, v5, Lcom/join/mgps/activity/WebViewSearchActivity;->y:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    invoke-virtual {v5}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->getMixins()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->setTitle(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->d:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iget-object v0, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->y:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    invoke-virtual {v1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->I(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->a:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x258

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->r:Landroid/widget/TextView;

    const p2, 0x7f1102db

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
