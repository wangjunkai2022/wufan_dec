.class Lcom/join/mgps/activity/VoucherCodesBoxActivity$a;
.super Ljava/lang/Object;
.source "VoucherCodesBoxActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/VoucherCodesBoxActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/VoucherCodesBoxActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/VoucherCodesBoxActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity$a;->a:Lcom/join/mgps/activity/VoucherCodesBoxActivity;

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

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity$a;->a:Lcom/join/mgps/activity/VoucherCodesBoxActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->f:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity$a;->a:Lcom/join/mgps/activity/VoucherCodesBoxActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->f:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
