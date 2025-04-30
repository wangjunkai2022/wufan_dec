.class Lcom/join/mgps/activity/VoucherCodesBoxActivity$b;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "VoucherCodesBoxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/VoucherCodesBoxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/VoucherCodesBoxActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/VoucherCodesBoxActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity$b;->a:Lcom/join/mgps/activity/VoucherCodesBoxActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->D0()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity$b;->a:Lcom/join/mgps/activity/VoucherCodesBoxActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->C0(Lcom/join/mgps/activity/VoucherCodesBoxActivity;I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->D0()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method
