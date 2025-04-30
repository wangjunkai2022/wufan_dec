.class Lcom/join/mgps/customview/ViewPagerWithADs$a$a;
.super Landroid/os/Handler;
.source "ViewPagerWithADs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ViewPagerWithADs$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ViewPagerWithADs$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$a;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$a;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-static {p1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->a(Lcom/join/mgps/customview/ViewPagerWithADs$a;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$a;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->j()V

    return-void
.end method
