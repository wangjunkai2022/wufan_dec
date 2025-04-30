.class public Lcom/papa91/view/AutoSaveSlot;
.super Ljava/lang/Object;
.source "AutoSaveSlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/AutoSaveSlot$MyClickListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/app/Activity;

.field countDown:Lcom/papa91/view/CountDownView;

.field countDownBtn:Landroid/view/View;

.field dialog:Lcom/papa91/view/AutoSlotDialog;

.field handler:Landroid/os/Handler;

.field layout:Landroid/widget/FrameLayout;

.field private final parent:Landroid/view/View;

.field private ugcPath:Ljava/lang/String;

.field private vipLevel:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->handler:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot;->context:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/papa91/view/AutoSaveSlot;->parent:Landroid/view/View;

    .line 5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->layout:Landroid/widget/FrameLayout;

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/papa91/mix/R$layout;->layout_auto_save:I

    iget-object v1, p0, Lcom/papa91/view/AutoSaveSlot;->layout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 8
    iget-object p2, p0, Lcom/papa91/view/AutoSaveSlot;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 9
    sget p2, Lcom/papa91/mix/R$id;->countDown:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/papa91/view/CountDownView;

    iput-object p2, p0, Lcom/papa91/view/AutoSaveSlot;->countDown:Lcom/papa91/view/CountDownView;

    .line 10
    sget p2, Lcom/papa91/mix/R$id;->countDownBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot;->countDownBtn:Landroid/view/View;

    .line 11
    iget-object p1, p0, Lcom/papa91/view/AutoSaveSlot;->countDown:Lcom/papa91/view/CountDownView;

    new-instance p2, Lcom/papa91/view/AutoSaveSlot$1;

    invoke-direct {p2, p0}, Lcom/papa91/view/AutoSaveSlot$1;-><init>(Lcom/papa91/view/AutoSaveSlot;)V

    invoke-virtual {p1, p2}, Lcom/papa91/view/CountDownView;->setOnCountDownListener(Lcom/papa91/view/CountDownView$OnCountDownListener;)V

    .line 12
    iget-object p1, p0, Lcom/papa91/view/AutoSaveSlot;->countDownBtn:Landroid/view/View;

    new-instance p2, Lcom/papa91/view/AutoSaveSlot$MyClickListener;

    new-instance v0, Lcom/papa91/view/AutoSaveSlot$2;

    invoke-direct {v0, p0}, Lcom/papa91/view/AutoSaveSlot$2;-><init>(Lcom/papa91/view/AutoSaveSlot;)V

    invoke-direct {p2, v0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener;-><init>(Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method getAutoSlotFilter()Ljava/io/FilenameFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/view/AutoSaveSlot$6;

    invoke-direct {v0, p0}, Lcom/papa91/view/AutoSaveSlot$6;-><init>(Lcom/papa91/view/AutoSaveSlot;)V

    return-object v0
.end method

.method getSlots()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/papa91/view/AutoSaveSlot;->ugcPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/view/AutoSaveSlot;->getAutoSlotFilter()Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/papa91/view/AutoSaveSlot;->ugcPath:Ljava/lang/String;

    const-string v2, "/"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/papa91/view/AutoSaveSlot;->ugcPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->romName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_auto"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".2"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_4
    new-instance v1, Lcom/papa91/view/AutoSaveSlot$5;

    invoke-direct {v1, p0}, Lcom/papa91/view/AutoSaveSlot$5;-><init>(Lcom/papa91/view/AutoSaveSlot;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 17
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->layout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public quickLoadSlot()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/papa91/view/AutoSaveSlot;->vipLevel:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa91/view/AutoSaveSlot;->getSlots()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->loadAutoSlot(Ljava/lang/String;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->context:Landroid/app/Activity;

    const-string v2, "\u5f00\u901a\u4f1a\u5458\u5373\u53ef\u8bfb\u53d6\u8be5\u5b58\u6863"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setUgcPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot;->ugcPath:Ljava/lang/String;

    return-void
.end method

.method public setVipLevel(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/papa91/view/AutoSaveSlot;->vipLevel:I

    .line 2
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->dialog:Lcom/papa91/view/AutoSlotDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->dialog:Lcom/papa91/view/AutoSlotDialog;

    invoke-virtual {v0, p1}, Lcom/papa91/view/AutoSlotDialog;->setVipLevel(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method

.method showAutoSavePop(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/papa91/mix/R$layout;->pop_auto_save_tip:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/papa91/view/AutoSaveSlot;->context:Landroid/app/Activity;

    .line 3
    invoke-static {v1, v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->build(Landroid/app/Activity;Landroid/view/View;)Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->setOutsideTouchDismiss(Z)Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->createPopupWindow()Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    move-result-object v1

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, p1, v3, v2}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->showAtAnchorView(Landroid/view/View;II)V

    .line 7
    sget p1, Lcom/papa91/mix/R$id;->ok:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/papa91/view/AutoSaveSlot$3;

    invoke-direct {v0, p0, v1}, Lcom/papa91/view/AutoSaveSlot$3;-><init>(Lcom/papa91/view/AutoSaveSlot;Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/papa91/view/AutoSaveSlot;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/papa91/view/AutoSaveSlot$4;

    invoke-direct {v0, p0, v1}, Lcom/papa91/view/AutoSaveSlot$4;-><init>(Lcom/papa91/view/AutoSaveSlot;Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showQuickLoadTip()V
    .locals 0

    return-void
.end method

.method public showSlots()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->dialog:Lcom/papa91/view/AutoSlotDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/view/AutoSlotDialog;

    iget-object v1, p0, Lcom/papa91/view/AutoSaveSlot;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/papa91/view/AutoSlotDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->dialog:Lcom/papa91/view/AutoSlotDialog;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot;->dialog:Lcom/papa91/view/AutoSlotDialog;

    iget v1, p0, Lcom/papa91/view/AutoSaveSlot;->vipLevel:I

    invoke-virtual {p0}, Lcom/papa91/view/AutoSaveSlot;->getSlots()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa91/view/AutoSlotDialog;->show(ILjava/util/List;)V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
