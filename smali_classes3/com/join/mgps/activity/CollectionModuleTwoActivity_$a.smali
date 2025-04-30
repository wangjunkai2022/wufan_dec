.class Lcom/join/mgps/activity/CollectionModuleTwoActivity_$a;
.super Ljava/lang/Object;
.source "CollectionModuleTwoActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->N0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/activity/CollectionModuleTwoActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$a;->b:Lcom/join/mgps/activity/CollectionModuleTwoActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$a;->b:Lcom/join/mgps/activity/CollectionModuleTwoActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$a;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->W0(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;Ljava/util/List;)V

    return-void
.end method
