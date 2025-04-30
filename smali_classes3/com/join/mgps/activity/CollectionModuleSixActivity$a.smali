.class Lcom/join/mgps/activity/CollectionModuleSixActivity$a;
.super Ljava/lang/Object;
.source "CollectionModuleSixActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CollectionModuleSixActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CollectionModuleSixActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CollectionModuleSixActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity$a;->a:Lcom/join/mgps/activity/CollectionModuleSixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity$a;->a:Lcom/join/mgps/activity/CollectionModuleSixActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->D0(Lcom/join/mgps/activity/CollectionModuleSixActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity$a;->a:Lcom/join/mgps/activity/CollectionModuleSixActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->K0()V

    return-void
.end method
