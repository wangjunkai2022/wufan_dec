.class Lcom/join/mgps/activity/AccountUpgradeActivity_$a;
.super Ljava/lang/Object;
.source "AccountUpgradeActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AccountUpgradeActivity_;->P0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/join/mgps/activity/AccountUpgradeActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AccountUpgradeActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_$a;->f:Lcom/join/mgps/activity/AccountUpgradeActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_$a;->d:Ljava/lang/String;

    iput p6, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_$a;->f:Lcom/join/mgps/activity/AccountUpgradeActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_$a;->d:Ljava/lang/String;

    iget v5, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_$a;->e:I

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/activity/AccountUpgradeActivity_;->X0(Lcom/join/mgps/activity/AccountUpgradeActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
