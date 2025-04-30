.class public Lcom/join/mgps/Util/ImageHandlerDetial$AdFragment;
.super Lcom/BaseActivity;
.source "ImageHandlerDetial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/Util/ImageHandlerDetial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdFragment"
.end annotation


# instance fields
.field protected a:Lcom/join/mgps/Util/ImageHandlerDetial;

.field protected b:Lcom/join/mgps/customview/LoopViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public E0()Lcom/join/mgps/customview/LoopViewPager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/ImageHandlerDetial$AdFragment;->b:Lcom/join/mgps/customview/LoopViewPager;

    return-object v0
.end method

.method public F0(Lcom/join/mgps/customview/LoopViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/ImageHandlerDetial$AdFragment;->b:Lcom/join/mgps/customview/LoopViewPager;

    return-void
.end method
