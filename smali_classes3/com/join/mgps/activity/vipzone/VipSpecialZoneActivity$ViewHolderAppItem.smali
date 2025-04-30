.class public Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;
.super Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;
.source "VipSpecialZoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderAppItem"
.end annotation


# instance fields
.field public appSize:Landroid/widget/TextView;

.field public describe:Landroid/widget/TextView;

.field downloadViewStroke:Lcom/join/mgps/customview/DownloadViewStroke;

.field giftPackageSwich:Landroid/widget/ImageView;

.field icon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field line:Landroid/view/View;

.field linearLayout2:Landroid/widget/LinearLayout;

.field public lodingInfo:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field public progressBar:Landroid/widget/ProgressBar;

.field public progressBarZip:Landroid/widget/ProgressBar;

.field relateLayoutApp:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

.field tipsLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Landroid/view/View;)V

    const p1, 0x7f090a39

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f0905ee

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->giftPackageSwich:Landroid/widget/ImageView;

    const p1, 0x7f090a37

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->name:Landroid/widget/TextView;

    const p1, 0x7f090a38

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->describe:Landroid/widget/TextView;

    const p1, 0x7f0908cd

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->linearLayout2:Landroid/widget/LinearLayout;

    const p1, 0x7f09100c

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->tipsLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0900ea

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->appSize:Landroid/widget/TextView;

    const p1, 0x7f0909b2

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->lodingInfo:Landroid/widget/TextView;

    const p1, 0x7f090c59

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBar:Landroid/widget/ProgressBar;

    const p1, 0x7f090c60

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBarZip:Landroid/widget/ProgressBar;

    const v0, 0x7f0903ca

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/DownloadViewStroke;

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->downloadViewStroke:Lcom/join/mgps/customview/DownloadViewStroke;

    const v0, 0x7f090d07

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->relateLayoutApp:Landroid/widget/RelativeLayout;

    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBarZip:Landroid/widget/ProgressBar;

    const p1, 0x7f0908be

    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->line:Landroid/view/View;

    return-void
.end method
