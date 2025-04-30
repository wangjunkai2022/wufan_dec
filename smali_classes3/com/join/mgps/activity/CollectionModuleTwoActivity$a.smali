.class Lcom/join/mgps/activity/CollectionModuleTwoActivity$a;
.super Ljava/lang/Object;
.source "CollectionModuleTwoActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CollectionModuleTwoActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CollectionModuleTwoActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity$a;->a:Lcom/join/mgps/activity/CollectionModuleTwoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity$a;->a:Lcom/join/mgps/activity/CollectionModuleTwoActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->D0(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity$a;->a:Lcom/join/mgps/activity/CollectionModuleTwoActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->I0()V

    return-void
.end method
