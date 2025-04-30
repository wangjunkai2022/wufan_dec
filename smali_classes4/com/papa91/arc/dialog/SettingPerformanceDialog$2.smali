.class Lcom/papa91/arc/dialog/SettingPerformanceDialog$2;
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
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselect(I)V
    .locals 0

    return-void
.end method

.method public onTabSelect(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->selectPerformance(I)V

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-virtual {p1}, Lcom/papa91/arc/view/SegmentTabLayout;->getCurrentTab()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
