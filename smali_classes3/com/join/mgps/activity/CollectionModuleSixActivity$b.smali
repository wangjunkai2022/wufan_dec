.class Lcom/join/mgps/activity/CollectionModuleSixActivity$b;
.super Ljava/lang/Object;
.source "CollectionModuleSixActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


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
    iput-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity$b;->a:Lcom/join/mgps/activity/CollectionModuleSixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity$b;->a:Lcom/join/mgps/activity/CollectionModuleSixActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->D0(Lcom/join/mgps/activity/CollectionModuleSixActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity$b;->a:Lcom/join/mgps/activity/CollectionModuleSixActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->E0(Lcom/join/mgps/activity/CollectionModuleSixActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity$b;->a:Lcom/join/mgps/activity/CollectionModuleSixActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->K0()V

    return-void
.end method
