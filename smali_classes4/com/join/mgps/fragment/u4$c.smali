.class Lcom/join/mgps/fragment/u4$c;
.super Ljava/lang/Object;
.source "UserCenterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/u4;->refreshViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/u4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/u4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/u4$c;->a:Lcom/join/mgps/fragment/u4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/u4$c;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {v0}, Lcom/join/mgps/fragment/u4;->N(Lcom/join/mgps/fragment/u4;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goSvip(Landroid/content/Context;)V

    return-void
.end method
