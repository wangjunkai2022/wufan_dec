.class Lcom/join/mgps/activity/TagAddActivity_$b;
.super Ljava/lang/Object;
.source "TagAddActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/TagAddActivity_;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/TagAddActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagAddActivity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity_$b;->a:Lcom/join/mgps/activity/TagAddActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity_$b;->a:Lcom/join/mgps/activity/TagAddActivity_;

    invoke-static {v0}, Lcom/join/mgps/activity/TagAddActivity_;->d1(Lcom/join/mgps/activity/TagAddActivity_;)V

    return-void
.end method
