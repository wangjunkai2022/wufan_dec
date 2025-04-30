.class Lcom/papa91/arc/dialog/SettingVipDialog$1;
.super Ljava/lang/Object;
.source "SettingVipDialog.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingVipDialog;->initVipViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingVipDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingVipDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingVipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingVipDialog;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingVipDialog;->select(I)V

    return-void
.end method
