.class Lcom/join/mgps/activity/AccountCenterActivity_$q;
.super Ljava/lang/Object;
.source "AccountCenterActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AccountCenterActivity_;->error(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/activity/AccountCenterActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity_$q;->b:Lcom/join/mgps/activity/AccountCenterActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/AccountCenterActivity_$q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_$q;->b:Lcom/join/mgps/activity/AccountCenterActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/AccountCenterActivity_$q;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/AccountCenterActivity_;->s1(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;)V

    return-void
.end method
