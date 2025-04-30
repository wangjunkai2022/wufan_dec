.class Lcom/join/mgps/customview/HandShankAdView$b;
.super Ljava/lang/Object;
.source "HandShankAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/HandShankAdView;
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
    iput-object p1, p0, Lcom/join/mgps/customview/HandShankAdView$b;->a:Lcom/join/mgps/customview/HandShankAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/BannerBean;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/HandShankAdView$b;->a:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/customview/HandShankAdView$b;->a:Lcom/join/mgps/customview/HandShankAdView;

    invoke-static {v2, p1}, Lcom/join/mgps/customview/HandShankAdView;->d(Lcom/join/mgps/customview/HandShankAdView;Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
