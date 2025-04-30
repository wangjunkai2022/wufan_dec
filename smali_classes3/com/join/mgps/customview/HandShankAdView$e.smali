.class Lcom/join/mgps/customview/HandShankAdView$e;
.super Ljava/lang/Object;
.source "HandShankAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/HandShankAdView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/HandShankAdView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/HandShankAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/HandShankAdView$e;->a:Lcom/join/mgps/customview/HandShankAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/HandShankAdView$e;->a:Lcom/join/mgps/customview/HandShankAdView;

    iget-object v0, v0, Lcom/join/mgps/customview/HandShankAdView;->a:Lcom/join/mgps/customview/LoadingLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/LoadingLayout;->d()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/HandShankAdView$e;->a:Lcom/join/mgps/customview/HandShankAdView;

    iget-object v0, v0, Lcom/join/mgps/customview/HandShankAdView;->a:Lcom/join/mgps/customview/LoadingLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/HandShankAdView$e;->a:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
