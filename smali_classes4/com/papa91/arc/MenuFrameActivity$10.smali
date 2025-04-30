.class Lcom/papa91/arc/MenuFrameActivity$10;
.super Ljava/lang/Object;
.source "MenuFrameActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/MenuFrameActivity;->initVipViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/MenuFrameActivity;


# direct methods
.method constructor <init>(Lcom/papa91/arc/MenuFrameActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$10;->this$0:Lcom/papa91/arc/MenuFrameActivity;

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
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$10;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/MenuFrameActivity;->select(I)V

    return-void
.end method
