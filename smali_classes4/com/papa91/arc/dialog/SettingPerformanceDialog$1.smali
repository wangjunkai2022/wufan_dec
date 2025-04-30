.class Lcom/papa91/arc/dialog/SettingPerformanceDialog$1;
.super Ljava/lang/Object;
.source "SettingPerformanceDialog.java"

# interfaces
.implements Lcom/papa91/arc/view/OnTabSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingPerformanceDialog;->initPerformanceViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingPerformanceDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselect(I)V
    .locals 0

    return-void
.end method

.method public onTabSelect(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/papa91/arc/util/GameSettings;->setCustomSettingEnable(Z)V

    if-nez p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    iget v2, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tmpPerformance:I

    if-ltz v2, :cond_1

    if-le v2, v1, :cond_2

    :cond_1
    iput v0, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tmpPerformance:I

    .line 4
    :cond_2
    iget-object v0, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    iget p1, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tmpPerformance:I

    invoke-virtual {v0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    goto :goto_1

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    :goto_1
    return-void
.end method
